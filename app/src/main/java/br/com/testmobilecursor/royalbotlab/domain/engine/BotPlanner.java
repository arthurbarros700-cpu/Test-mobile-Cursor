package br.com.testmobilecursor.royalbotlab.domain.engine;

import java.util.List;
import java.util.Locale;

import br.com.testmobilecursor.royalbotlab.domain.model.BoardState;
import br.com.testmobilecursor.royalbotlab.domain.model.BotDecision;
import br.com.testmobilecursor.royalbotlab.domain.model.Swap;
import br.com.testmobilecursor.royalbotlab.domain.model.TurnResult;

public final class BotPlanner {
    private static final int MAX_PRIMARY_CANDIDATES = 24;
    private static final int MAX_SECONDARY_CANDIDATES = 8;

    private final Match3Engine engine;

    public BotPlanner(Match3Engine engine) {
        this.engine = engine;
    }

    public BotDecision chooseBestMove(BoardState state, int depth) {
        List<Swap> candidates = engine.getAllValidSwaps(state.getBoard());
        if (candidates.isEmpty()) {
            return null;
        }
        BotDecision best = null;
        int primaryLimit = Math.min(candidates.size(), MAX_PRIMARY_CANDIDATES);
        for (int index = 0; index < primaryLimit; index++) {
            Swap candidate = candidates.get(index);
            TurnResult firstResult = engine.applySwap(state, candidate);
            if (!firstResult.isValid()) {
                continue;
            }
            double score = evaluateState(firstResult.getResultingState(), firstResult, depth - 1);
            String rationale = buildRationale(firstResult, depth);
            BotDecision current = new BotDecision(
                    candidate,
                    score,
                    rationale,
                    firstResult.getPointsGained(),
                    firstResult.getCascadeDepth(),
                    Math.max(1, depth)
            );
            if (best == null || current.getScore() > best.getScore()) {
                best = current;
            }
        }
        return best;
    }

    private double evaluateState(BoardState state, TurnResult immediateResult, int remainingDepth) {
        double score = 0.0;
        score += immediateResult.getPointsGained() * 1.0;
        score += immediateResult.getCascadeDepth() * 85.0;
        score += immediateResult.getSpecialsCreated() * 95.0;
        score += immediateResult.getSpecialsTriggered() * 60.0;
        score += immediateResult.getCollectedTargetTiles() * 120.0;
        score += state.getMovesRemaining() * 10.0;
        int scoreGap = Math.max(0, state.getLevelDefinition().getTargetScore() - state.getScore());
        int colorGap = Math.max(0, state.getLevelDefinition().getTargetColorCount() - state.getObjectiveProgress().getCollectedTargetColor());
        score -= scoreGap * 0.03;
        score -= colorGap * 18.0;
        if (state.objectiveReached()) {
            score += 5000.0;
        }
        if (remainingDepth <= 0 || state.getMovesRemaining() <= 0 || state.objectiveReached()) {
            return score;
        }
        double futureScore = evaluateSecondLayer(state, remainingDepth);
        if (futureScore > 0.0) {
            score += futureScore * 0.42;
        }
        return score;
    }

    private double evaluateSecondLayer(BoardState state, int remainingDepth) {
        List<Swap> candidates = engine.getAllValidSwaps(state.getBoard());
        if (candidates.isEmpty()) {
            return 0.0;
        }
        double bestScore = Double.NEGATIVE_INFINITY;
        int limit = Math.min(candidates.size(), MAX_SECONDARY_CANDIDATES);
        for (int index = 0; index < limit; index++) {
            TurnResult result = engine.applySwap(state, candidates.get(index));
            if (!result.isValid()) {
                continue;
            }
            double currentScore = result.getPointsGained()
                    + result.getCascadeDepth() * 75.0
                    + result.getCollectedTargetTiles() * 110.0
                    + result.getSpecialsCreated() * 90.0;
            if (result.getResultingState().objectiveReached()) {
                currentScore += 5000.0;
            }
            if (currentScore > bestScore) {
                bestScore = currentScore;
            }
        }
        return bestScore == Double.NEGATIVE_INFINITY ? 0.0 : bestScore;
    }

    private String buildRationale(TurnResult result, int depth) {
        return String.format(
                Locale.US,
                "Profundidade %d | +%d pontos | cascata %d | especiais criados %d | alvo coletado %d",
                Math.max(1, depth),
                result.getPointsGained(),
                result.getCascadeDepth(),
                result.getSpecialsCreated(),
                result.getCollectedTargetTiles()
        );
    }
}
