package br.com.testmobilecursor.royalbotlab.domain.model;

public final class TurnResult {
    private final boolean valid;
    private final BoardState resultingState;
    private final String summary;
    private final int pointsGained;
    private final int clearedTiles;
    private final int collectedTargetTiles;
    private final int cascadeDepth;
    private final int specialsCreated;
    private final int specialsTriggered;
    private final boolean reshuffled;

    public TurnResult(
            boolean valid,
            BoardState resultingState,
            String summary,
            int pointsGained,
            int clearedTiles,
            int collectedTargetTiles,
            int cascadeDepth,
            int specialsCreated,
            int specialsTriggered,
            boolean reshuffled
    ) {
        this.valid = valid;
        this.resultingState = resultingState;
        this.summary = summary;
        this.pointsGained = pointsGained;
        this.clearedTiles = clearedTiles;
        this.collectedTargetTiles = collectedTargetTiles;
        this.cascadeDepth = cascadeDepth;
        this.specialsCreated = specialsCreated;
        this.specialsTriggered = specialsTriggered;
        this.reshuffled = reshuffled;
    }

    public static TurnResult invalid(BoardState state, String summary) {
        return new TurnResult(false, state.copy(), summary, 0, 0, 0, 0, 0, 0, false);
    }

    public boolean isValid() {
        return valid;
    }

    public BoardState getResultingState() {
        return resultingState;
    }

    public String getSummary() {
        return summary;
    }

    public int getPointsGained() {
        return pointsGained;
    }

    public int getClearedTiles() {
        return clearedTiles;
    }

    public int getCollectedTargetTiles() {
        return collectedTargetTiles;
    }

    public int getCascadeDepth() {
        return cascadeDepth;
    }

    public int getSpecialsCreated() {
        return specialsCreated;
    }

    public int getSpecialsTriggered() {
        return specialsTriggered;
    }

    public boolean isReshuffled() {
        return reshuffled;
    }
}
