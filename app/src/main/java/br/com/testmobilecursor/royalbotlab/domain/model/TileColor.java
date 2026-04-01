package br.com.testmobilecursor.royalbotlab.domain.model;

import java.util.Random;

public enum TileColor {
    AZUL("Azul", "A"),
    VERDE("Verde", "V"),
    RUBI("Rubi", "R"),
    OURO("Ouro", "O"),
    CIANO("Ciano", "C"),
    LARANJA("Laranja", "L");

    private final String displayName;
    private final String shortLabel;

    TileColor(String displayName, String shortLabel) {
        this.displayName = displayName;
        this.shortLabel = shortLabel;
    }

    public String getDisplayName() {
        return displayName;
    }

    public String getShortLabel() {
        return shortLabel;
    }

    public static TileColor random(Random random, int availableCount) {
        TileColor[] values = values();
        int bound = Math.max(1, Math.min(availableCount, values.length));
        return values[random.nextInt(bound)];
    }
}
