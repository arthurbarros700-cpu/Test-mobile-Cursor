package br.com.testmobilecursor.royalbotlab.domain.model;

public enum SpecialType {
    NONE(""),
    FOGUETE_HORIZONTAL("F>"),
    FOGUETE_VERTICAL("F|"),
    BOMBA("B"),
    DISCO("D");

    private final String shortLabel;

    SpecialType(String shortLabel) {
        this.shortLabel = shortLabel;
    }

    public String getShortLabel() {
        return shortLabel;
    }
}
