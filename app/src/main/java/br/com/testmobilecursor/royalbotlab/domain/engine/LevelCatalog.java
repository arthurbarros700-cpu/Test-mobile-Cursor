package br.com.testmobilecursor.royalbotlab.domain.engine;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import br.com.testmobilecursor.royalbotlab.domain.model.LevelDefinition;
import br.com.testmobilecursor.royalbotlab.domain.model.TileColor;

public final class LevelCatalog {
    private final List<LevelDefinition> levels;

    public LevelCatalog() {
        List<LevelDefinition> entries = new ArrayList<>();
        entries.add(new LevelDefinition(1, "Treinamento real", 24, 900, TileColor.AZUL, 18, 4));
        entries.add(new LevelDefinition(2, "Salão dourado", 22, 1250, TileColor.VERDE, 20, 5));
        entries.add(new LevelDefinition(3, "Biblioteca rubi", 20, 1600, TileColor.RUBI, 22, 5));
        entries.add(new LevelDefinition(4, "Torre de cristal", 18, 2100, TileColor.OURO, 24, 6));
        entries.add(new LevelDefinition(5, "Coroa suprema", 17, 2600, TileColor.CIANO, 26, 6));
        levels = Collections.unmodifiableList(entries);
    }

    public LevelDefinition getLevel(int levelIndex) {
        return levels.get(Math.floorMod(levelIndex, levels.size()));
    }

    public int size() {
        return levels.size();
    }
}
