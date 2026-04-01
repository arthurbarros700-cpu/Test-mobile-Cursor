package br.com.testmobilecursor.royalbotlab.analyzer;

import android.graphics.PointF;
import android.graphics.Rect;

import br.com.testmobilecursor.royalbotlab.domain.model.Tile;
import br.com.testmobilecursor.royalbotlab.domain.model.TileColor;

public final class BoardAnalysis {
    private final boolean valid;
    private final String summary;
    private final Rect boardRect;
    private final Tile[][] board;
    private final TileColor[][] colors;
    private final String[][] labels;
    private final PointF[][] centers;
    private final int detectedColorCount;
    private final int lowConfidenceCells;

    public BoardAnalysis(
            boolean valid,
            String summary,
            Rect boardRect,
            Tile[][] board,
            TileColor[][] colors,
            String[][] labels,
            PointF[][] centers,
            int detectedColorCount,
            int lowConfidenceCells
    ) {
        this.valid = valid;
        this.summary = summary;
        this.boardRect = boardRect;
        this.board = board;
        this.colors = colors;
        this.labels = labels;
        this.centers = centers;
        this.detectedColorCount = detectedColorCount;
        this.lowConfidenceCells = lowConfidenceCells;
    }

    public boolean isValid() {
        return valid;
    }

    public String getSummary() {
        return summary;
    }

    public Rect getBoardRect() {
        return boardRect;
    }

    public Tile[][] getBoard() {
        return board;
    }

    public TileColor[][] getColors() {
        return colors;
    }

    public String[][] getLabels() {
        return labels;
    }

    public PointF[][] getCenters() {
        return centers;
    }

    public int getDetectedColorCount() {
        return detectedColorCount;
    }

    public int getLowConfidenceCells() {
        return lowConfidenceCells;
    }
}
