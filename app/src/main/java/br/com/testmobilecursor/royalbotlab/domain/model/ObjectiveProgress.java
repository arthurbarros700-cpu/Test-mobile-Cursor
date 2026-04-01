package br.com.testmobilecursor.royalbotlab.domain.model;

public final class ObjectiveProgress {
    private int collectedTargetColor;
    private int totalCleared;

    public ObjectiveProgress() {
        this(0, 0);
    }

    public ObjectiveProgress(int collectedTargetColor, int totalCleared) {
        this.collectedTargetColor = collectedTargetColor;
        this.totalCleared = totalCleared;
    }

    public int getCollectedTargetColor() {
        return collectedTargetColor;
    }

    public int getTotalCleared() {
        return totalCleared;
    }

    public void addCollectedTargetColor(int delta) {
        collectedTargetColor += delta;
    }

    public void addTotalCleared(int delta) {
        totalCleared += delta;
    }

    public ObjectiveProgress copy() {
        return new ObjectiveProgress(collectedTargetColor, totalCleared);
    }
}
