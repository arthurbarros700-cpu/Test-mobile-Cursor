package br.com.testmobilecursor.royalbotlab.data;

import br.com.testmobilecursor.royalbotlab.domain.model.TileColor;

public final class BotSessionSnapshot {
    private final boolean serviceConnected;
    private final boolean botEnabled;
    private final String currentPackage;
    private final String status;
    private final String analyzerSummary;
    private final String lastDecision;
    private final int captureCount;
    private final int gestureCount;
    private final TileColor[][] previewColors;
    private final String[][] previewLabels;

    private BotSessionSnapshot(Builder builder) {
        this.serviceConnected = builder.serviceConnected;
        this.botEnabled = builder.botEnabled;
        this.currentPackage = builder.currentPackage;
        this.status = builder.status;
        this.analyzerSummary = builder.analyzerSummary;
        this.lastDecision = builder.lastDecision;
        this.captureCount = builder.captureCount;
        this.gestureCount = builder.gestureCount;
        this.previewColors = copyColors(builder.previewColors);
        this.previewLabels = copyLabels(builder.previewLabels);
    }

    public static BotSessionSnapshot initial() {
        return new Builder()
                .setServiceConnected(false)
                .setBotEnabled(false)
                .setCurrentPackage("Nenhum")
                .setStatus("Aguardando ativacao do bot.")
                .setAnalyzerSummary("Sem captura ainda")
                .setLastDecision("Sem jogada enviada")
                .setCaptureCount(0)
                .setGestureCount(0)
                .build();
    }

    public Builder buildUpon() {
        return new Builder()
                .setServiceConnected(serviceConnected)
                .setBotEnabled(botEnabled)
                .setCurrentPackage(currentPackage)
                .setStatus(status)
                .setAnalyzerSummary(analyzerSummary)
                .setLastDecision(lastDecision)
                .setCaptureCount(captureCount)
                .setGestureCount(gestureCount)
                .setPreview(previewColors, previewLabels);
    }

    public boolean isServiceConnected() {
        return serviceConnected;
    }

    public boolean isBotEnabled() {
        return botEnabled;
    }

    public String getCurrentPackage() {
        return currentPackage;
    }

    public String getStatus() {
        return status;
    }

    public String getAnalyzerSummary() {
        return analyzerSummary;
    }

    public String getLastDecision() {
        return lastDecision;
    }

    public int getCaptureCount() {
        return captureCount;
    }

    public int getGestureCount() {
        return gestureCount;
    }

    public TileColor[][] getPreviewColors() {
        return copyColors(previewColors);
    }

    public String[][] getPreviewLabels() {
        return copyLabels(previewLabels);
    }

    private static TileColor[][] copyColors(TileColor[][] source) {
        if (source == null) {
            return null;
        }
        TileColor[][] copy = new TileColor[source.length][];
        for (int row = 0; row < source.length; row++) {
            copy[row] = source[row] == null ? null : source[row].clone();
        }
        return copy;
    }

    private static String[][] copyLabels(String[][] source) {
        if (source == null) {
            return null;
        }
        String[][] copy = new String[source.length][];
        for (int row = 0; row < source.length; row++) {
            copy[row] = source[row] == null ? null : source[row].clone();
        }
        return copy;
    }

    public static final class Builder {
        private boolean serviceConnected;
        private boolean botEnabled;
        private String currentPackage;
        private String status;
        private String analyzerSummary;
        private String lastDecision;
        private int captureCount;
        private int gestureCount;
        private TileColor[][] previewColors;
        private String[][] previewLabels;

        public Builder setServiceConnected(boolean serviceConnected) {
            this.serviceConnected = serviceConnected;
            return this;
        }

        public Builder setBotEnabled(boolean botEnabled) {
            this.botEnabled = botEnabled;
            return this;
        }

        public Builder setCurrentPackage(String currentPackage) {
            this.currentPackage = currentPackage;
            return this;
        }

        public Builder setStatus(String status) {
            this.status = status;
            return this;
        }

        public Builder setAnalyzerSummary(String analyzerSummary) {
            this.analyzerSummary = analyzerSummary;
            return this;
        }

        public Builder setLastDecision(String lastDecision) {
            this.lastDecision = lastDecision;
            return this;
        }

        public Builder setCaptureCount(int captureCount) {
            this.captureCount = captureCount;
            return this;
        }

        public Builder setGestureCount(int gestureCount) {
            this.gestureCount = gestureCount;
            return this;
        }

        public Builder setPreview(TileColor[][] previewColors, String[][] previewLabels) {
            this.previewColors = copyColors(previewColors);
            this.previewLabels = copyLabels(previewLabels);
            return this;
        }

        public BotSessionSnapshot build() {
            return new BotSessionSnapshot(this);
        }
    }
}
