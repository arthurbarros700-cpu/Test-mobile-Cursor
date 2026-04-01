package br.com.testmobilecursor.royalbotlab.domain.model;

public final class BoardState {
    public static final int ROWS = 8;
    public static final int COLS = 8;

    private final LevelDefinition levelDefinition;
    private Tile[][] board;
    private int score;
    private int movesRemaining;
    private int highestCascade;
    private int biggestCombo;
    private int turnCounter;
    private ObjectiveProgress objectiveProgress;
    private GameStatus status;
    private String statusMessage;
    private String botSuggestion;

    public BoardState(LevelDefinition levelDefinition, Tile[][] board) {
        this.levelDefinition = levelDefinition;
        this.board = deepCopyBoard(board);
        this.score = 0;
        this.movesRemaining = levelDefinition.getMoveLimit();
        this.highestCascade = 0;
        this.biggestCombo = 0;
        this.turnCounter = 0;
        this.objectiveProgress = new ObjectiveProgress();
        this.status = GameStatus.ATIVO;
        this.statusMessage = "Aguardando comando";
        this.botSuggestion = "";
    }

    public LevelDefinition getLevelDefinition() {
        return levelDefinition;
    }

    public Tile[][] getBoard() {
        return board;
    }

    public void setBoard(Tile[][] board) {
        this.board = deepCopyBoard(board);
    }

    public int getScore() {
        return score;
    }

    public void addScore(int delta) {
        score += delta;
    }

    public int getMovesRemaining() {
        return movesRemaining;
    }

    public void setMovesRemaining(int movesRemaining) {
        this.movesRemaining = movesRemaining;
    }

    public void consumeMove() {
        movesRemaining = Math.max(0, movesRemaining - 1);
    }

    public int getHighestCascade() {
        return highestCascade;
    }

    public void setHighestCascade(int highestCascade) {
        this.highestCascade = highestCascade;
    }

    public int getBiggestCombo() {
        return biggestCombo;
    }

    public void setBiggestCombo(int biggestCombo) {
        this.biggestCombo = biggestCombo;
    }

    public int getTurnCounter() {
        return turnCounter;
    }

    public void incrementTurnCounter() {
        turnCounter++;
    }

    public ObjectiveProgress getObjectiveProgress() {
        return objectiveProgress;
    }

    public void setObjectiveProgress(ObjectiveProgress objectiveProgress) {
        this.objectiveProgress = objectiveProgress.copy();
    }

    public GameStatus getStatus() {
        return status;
    }

    public void setStatus(GameStatus status) {
        this.status = status;
    }

    public String getStatusMessage() {
        return statusMessage;
    }

    public void setStatusMessage(String statusMessage) {
        this.statusMessage = statusMessage;
    }

    public String getBotSuggestion() {
        return botSuggestion;
    }

    public void setBotSuggestion(String botSuggestion) {
        this.botSuggestion = botSuggestion;
    }

    public boolean objectiveReached() {
        return score >= levelDefinition.getTargetScore()
                && objectiveProgress.getCollectedTargetColor() >= levelDefinition.getTargetColorCount();
    }

    public BoardState copy() {
        BoardState copy = new BoardState(levelDefinition, board);
        copy.score = score;
        copy.movesRemaining = movesRemaining;
        copy.highestCascade = highestCascade;
        copy.biggestCombo = biggestCombo;
        copy.turnCounter = turnCounter;
        copy.objectiveProgress = objectiveProgress.copy();
        copy.status = status;
        copy.statusMessage = statusMessage;
        copy.botSuggestion = botSuggestion;
        return copy;
    }

    public static Tile[][] deepCopyBoard(Tile[][] source) {
        Tile[][] copy = new Tile[ROWS][COLS];
        for (int row = 0; row < ROWS; row++) {
            for (int col = 0; col < COLS; col++) {
                Tile tile = source[row][col];
                copy[row][col] = tile == null ? null : tile.copy();
            }
        }
        return copy;
    }
}
