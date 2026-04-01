package br.com.testmobilecursor.royalbotlab.domain.model;

import java.util.Objects;

public final class Swap {
    private final Position first;
    private final Position second;

    public Swap(Position first, Position second) {
        this.first = Objects.requireNonNull(first, "first");
        this.second = Objects.requireNonNull(second, "second");
    }

    public Position getFirst() {
        return first;
    }

    public Position getSecond() {
        return second;
    }

    public boolean isAdjacent() {
        return first.isAdjacentTo(second);
    }

    @Override
    public String toString() {
        return first + " <-> " + second;
    }
}
