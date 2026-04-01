package br.com.testmobilecursor.royalbotlab.domain.model;

public final class BotDecision {
    private final Swap swap;
    private final double score;
    private final String rationale;
    private final int predictedPoints;
    private final int predictedCascade;
    private final int searchDepth;

    public BotDecision(Swap swap, double score, String rationale, int predictedPoints, int predictedCascade, int searchDepth) {
        this.swap = swap;
        this.score = score;
        this.rationale = rationale;
        this.predictedPoints = predictedPoints;
        this.predictedCascade = predictedCascade;
        this.searchDepth = searchDepth;
    }

    public Swap getSwap() {
        return swap;
    }

    public double getScore() {
        return score;
    }

    public String getRationale() {
        return rationale;
    }

    public int getPredictedPoints() {
        return predictedPoints;
    }

    public int getPredictedCascade() {
        return predictedCascade;
    }

    public int getSearchDepth() {
        return searchDepth;
    }
}
