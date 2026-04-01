package br.com.testmobilecursor.royalbotlab.analyzer;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.PointF;
import android.graphics.Rect;

import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

import br.com.testmobilecursor.royalbotlab.domain.model.BoardState;
import br.com.testmobilecursor.royalbotlab.domain.model.Tile;
import br.com.testmobilecursor.royalbotlab.domain.model.TileColor;

public final class BoardAnalyzer {
    private static final float[] TOP_RATIOS = {0.18f, 0.20f, 0.22f, 0.24f, 0.26f, 0.28f};
    private static final float[] SIDE_RATIOS = {0.82f, 0.86f, 0.90f};

    public BoardAnalysis analyze(Bitmap bitmap) {
        if (bitmap == null || bitmap.getWidth() < 200 || bitmap.getHeight() < 300) {
            return empty("Captura invalida");
        }

        Rect boardRect = estimateBoardRect(bitmap);
        if (boardRect == null) {
            return empty("Nao foi possivel localizar a grade do tabuleiro");
        }

        Tile[][] board = new Tile[BoardState.ROWS][BoardState.COLS];
        TileColor[][] colors = new TileColor[BoardState.ROWS][BoardState.COLS];
        String[][] labels = new String[BoardState.ROWS][BoardState.COLS];
        PointF[][] centers = new PointF[BoardState.ROWS][BoardState.COLS];
        Set<TileColor> distinctColors = new HashSet<>();

        float cellSize = boardRect.width() / (float) BoardState.COLS;
        int lowConfidenceCells = 0;

        for (int row = 0; row < BoardState.ROWS; row++) {
            for (int col = 0; col < BoardState.COLS; col++) {
                Rect sample = createSampleRect(boardRect, row, col, cellSize, bitmap.getWidth(), bitmap.getHeight());
                int averageColor = averageColor(bitmap, sample);
                float[] hsv = new float[3];
                Color.colorToHSV(averageColor, hsv);
                TileColor tileColor = classify(hsv);
                if (hsv[1] < 0.22f || hsv[2] < 0.16f) {
                    lowConfidenceCells++;
                }
                distinctColors.add(tileColor);
                board[row][col] = Tile.normal(tileColor);
                colors[row][col] = tileColor;
                labels[row][col] = tileColor.getShortLabel();
                centers[row][col] = new PointF(sample.exactCenterX(), sample.exactCenterY());
            }
        }

        boolean valid = distinctColors.size() >= 4 && lowConfidenceCells <= 18;
        String summary = String.format(
                Locale.US,
                "Grade estimada em %dx%d | cores detectadas %d | baixa confianca %d",
                boardRect.width(),
                boardRect.height(),
                distinctColors.size(),
                lowConfidenceCells
        );
        return new BoardAnalysis(valid, summary, boardRect, board, colors, labels, centers, distinctColors.size(), lowConfidenceCells);
    }

    private BoardAnalysis empty(String summary) {
        return new BoardAnalysis(false, summary, null, null, null, null, null, 0, 64);
    }

    private Rect estimateBoardRect(Bitmap bitmap) {
        Rect bestRect = null;
        float bestScore = Float.NEGATIVE_INFINITY;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();

        for (float topRatio : TOP_RATIOS) {
            for (float sideRatio : SIDE_RATIOS) {
                int side = Math.round(width * sideRatio);
                int left = (width - side) / 2;
                int top = Math.round(height * topRatio);
                Rect candidate = new Rect(left, top, left + side, top + side);
                if (candidate.bottom >= height * 0.92f || candidate.top < 0) {
                    continue;
                }
                float score = scoreCandidate(bitmap, candidate);
                if (score > bestScore) {
                    bestScore = score;
                    bestRect = candidate;
                }
            }
        }
        return bestRect;
    }

    private float scoreCandidate(Bitmap bitmap, Rect rect) {
        float cellSize = rect.width() / (float) BoardState.COLS;
        float totalSaturation = 0f;
        float totalValue = 0f;
        int highConfidence = 0;
        Set<Integer> hueBuckets = new HashSet<>();

        for (int row = 0; row < BoardState.ROWS; row++) {
            for (int col = 0; col < BoardState.COLS; col++) {
                Rect sample = createSampleRect(rect, row, col, cellSize, bitmap.getWidth(), bitmap.getHeight());
                int averageColor = averageColor(bitmap, sample);
                float[] hsv = new float[3];
                Color.colorToHSV(averageColor, hsv);
                totalSaturation += hsv[1];
                totalValue += hsv[2];
                if (hsv[1] >= 0.24f) {
                    highConfidence++;
                }
                hueBuckets.add((int) (hsv[0] / 30f));
            }
        }

        return totalSaturation * 90f + totalValue * 18f + highConfidence * 2.2f + hueBuckets.size() * 15f;
    }

    private Rect createSampleRect(Rect boardRect, int row, int col, float cellSize, int bitmapWidth, int bitmapHeight) {
        int left = Math.round(boardRect.left + col * cellSize + cellSize * 0.22f);
        int top = Math.round(boardRect.top + row * cellSize + cellSize * 0.22f);
        int right = Math.round(boardRect.left + (col + 1) * cellSize - cellSize * 0.22f);
        int bottom = Math.round(boardRect.top + (row + 1) * cellSize - cellSize * 0.22f);
        left = clamp(left, 0, bitmapWidth - 1);
        top = clamp(top, 0, bitmapHeight - 1);
        right = clamp(right, left + 1, bitmapWidth);
        bottom = clamp(bottom, top + 1, bitmapHeight);
        return new Rect(left, top, right, bottom);
    }

    private int averageColor(Bitmap bitmap, Rect rect) {
        long red = 0;
        long green = 0;
        long blue = 0;
        long samples = 0;

        int stepX = Math.max(1, rect.width() / 5);
        int stepY = Math.max(1, rect.height() / 5);
        for (int y = rect.top; y < rect.bottom; y += stepY) {
            for (int x = rect.left; x < rect.right; x += stepX) {
                int color = bitmap.getPixel(x, y);
                red += Color.red(color);
                green += Color.green(color);
                blue += Color.blue(color);
                samples++;
            }
        }
        if (samples == 0) {
            return Color.BLACK;
        }
        return Color.rgb((int) (red / samples), (int) (green / samples), (int) (blue / samples));
    }

    private TileColor classify(float[] hsv) {
        float hue = hsv[0];
        float saturation = hsv[1];
        float value = hsv[2];

        if (saturation < 0.18f) {
            return value > 0.72f ? TileColor.OURO : TileColor.AZUL;
        }
        if (hue < 18f || hue >= 342f) {
            return TileColor.RUBI;
        }
        if (hue < 42f) {
            return TileColor.LARANJA;
        }
        if (hue < 78f) {
            return TileColor.OURO;
        }
        if (hue < 168f) {
            return TileColor.VERDE;
        }
        if (hue < 252f) {
            return TileColor.CIANO;
        }
        return TileColor.AZUL;
    }

    private int clamp(int value, int min, int max) {
        return Math.max(min, Math.min(max, value));
    }
}
