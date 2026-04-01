package br.com.testmobilecursor.royalbotlab.domain.model;

import java.util.Objects;

public final class LevelDefinition {
    private final int levelNumber;
    private final String difficultyLabel;
    private final int moveLimit;
    private final int targetScore;
    private final TileColor targetColor;
    private final int targetColorCount;
    private final int availableColors;

    public LevelDefinition(
            int levelNumber,
            String difficultyLabel,
            int moveLimit,
            int targetScore,
            TileColor targetColor,
            int targetColorCount,
            int availableColors
    ) {
        this.levelNumber = levelNumber;
        this.difficultyLabel = Objects.requireNonNull(difficultyLabel, "difficultyLabel");
        this.moveLimit = moveLimit;
        this.targetScore = targetScore;
        this.targetColor = Objects.requireNonNull(targetColor, "targetColor");
        this.targetColorCount = targetColorCount;
        this.availableColors = availableColors;
    }

    public int getLevelNumber() {
        return levelNumber;
    }

    public String getDifficultyLabel() {
        return difficultyLabel;
    }

    public int getMoveLimit() {
        return moveLimit;
    }

    public int getTargetScore() {
        return targetScore;
    }

    public TileColor getTargetColor() {
        return targetColor;
    }

    public int getTargetColorCount() {
        return targetColorCount;
    }

    public int getAvailableColors() {
        return availableColors;
    }

    public String getObjectiveSummary() {
        return "Somar " + targetScore + " pontos e coletar " + targetColorCount + " pecas " + targetColor.getDisplayName().toLowerCase();
    }
}
