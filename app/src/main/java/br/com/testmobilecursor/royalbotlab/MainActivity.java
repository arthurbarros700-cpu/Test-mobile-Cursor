package br.com.testmobilecursor.royalbotlab;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.view.Gravity;
import android.widget.GridLayout;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.ContextCompat;

import br.com.testmobilecursor.royalbotlab.data.BotPreferences;
import br.com.testmobilecursor.royalbotlab.data.BotSessionSnapshot;
import br.com.testmobilecursor.royalbotlab.data.BotSessionStore;
import br.com.testmobilecursor.royalbotlab.databinding.ActivityMainBinding;
import br.com.testmobilecursor.royalbotlab.domain.model.BoardState;
import br.com.testmobilecursor.royalbotlab.domain.model.BotSpeed;
import br.com.testmobilecursor.royalbotlab.domain.model.TileColor;
import br.com.testmobilecursor.royalbotlab.service.RoyalMatchAccessibilityService;

public final class MainActivity extends AppCompatActivity implements BotSessionStore.Listener {
    private ActivityMainBinding binding;
    private BotPreferences botPreferences;
    private final BotSessionStore sessionStore = BotSessionStore.getInstance();
    private final TextView[][] previewCells = new TextView[BoardState.ROWS][BoardState.COLS];

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        binding = ActivityMainBinding.inflate(getLayoutInflater());
        setContentView(binding.getRoot());
        botPreferences = new BotPreferences(this);

        setupBoardPreview();
        configureButtons();
        configureSpeedToggle();
        applyPreferencesToUi();
    }

    @Override
    protected void onStart() {
        super.onStart();
        sessionStore.addListener(this);
    }

    @Override
    protected void onStop() {
        sessionStore.removeListener(this);
        super.onStop();
    }

    @Override
    protected void onResume() {
        super.onResume();
        refreshAccessibilityState();
        applyPreferencesToUi();
    }

    private void configureButtons() {
        binding.newGameButton.setText(getString(R.string.btn_nova_partida));
        binding.newGameButton.setOnClickListener(view -> openAccessibilitySettings());

        binding.nextLevelButton.setText(getString(R.string.btn_proximo_nivel));
        binding.nextLevelButton.setOnClickListener(view -> openRoyalMatch());

        binding.autoplayButton.setOnClickListener(view -> {
            boolean enabled = !botPreferences.isBotEnabled();
            botPreferences.setBotEnabled(enabled);
            applyPreferencesToUi();
            sessionStore.update(builder -> builder
                    .setBotEnabled(enabled)
                    .setStatus(enabled ? "Bot ativado. Abra uma fase e aguarde a captura." : "Bot pausado manualmente."));
        });
    }

    private void configureSpeedToggle() {
        switch (botPreferences.getSpeed()) {
            case LENTA:
                binding.speedToggleGroup.check(binding.speedSlowButton.getId());
                break;
            case RAPIDA:
                binding.speedToggleGroup.check(binding.speedFastButton.getId());
                break;
            case MEDIA:
            default:
                binding.speedToggleGroup.check(binding.speedMediumButton.getId());
                break;
        }
        binding.speedToggleGroup.addOnButtonCheckedListener((group, checkedId, isChecked) -> {
            if (!isChecked) {
                return;
            }
            BotSpeed speed;
            if (checkedId == binding.speedSlowButton.getId()) {
                speed = BotSpeed.LENTA;
            } else if (checkedId == binding.speedFastButton.getId()) {
                speed = BotSpeed.RAPIDA;
            } else {
                speed = BotSpeed.MEDIA;
            }
            botPreferences.setSpeed(speed);
            sessionStore.update(builder -> builder.setStatus("Velocidade ajustada para " + speed.getDisplayName() + "."));
            applyPreferencesToUi();
        });
    }

    private void applyPreferencesToUi() {
        boolean enabled = botPreferences.isBotEnabled();
        binding.autoplayButton.setText(enabled ? R.string.btn_auto_desligar : R.string.btn_auto_ligar);
        binding.botStateTextView.setText(getString(R.string.label_status_bot) + ": " + (enabled ? getString(R.string.status_bot_ativo) : getString(R.string.status_bot_inativo)));
        binding.difficultyTextView.setText(getString(R.string.label_dificuldade) + ": " + botPreferences.getSpeed().getDisplayName());
    }

    private void refreshAccessibilityState() {
        boolean enabled = RoyalMatchAccessibilityService.isServiceEnabled(this);
        if (enabled) {
            binding.statusTextView.setText("Servico de acessibilidade habilitado.");
        } else {
            binding.statusTextView.setText("Habilite a acessibilidade para liberar o bot.");
        }
    }

    private void openAccessibilitySettings() {
        startActivity(new Intent(Settings.ACTION_ACCESSIBILITY_SETTINGS));
    }

    private void openRoyalMatch() {
        Intent launchIntent = getPackageManager().getLaunchIntentForPackage(RoyalMatchAccessibilityService.TARGET_PACKAGE);
        if (launchIntent != null) {
            startActivity(launchIntent);
            return;
        }
        Intent storeIntent = new Intent(Intent.ACTION_VIEW, Uri.parse("market://details?id=" + RoyalMatchAccessibilityService.TARGET_PACKAGE));
        if (storeIntent.resolveActivity(getPackageManager()) != null) {
            startActivity(storeIntent);
        } else {
            Toast.makeText(this, "Royal Match nao encontrado no aparelho.", Toast.LENGTH_SHORT).show();
        }
    }

    private void setupBoardPreview() {
        GridLayout grid = binding.boardGrid;
        grid.removeAllViews();
        for (int row = 0; row < BoardState.ROWS; row++) {
            for (int col = 0; col < BoardState.COLS; col++) {
                TextView cell = new TextView(this);
                GridLayout.LayoutParams params = new GridLayout.LayoutParams(
                        GridLayout.spec(row, 1f),
                        GridLayout.spec(col, 1f)
                );
                params.width = 0;
                params.height = (int) (52 * getResources().getDisplayMetrics().density);
                cell.setLayoutParams(params);
                cell.setGravity(Gravity.CENTER);
                cell.setTextColor(ContextCompat.getColor(this, android.R.color.white));
                cell.setTextSize(16f);
                cell.setBackgroundResource(R.drawable.bg_tile);
                cell.setText("?");
                cell.setPadding(4, 4, 4, 4);
                previewCells[row][col] = cell;
                grid.addView(cell);
            }
        }
    }

    @Override
    public void onSnapshot(BotSessionSnapshot snapshot) {
        binding.statusTextView.setText(snapshot.getStatus());
        binding.metaTextView.setText(getString(R.string.label_meta) + ": " + snapshot.getCurrentPackage());
        binding.levelTextView.setText(getString(R.string.label_nivel) + ": " + snapshot.getCaptureCount());
        binding.scoreTextView.setText(getString(R.string.label_pontuacao) + ": " + snapshot.getGestureCount());
        binding.movesTextView.setText(getString(R.string.label_objetivo) + ": " + snapshot.getAnalyzerSummary());
        binding.comboTextView.setText(getString(R.string.label_combo) + ": " + snapshot.getLastDecision());
        binding.botStateTextView.setText(getString(R.string.label_status_bot) + ": " + (snapshot.isBotEnabled() ? getString(R.string.status_bot_ativo) : getString(R.string.status_bot_inativo)));
        renderPreview(snapshot.getPreviewColors(), snapshot.getPreviewLabels());
    }

    private void renderPreview(TileColor[][] colors, String[][] labels) {
        for (int row = 0; row < BoardState.ROWS; row++) {
            for (int col = 0; col < BoardState.COLS; col++) {
                TextView cell = previewCells[row][col];
                if (cell == null) {
                    continue;
                }
                TileColor color = colors != null ? colors[row][col] : null;
                String label = labels != null ? labels[row][col] : null;
                cell.setText(label == null ? "?" : label);
                cell.setBackgroundColor(resolvePreviewColor(color));
            }
        }
    }

    private int resolvePreviewColor(TileColor color) {
        if (color == null) {
            return ContextCompat.getColor(this, android.R.color.darker_gray);
        }
        switch (color) {
            case AZUL:
                return 0xFF3569F6;
            case VERDE:
                return 0xFF36B36A;
            case RUBI:
                return 0xFFE94D5C;
            case OURO:
                return 0xFFF4C441;
            case CIANO:
                return 0xFF34C6D3;
            case LARANJA:
            default:
                return 0xFFF38A35;
        }
    }
}
