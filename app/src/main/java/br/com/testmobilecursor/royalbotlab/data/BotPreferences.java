package br.com.testmobilecursor.royalbotlab.data;

import android.content.Context;
import android.content.SharedPreferences;

import br.com.testmobilecursor.royalbotlab.domain.model.BotSpeed;

public final class BotPreferences {
    private static final String PREFS_NAME = "royal_match_bot_mobile";
    private static final String KEY_ENABLED = "enabled";
    private static final String KEY_SPEED = "speed";

    private final SharedPreferences sharedPreferences;

    public BotPreferences(Context context) {
        sharedPreferences = context.getApplicationContext().getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE);
    }

    public boolean isBotEnabled() {
        return sharedPreferences.getBoolean(KEY_ENABLED, false);
    }

    public void setBotEnabled(boolean enabled) {
        sharedPreferences.edit().putBoolean(KEY_ENABLED, enabled).apply();
    }

    public BotSpeed getSpeed() {
        String raw = sharedPreferences.getString(KEY_SPEED, BotSpeed.MEDIA.name());
        try {
            return BotSpeed.valueOf(raw);
        } catch (IllegalArgumentException exception) {
            return BotSpeed.MEDIA;
        }
    }

    public void setSpeed(BotSpeed speed) {
        sharedPreferences.edit().putString(KEY_SPEED, speed.name()).apply();
    }
}
