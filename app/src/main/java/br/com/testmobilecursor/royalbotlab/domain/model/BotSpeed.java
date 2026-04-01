package br.com.testmobilecursor.royalbotlab.domain.model;

public enum BotSpeed {
    LENTA("Lenta", 950L, 2),
    MEDIA("Media", 620L, 2),
    RAPIDA("Rapida", 320L, 1);

    private final String displayName;
    private final long delayMillis;
    private final int searchDepth;

    BotSpeed(String displayName, long delayMillis, int searchDepth) {
        this.displayName = displayName;
        this.delayMillis = delayMillis;
        this.searchDepth = searchDepth;
    }

    public String getDisplayName() {
        return displayName;
    }

    public long getDelayMillis() {
        return delayMillis;
    }

    public int getSearchDepth() {
        return searchDepth;
    }
}
