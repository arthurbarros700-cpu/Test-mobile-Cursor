package br.com.testmobilecursor.royalbotlab.service;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.accessibilityservice.GestureDescription;
import android.graphics.Bitmap;
import android.graphics.Path;
import android.graphics.PointF;
import android.hardware.HardwareBuffer;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Display;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;

import java.util.List;
import java.util.Locale;

import br.com.testmobilecursor.royalbotlab.analyzer.BoardAnalysis;
import br.com.testmobilecursor.royalbotlab.analyzer.BoardAnalyzer;
import br.com.testmobilecursor.royalbotlab.data.BotPreferences;
import br.com.testmobilecursor.royalbotlab.data.BotSessionStore;
import br.com.testmobilecursor.royalbotlab.domain.engine.BotPlanner;
import br.com.testmobilecursor.royalbotlab.domain.engine.Match3Engine;
import br.com.testmobilecursor.royalbotlab.domain.model.BoardState;
import br.com.testmobilecursor.royalbotlab.domain.model.BotDecision;
import br.com.testmobilecursor.royalbotlab.domain.model.Swap;

public final class RoyalMatchAccessibilityService extends AccessibilityService {
    public static final String TARGET_PACKAGE = "com.dreamgames.royalmatch";

    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final BotSessionStore sessionStore = BotSessionStore.getInstance();
    private final BoardAnalyzer boardAnalyzer = new BoardAnalyzer();
    private final Match3Engine engine = new Match3Engine();
    private final BotPlanner botPlanner = new BotPlanner(engine);

    private BotPreferences botPreferences;
    private boolean captureInFlight;
    private int captureCount;
    private int gestureCount;
    private long lastLoopAt;

    @Override
    protected void onServiceConnected() {
        super.onServiceConnected();
        botPreferences = new BotPreferences(this);
        sessionStore.update(builder -> builder
                .setServiceConnected(true)
                .setBotEnabled(botPreferences.isBotEnabled())
                .setCurrentPackage("Nenhum")
                .setStatus("Servico conectado. Abra o Royal Match para iniciar.")
                .setAnalyzerSummary("Sem captura ainda"));
    }

    @Override
    public void onAccessibilityEvent(AccessibilityEvent event) {
        if (event == null) {
            return;
        }

        CharSequence packageName = event.getPackageName();
        String currentPackage = packageName == null ? "Nenhum" : packageName.toString();
        sessionStore.update(builder -> builder.setCurrentPackage(currentPackage));

        if (!botPreferences.isBotEnabled()) {
            sessionStore.update(builder -> builder.setBotEnabled(false).setStatus("Bot pausado. Ative para iniciar."));
            return;
        }

        if (!TARGET_PACKAGE.equals(currentPackage)) {
            sessionStore.update(builder -> builder
                    .setBotEnabled(true)
                    .setStatus("Bot ativo. Aguardando a tela do Royal Match."));
            return;
        }

        if (captureInFlight) {
            return;
        }
        long now = System.currentTimeMillis();
        if (now - lastLoopAt < botPreferences.getSpeed().getDelayMillis()) {
            return;
        }
        lastLoopAt = now;
        tryTapFlowButtons();
        captureAndPlay();
    }

    @Override
    public void onInterrupt() {
        sessionStore.update(builder -> builder.setStatus("Servico interrompido."));
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        sessionStore.update(builder -> builder.setServiceConnected(false).setStatus("Servico desconectado."));
    }

    private void captureAndPlay() {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.R) {
            sessionStore.update(builder -> builder.setStatus("Captura de tela requer Android 11 ou superior."));
            return;
        }
        captureInFlight = true;
        sessionStore.update(builder -> builder.setStatus("Bot analisando melhor jogada..."));
        takeScreenshot(Display.DEFAULT_DISPLAY, getMainExecutor(), new TakeScreenshotCallback() {
            @Override
            public void onSuccess(ScreenshotResult screenshotResult) {
                HardwareBuffer buffer = screenshotResult.getHardwareBuffer();
                Bitmap hardwareBitmap = Bitmap.wrapHardwareBuffer(buffer, screenshotResult.getColorSpace());
                Bitmap bitmap = hardwareBitmap == null ? null : hardwareBitmap.copy(Bitmap.Config.ARGB_8888, false);
                if (hardwareBitmap != null) {
                    hardwareBitmap.recycle();
                }
                buffer.close();
                if (bitmap == null) {
                    captureInFlight = false;
                    sessionStore.update(builder -> builder.setStatus("Falha ao converter a captura de tela."));
                    return;
                }
                processBitmap(bitmap);
            }

            @Override
            public void onFailure(int errorCode) {
                captureInFlight = false;
                sessionStore.update(builder -> builder.setStatus("Falha na captura: codigo " + errorCode));
            }
        });
    }

    private void processBitmap(Bitmap bitmap) {
        try {
            BoardAnalysis analysis = boardAnalyzer.analyze(bitmap);
            captureCount++;
            sessionStore.update(builder -> builder
                    .setCaptureCount(captureCount)
                    .setAnalyzerSummary(analysis.getSummary())
                    .setPreview(analysis.getColors(), analysis.getLabels()));

            if (!analysis.isValid()) {
                clickTextIfPresent("Jogar", "Continuar", "Tentar novamente", "Pular", "Ok");
                sessionStore.update(builder -> builder.setStatus("Captura feita, mas a grade ainda nao esta confiavel."));
                return;
            }

            BoardState simulatedState = new BoardState(
                    new br.com.testmobilecursor.royalbotlab.domain.model.LevelDefinition(
                            1,
                            "Automacao",
                            25,
                            1200,
                            br.com.testmobilecursor.royalbotlab.domain.model.TileColor.AZUL,
                            12,
                            6
                    ),
                    analysis.getBoard()
            );
            BotDecision decision = botPlanner.chooseBestMove(simulatedState, botPreferences.getSpeed().getSearchDepth());
            if (decision == null) {
                clickTextIfPresent("Jogar", "Continuar", "Tentar novamente", "Ok");
                sessionStore.update(builder -> builder.setStatus("Nenhuma jogada clara detectada. Tentando botoes de fluxo."));
                return;
            }

            sessionStore.update(builder -> builder
                    .setLastDecision(decision.getSwap() + " | " + decision.getRationale())
                    .setStatus("Bot executando swipe..."));
            performSwapGesture(decision.getSwap(), analysis);
        } finally {
            bitmap.recycle();
            captureInFlight = false;
        }
    }

    private void performSwapGesture(Swap swap, BoardAnalysis analysis) {
        PointF[][] centers = analysis.getCenters();
        PointF start = centers[swap.getFirst().getRow()][swap.getFirst().getCol()];
        PointF end = centers[swap.getSecond().getRow()][swap.getSecond().getCol()];
        if (start == null || end == null) {
            sessionStore.update(builder -> builder.setStatus("Falha ao localizar os centros da jogada."));
            return;
        }
        Path path = new Path();
        path.moveTo(start.x, start.y);
        path.lineTo(end.x, end.y);
        GestureDescription gesture = new GestureDescription.Builder()
                .addStroke(new GestureDescription.StrokeDescription(path, 0L, 180L))
                .build();
        dispatchGesture(gesture, new GestureResultCallback() {
            @Override
            public void onCompleted(GestureDescription gestureDescription) {
                gestureCount++;
                sessionStore.update(builder -> builder
                        .setGestureCount(gestureCount)
                        .setStatus("Swipe enviado com sucesso."));
            }

            @Override
            public void onCancelled(GestureDescription gestureDescription) {
                sessionStore.update(builder -> builder.setStatus("O swipe foi cancelado pelo sistema."));
            }
        }, mainHandler);
    }

    private void tryTapFlowButtons() {
        clickTextIfPresent("Jogar", "Continuar", "Continuar jogando", "Tentar novamente", "Ok", "Fechar");
    }

    private void clickTextIfPresent(String... texts) {
        AccessibilityNodeInfo root = getRootInActiveWindow();
        if (root == null) {
            return;
        }
        for (String text : texts) {
            List<AccessibilityNodeInfo> matches = root.findAccessibilityNodeInfosByText(text);
            if (matches == null || matches.isEmpty()) {
                continue;
            }
            for (AccessibilityNodeInfo node : matches) {
                AccessibilityNodeInfo clickable = findClickable(node);
                if (clickable != null) {
                    clickable.performAction(AccessibilityNodeInfo.ACTION_CLICK);
                    sessionStore.update(builder -> builder.setStatus(String.format(Locale.US, "Bot clicou em '%s'.", text)));
                    return;
                }
            }
        }
    }

    private AccessibilityNodeInfo findClickable(AccessibilityNodeInfo node) {
        AccessibilityNodeInfo current = node;
        while (current != null) {
            if (current.isClickable()) {
                return current;
            }
            current = current.getParent();
        }
        return null;
    }

    public static boolean isServiceEnabled(android.content.Context context) {
        android.view.accessibility.AccessibilityManager manager =
                (android.view.accessibility.AccessibilityManager) context.getSystemService(ACCESSIBILITY_SERVICE);
        if (manager == null) {
            return false;
        }
        List<AccessibilityServiceInfo> services = manager.getEnabledAccessibilityServiceList(AccessibilityServiceInfo.FEEDBACK_ALL_MASK);
        for (AccessibilityServiceInfo info : services) {
            if (info.getResolveInfo() != null && info.getResolveInfo().serviceInfo != null) {
                String serviceName = info.getResolveInfo().serviceInfo.name;
                String packageName = info.getResolveInfo().serviceInfo.packageName;
                if ((packageName + "/" + serviceName).contains(RoyalMatchAccessibilityService.class.getSimpleName())) {
                    return true;
                }
            }
        }
        return false;
    }
}
