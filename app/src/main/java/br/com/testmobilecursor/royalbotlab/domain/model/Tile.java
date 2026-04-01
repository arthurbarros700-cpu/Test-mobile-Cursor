package br.com.testmobilecursor.royalbotlab.domain.model;

import java.util.Objects;

public final class Tile {
    private final TileColor color;
    private final SpecialType specialType;

    public Tile(TileColor color, SpecialType specialType) {
        this.color = Objects.requireNonNull(color, "color");
        this.specialType = Objects.requireNonNull(specialType, "specialType");
    }

    public static Tile normal(TileColor color) {
        return new Tile(color, SpecialType.NONE);
    }

    public static Tile special(TileColor color, SpecialType specialType) {
        return new Tile(color, specialType);
    }

    public TileColor getColor() {
        return color;
    }

    public SpecialType getSpecialType() {
        return specialType;
    }

    public boolean isSpecial() {
        return specialType != SpecialType.NONE;
    }

    public Tile withSpecial(SpecialType newSpecialType) {
        return new Tile(color, newSpecialType);
    }

    public String getDisplayLabel() {
        return isSpecial() ? specialType.getShortLabel() : color.getShortLabel();
    }

    public Tile copy() {
        return new Tile(color, specialType);
    }
}
