package br.com.testmobilecursor.royalbotlab.domain.engine;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Queue;
import java.util.Random;
import java.util.Set;

import br.com.testmobilecursor.royalbotlab.domain.model.BoardState;
import br.com.testmobilecursor.royalbotlab.domain.model.GameStatus;
import br.com.testmobilecursor.royalbotlab.domain.model.LevelDefinition;
import br.com.testmobilecursor.royalbotlab.domain.model.ObjectiveProgress;
import br.com.testmobilecursor.royalbotlab.domain.model.Position;
import br.com.testmobilecursor.royalbotlab.domain.model.SpecialType;
import br.com.testmobilecursor.royalbotlab.domain.model.Swap;
import br.com.testmobilecursor.royalbotlab.domain.model.Tile;
import br.com.testmobilecursor.royalbotlab.domain.model.TileColor;
import br.com.testmobilecursor.royalbotlab.domain.model.TurnResult;

public final class Match3Engine {
    private final Random random;

    public Match3Engine() {
        this(new Random());
    }

    public Match3Engine(Random random) {
        this.random = random;
    }

    public BoardState createNewGame(LevelDefinition levelDefinition) {
        Tile[][] board = generatePlayableBoard(levelDefinition);
        BoardState state = new BoardState(levelDefinition, board);
        state.setStatusMessage("Tabuleiro carregado. Analise uma jogada ou ative o autoplay.");
        return state;
    }

    public TurnResult applySwap(BoardState originalState, Swap swap) {
        if (originalState == null || swap == null) {
            throw new IllegalArgumentException("Estado e jogada sao obrigatorios");
        }
        if (!swap.isAdjacent()) {
            return TurnResult.invalid(originalState, "Selecione duas pecas vizinhas.");
        }
        if (originalState.getStatus() != GameStatus.ATIVO) {
            return TurnResult.invalid(originalState, "A fase ja foi encerrada.");
        }

        BoardState state = originalState.copy();
        Tile[][] board = BoardState.deepCopyBoard(state.getBoard());
        swap(board, swap.getFirst(), swap.getSecond());

        List<MatchCluster> currentMatches = findMatches(board);
        boolean specialInteractionOnly = false;
        int baseSpecialTriggers = 0;

        if (currentMatches.isEmpty()) {
            Tile firstTile = board[swap.getFirst().getRow()][swap.getFirst().getCol()];
            Tile secondTile = board[swap.getSecond().getRow()][swap.getSecond().getCol()];
            if (firstTile != null && secondTile != null && (firstTile.isSpecial() || secondTile.isSpecial())) {
                Set<Position> effect = resolveSpecialInteraction(board, swap.getFirst(), swap.getSecond());
                if (effect.isEmpty()) {
                    swap(board, swap.getFirst(), swap.getSecond());
                    return TurnResult.invalid(originalState, "Nenhum efeito foi gerado pela troca.");
                }
                currentMatches = Collections.singletonList(MatchCluster.freeform(effect, null));
                specialInteractionOnly = true;
                baseSpecialTriggers = 2;
            } else {
                swap(board, swap.getFirst(), swap.getSecond());
                return TurnResult.invalid(originalState, "Troca invalida: nenhuma combinacao formada.");
            }
        }

        state.consumeMove();
        state.incrementTurnCounter();
        ObjectiveProgress progress = state.getObjectiveProgress().copy();

        int totalPoints = 0;
        int totalCleared = 0;
        int targetCollected = 0;
        int cascadeDepth = 0;
        int specialsCreated = 0;
        int specialsTriggered = baseSpecialTriggers;
        boolean reshuffled = false;

        while (!currentMatches.isEmpty()) {
            cascadeDepth++;
            Resolution resolution = resolveMatches(
                    board,
                    currentMatches,
                    state.getLevelDefinition(),
                    swap,
                    cascadeDepth == 1 && !specialInteractionOnly
            );
            totalPoints += resolution.points;
            totalCleared += resolution.cleared;
            targetCollected += resolution.targetCollected;
            specialsCreated += resolution.specialsCreated;
            specialsTriggered += resolution.specialsTriggered;

            collapse(board, state.getLevelDefinition());
            currentMatches = findMatches(board);
        }

        if (getAllValidSwaps(board).isEmpty()) {
            reshuffle(board, state.getLevelDefinition());
            reshuffled = true;
        }

        state.setBoard(board);
        state.addScore(totalPoints);
        progress.addCollectedTargetColor(targetCollected);
        progress.addTotalCleared(totalCleared);
        state.setObjectiveProgress(progress);
        state.setHighestCascade(Math.max(state.getHighestCascade(), cascadeDepth));
        state.setBiggestCombo(Math.max(state.getBiggestCombo(), totalCleared));
        updateStatus(state, totalPoints, cascadeDepth, totalCleared, reshuffled);

        return new TurnResult(
                true,
                state,
                state.getStatusMessage(),
                totalPoints,
                totalCleared,
                targetCollected,
                cascadeDepth,
                specialsCreated,
                specialsTriggered,
                reshuffled
        );
    }

    public List<Swap> getAllValidSwaps(Tile[][] board) {
        List<Swap> swaps = new ArrayList<>();
        for (int row = 0; row < BoardState.ROWS; row++) {
            for (int col = 0; col < BoardState.COLS; col++) {
                Position current = new Position(row, col);
                if (col + 1 < BoardState.COLS) {
                    maybeAddSwap(board, swaps, current, new Position(row, col + 1));
                }
                if (row + 1 < BoardState.ROWS) {
                    maybeAddSwap(board, swaps, current, new Position(row + 1, col));
                }
            }
        }
        return swaps;
    }

    public List<MatchCluster> findMatches(Tile[][] board) {
        List<MatchCluster> matches = new ArrayList<>();
        collectHorizontalMatches(board, matches);
        collectVerticalMatches(board, matches);
        return mergeClusters(matches);
    }

    public Tile[][] generatePlayableBoard(LevelDefinition levelDefinition) {
        Tile[][] board = new Tile[BoardState.ROWS][BoardState.COLS];
        do {
            for (int row = 0; row < BoardState.ROWS; row++) {
                for (int col = 0; col < BoardState.COLS; col++) {
                    board[row][col] = nextSafeTile(board, row, col, levelDefinition);
                }
            }
        } while (getAllValidSwaps(board).isEmpty());
        return board;
    }

    private void maybeAddSwap(Tile[][] board, List<Swap> swaps, Position first, Position second) {
        Tile firstTile = board[first.getRow()][first.getCol()];
        Tile secondTile = board[second.getRow()][second.getCol()];
        if (firstTile == null || secondTile == null) {
            return;
        }
        swap(board, first, second);
        boolean valid = !findMatches(board).isEmpty() || firstTile.isSpecial() || secondTile.isSpecial();
        swap(board, first, second);
        if (valid) {
            swaps.add(new Swap(first, second));
        }
    }

    private Resolution resolveMatches(
            Tile[][] board,
            List<MatchCluster> matches,
            LevelDefinition levelDefinition,
            Swap originalSwap,
            boolean allowCreation
    ) {
        Set<Position> toClear = new LinkedHashSet<>();
        List<CreatedSpecial> createdSpecials = new ArrayList<>();
        Queue<Position> specialQueue = new ArrayDeque<>();
        Set<Position> visitedSpecials = new HashSet<>();

        int points = 0;
        int targetCollected = 0;
        int specialsCreated = 0;
        int specialsTriggered = 0;

        for (MatchCluster match : matches) {
            toClear.addAll(match.positions);
            points += computePoints(match);
            for (Position position : match.positions) {
                Tile tile = board[position.getRow()][position.getCol()];
                if (tile != null && tile.isSpecial()) {
                    specialQueue.add(position);
                }
            }
            if (allowCreation) {
                CreatedSpecial createdSpecial = decideSpecialCreation(match, originalSwap, board);
                if (createdSpecial != null) {
                    createdSpecials.add(createdSpecial);
                    specialsCreated++;
                }
            }
        }

        while (!specialQueue.isEmpty()) {
            Position specialOrigin = specialQueue.poll();
            if (!visitedSpecials.add(specialOrigin)) {
                continue;
            }
            Tile tile = board[specialOrigin.getRow()][specialOrigin.getCol()];
            if (tile == null || !tile.isSpecial()) {
                continue;
            }
            specialsTriggered++;
            Set<Position> explosion = collectSpecialArea(board, specialOrigin, tile.getSpecialType());
            for (Position hit : explosion) {
                Tile hitTile = board[hit.getRow()][hit.getCol()];
                if (hitTile != null && hitTile.isSpecial() && !visitedSpecials.contains(hit)) {
                    specialQueue.add(hit);
                }
            }
            toClear.addAll(explosion);
            points += explosion.size() * 20;
        }

        for (CreatedSpecial createdSpecial : createdSpecials) {
            toClear.remove(createdSpecial.position);
        }

        int cleared = 0;
        for (Position position : toClear) {
            Tile tile = board[position.getRow()][position.getCol()];
            if (tile != null) {
                if (tile.getColor() == levelDefinition.getTargetColor()) {
                    targetCollected++;
                }
                board[position.getRow()][position.getCol()] = null;
                cleared++;
            }
        }

        for (CreatedSpecial createdSpecial : createdSpecials) {
            board[createdSpecial.position.getRow()][createdSpecial.position.getCol()] = createdSpecial.tile;
            points += 75;
        }

        return new Resolution(points, cleared, targetCollected, specialsCreated, specialsTriggered);
    }

    private void updateStatus(BoardState state, int totalPoints, int cascadeDepth, int totalCleared, boolean reshuffled) {
        if (state.objectiveReached()) {
            state.setStatus(GameStatus.VITORIA);
            state.setStatusMessage("Fase concluida com sucesso. Pontos desta jogada: " + totalPoints + ".");
            return;
        }
        if (state.getMovesRemaining() == 0) {
            state.setStatus(GameStatus.DERROTA);
            state.setStatusMessage("Fim dos movimentos. Pontuacao final: " + state.getScore() + ".");
            return;
        }

        StringBuilder builder = new StringBuilder();
        builder.append("Jogada resolvida: +")
                .append(totalPoints)
                .append(" pontos, ")
                .append(totalCleared)
                .append(" pecas limpas, cascata ")
                .append(Math.max(1, cascadeDepth));
        if (reshuffled) {
            builder.append(". Tabuleiro reembaralhado.");
        }
        state.setStatus(GameStatus.ATIVO);
        state.setStatusMessage(builder.toString());
    }

    private void collapse(Tile[][] board, LevelDefinition levelDefinition) {
        for (int col = 0; col < BoardState.COLS; col++) {
            int writeRow = BoardState.ROWS - 1;
            for (int row = BoardState.ROWS - 1; row >= 0; row--) {
                if (board[row][col] != null) {
                    board[writeRow][col] = board[row][col];
                    if (writeRow != row) {
                        board[row][col] = null;
                    }
                    writeRow--;
                }
            }
            while (writeRow >= 0) {
                board[writeRow][col] = Tile.normal(TileColor.random(random, levelDefinition.getAvailableColors()));
                writeRow--;
            }
        }
    }

    private void reshuffle(Tile[][] board, LevelDefinition levelDefinition) {
        List<Tile> tiles = new ArrayList<>();
        for (int row = 0; row < BoardState.ROWS; row++) {
            for (int col = 0; col < BoardState.COLS; col++) {
                if (board[row][col] != null) {
                    tiles.add(board[row][col].copy());
                }
            }
        }
        do {
            Collections.shuffle(tiles, random);
            int index = 0;
            for (int row = 0; row < BoardState.ROWS; row++) {
                for (int col = 0; col < BoardState.COLS; col++) {
                    board[row][col] = tiles.get(index++).copy();
                }
            }
        } while (!findMatches(board).isEmpty() || getAllValidSwaps(board).isEmpty());

        if (tiles.isEmpty()) {
            Tile[][] regenerated = generatePlayableBoard(levelDefinition);
            for (int row = 0; row < BoardState.ROWS; row++) {
                System.arraycopy(regenerated[row], 0, board[row], 0, BoardState.COLS);
            }
        }
    }

    private CreatedSpecial decideSpecialCreation(MatchCluster match, Swap swap, Tile[][] board) {
        if (match.positions.size() < 4) {
            return null;
        }
        Position anchor = chooseAnchor(match.positions, swap);
        Tile anchorTile = board[anchor.getRow()][anchor.getCol()];
        if (anchorTile == null) {
            return null;
        }

        SpecialType specialType;
        if (match.positions.size() >= 5 && !match.hasCrossShape && (match.horizontalLineOnly || match.verticalLineOnly)) {
            specialType = SpecialType.DISCO;
        } else if (match.hasCrossShape || match.positions.size() >= 5) {
            specialType = SpecialType.BOMBA;
        } else if (match.horizontalLineOnly) {
            specialType = SpecialType.FOGUETE_HORIZONTAL;
        } else {
            specialType = SpecialType.FOGUETE_VERTICAL;
        }
        return new CreatedSpecial(anchor, Tile.special(anchorTile.getColor(), specialType));
    }

    private Position chooseAnchor(Set<Position> positions, Swap swap) {
        if (positions.contains(swap.getFirst())) {
            return swap.getFirst();
        }
        if (positions.contains(swap.getSecond())) {
            return swap.getSecond();
        }
        return positions.iterator().next();
    }

    private int computePoints(MatchCluster match) {
        int base = match.positions.size() * 60;
        if (match.hasCrossShape) {
            base += 180;
        }
        if (match.positions.size() >= 5) {
            base += 150;
        }
        return base;
    }

    private Set<Position> resolveSpecialInteraction(Tile[][] board, Position first, Position second) {
        Set<Position> area = new LinkedHashSet<>();
        Tile tileA = board[first.getRow()][first.getCol()];
        Tile tileB = board[second.getRow()][second.getCol()];
        if (tileA == null || tileB == null) {
            return area;
        }

        if (tileA.getSpecialType() == SpecialType.DISCO || tileB.getSpecialType() == SpecialType.DISCO) {
            TileColor targetColor = tileA.getSpecialType() == SpecialType.DISCO ? tileB.getColor() : tileA.getColor();
            for (int row = 0; row < BoardState.ROWS; row++) {
                for (int col = 0; col < BoardState.COLS; col++) {
                    Tile tile = board[row][col];
                    if (tile != null && tile.getColor() == targetColor) {
                        area.add(new Position(row, col));
                    }
                }
            }
            area.add(first);
            area.add(second);
            return area;
        }

        area.addAll(collectSpecialArea(board, first, tileA.getSpecialType()));
        area.addAll(collectSpecialArea(board, second, tileB.getSpecialType()));
        return area;
    }

    private Set<Position> collectSpecialArea(Tile[][] board, Position origin, SpecialType specialType) {
        Set<Position> positions = new LinkedHashSet<>();
        switch (specialType) {
            case FOGUETE_HORIZONTAL:
                for (int col = 0; col < BoardState.COLS; col++) {
                    positions.add(new Position(origin.getRow(), col));
                }
                break;
            case FOGUETE_VERTICAL:
                for (int row = 0; row < BoardState.ROWS; row++) {
                    positions.add(new Position(row, origin.getCol()));
                }
                break;
            case BOMBA:
                for (int row = origin.getRow() - 1; row <= origin.getRow() + 1; row++) {
                    for (int col = origin.getCol() - 1; col <= origin.getCol() + 1; col++) {
                        if (inBounds(row, col)) {
                            positions.add(new Position(row, col));
                        }
                    }
                }
                break;
            case DISCO:
                Tile originTile = board[origin.getRow()][origin.getCol()];
                TileColor color = originTile == null ? null : originTile.getColor();
                for (int row = 0; row < BoardState.ROWS; row++) {
                    for (int col = 0; col < BoardState.COLS; col++) {
                        Tile tile = board[row][col];
                        if (tile != null && (color == null || tile.getColor() == color)) {
                            positions.add(new Position(row, col));
                        }
                    }
                }
                break;
            case NONE:
            default:
                positions.add(origin);
                break;
        }
        positions.add(origin);
        return positions;
    }

    private List<MatchCluster> mergeClusters(List<MatchCluster> rawMatches) {
        List<MatchCluster> merged = new ArrayList<>();
        for (MatchCluster match : rawMatches) {
            boolean mergedIntoExisting = false;
            for (MatchCluster existing : merged) {
                if (existing.overlaps(match)) {
                    existing.absorb(match);
                    mergedIntoExisting = true;
                    break;
                }
            }
            if (!mergedIntoExisting) {
                merged.add(match.copy());
            }
        }
        for (MatchCluster match : merged) {
            match.recomputeMetadata();
        }
        merged.sort(Comparator.comparingInt((MatchCluster item) -> item.positions.size()).reversed());
        return merged;
    }

    private void collectHorizontalMatches(Tile[][] board, List<MatchCluster> matches) {
        for (int row = 0; row < BoardState.ROWS; row++) {
            int col = 0;
            while (col < BoardState.COLS) {
                Tile tile = board[row][col];
                if (tile == null) {
                    col++;
                    continue;
                }
                int end = col + 1;
                while (end < BoardState.COLS && board[row][end] != null && board[row][end].getColor() == tile.getColor()) {
                    end++;
                }
                if (end - col >= 3) {
                    Set<Position> positions = new LinkedHashSet<>();
                    for (int current = col; current < end; current++) {
                        positions.add(new Position(row, current));
                    }
                    matches.add(MatchCluster.horizontal(positions, tile.getColor()));
                }
                col = end;
            }
        }
    }

    private void collectVerticalMatches(Tile[][] board, List<MatchCluster> matches) {
        for (int col = 0; col < BoardState.COLS; col++) {
            int row = 0;
            while (row < BoardState.ROWS) {
                Tile tile = board[row][col];
                if (tile == null) {
                    row++;
                    continue;
                }
                int end = row + 1;
                while (end < BoardState.ROWS && board[end][col] != null && board[end][col].getColor() == tile.getColor()) {
                    end++;
                }
                if (end - row >= 3) {
                    Set<Position> positions = new LinkedHashSet<>();
                    for (int current = row; current < end; current++) {
                        positions.add(new Position(current, col));
                    }
                    matches.add(MatchCluster.vertical(positions, tile.getColor()));
                }
                row = end;
            }
        }
    }

    private Tile nextSafeTile(Tile[][] board, int row, int col, LevelDefinition levelDefinition) {
        Tile tile;
        do {
            tile = Tile.normal(TileColor.random(random, levelDefinition.getAvailableColors()));
        } while (wouldCreateImmediateMatch(board, row, col, tile));
        return tile;
    }

    private boolean wouldCreateImmediateMatch(Tile[][] board, int row, int col, Tile candidate) {
        if (col >= 2) {
            Tile leftOne = board[row][col - 1];
            Tile leftTwo = board[row][col - 2];
            if (leftOne != null && leftTwo != null
                    && leftOne.getColor() == candidate.getColor()
                    && leftTwo.getColor() == candidate.getColor()) {
                return true;
            }
        }
        if (row >= 2) {
            Tile upOne = board[row - 1][col];
            Tile upTwo = board[row - 2][col];
            if (upOne != null && upTwo != null
                    && upOne.getColor() == candidate.getColor()
                    && upTwo.getColor() == candidate.getColor()) {
                return true;
            }
        }
        return false;
    }

    private void swap(Tile[][] board, Position first, Position second) {
        Tile temp = board[first.getRow()][first.getCol()];
        board[first.getRow()][first.getCol()] = board[second.getRow()][second.getCol()];
        board[second.getRow()][second.getCol()] = temp;
    }

    private boolean inBounds(int row, int col) {
        return row >= 0 && row < BoardState.ROWS && col >= 0 && col < BoardState.COLS;
    }

    private static final class Resolution {
        private final int points;
        private final int cleared;
        private final int targetCollected;
        private final int specialsCreated;
        private final int specialsTriggered;

        private Resolution(int points, int cleared, int targetCollected, int specialsCreated, int specialsTriggered) {
            this.points = points;
            this.cleared = cleared;
            this.targetCollected = targetCollected;
            this.specialsCreated = specialsCreated;
            this.specialsTriggered = specialsTriggered;
        }
    }

    private static final class CreatedSpecial {
        private final Position position;
        private final Tile tile;

        private CreatedSpecial(Position position, Tile tile) {
            this.position = position;
            this.tile = tile;
        }
    }

    public static final class MatchCluster {
        private final Set<Position> positions;
        private boolean horizontalLineOnly;
        private boolean verticalLineOnly;
        private boolean hasCrossShape;
        private final TileColor color;

        private MatchCluster(Set<Position> positions, boolean horizontalLineOnly, boolean verticalLineOnly, TileColor color) {
            this.positions = new LinkedHashSet<>(positions);
            this.horizontalLineOnly = horizontalLineOnly;
            this.verticalLineOnly = verticalLineOnly;
            this.color = color;
            recomputeMetadata();
        }

        public static MatchCluster horizontal(Set<Position> positions, TileColor color) {
            return new MatchCluster(positions, true, false, color);
        }

        public static MatchCluster vertical(Set<Position> positions, TileColor color) {
            return new MatchCluster(positions, false, true, color);
        }

        public static MatchCluster freeform(Set<Position> positions, TileColor color) {
            return new MatchCluster(positions, false, false, color);
        }

        public MatchCluster copy() {
            return new MatchCluster(positions, horizontalLineOnly, verticalLineOnly, color);
        }

        public boolean overlaps(MatchCluster other) {
            for (Position position : other.positions) {
                if (positions.contains(position)) {
                    return true;
                }
            }
            return false;
        }

        public void absorb(MatchCluster other) {
            positions.addAll(other.positions);
            horizontalLineOnly = horizontalLineOnly && other.horizontalLineOnly;
            verticalLineOnly = verticalLineOnly && other.verticalLineOnly;
            recomputeMetadata();
        }

        public void recomputeMetadata() {
            Set<Integer> rows = new HashSet<>();
            Set<Integer> cols = new HashSet<>();
            for (Position position : positions) {
                rows.add(position.getRow());
                cols.add(position.getCol());
            }
            horizontalLineOnly = rows.size() == 1;
            verticalLineOnly = cols.size() == 1;
            hasCrossShape = !horizontalLineOnly && !verticalLineOnly;
        }

        public Collection<Position> getPositions() {
            return positions;
        }

        public TileColor getColor() {
            return color;
        }
    }
}
