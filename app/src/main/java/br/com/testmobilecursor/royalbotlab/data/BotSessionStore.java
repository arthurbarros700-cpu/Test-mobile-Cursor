package br.com.testmobilecursor.royalbotlab.data;

import android.os.Handler;
import android.os.Looper;

import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.function.Consumer;

public final class BotSessionStore {
    public interface Listener {
        void onSnapshot(BotSessionSnapshot snapshot);
    }

    private static final BotSessionStore INSTANCE = new BotSessionStore();

    private final Object lock = new Object();
    private final Handler mainHandler = new Handler(Looper.getMainLooper());
    private final Set<Listener> listeners = new CopyOnWriteArraySet<>();
    private BotSessionSnapshot snapshot = BotSessionSnapshot.initial();

    private BotSessionStore() {
    }

    public static BotSessionStore getInstance() {
        return INSTANCE;
    }

    public BotSessionSnapshot getSnapshot() {
        synchronized (lock) {
            return snapshot;
        }
    }

    public void addListener(Listener listener) {
        listeners.add(listener);
        BotSessionSnapshot current = getSnapshot();
        mainHandler.post(() -> listener.onSnapshot(current));
    }

    public void removeListener(Listener listener) {
        listeners.remove(listener);
    }

    public void update(Consumer<BotSessionSnapshot.Builder> consumer) {
        BotSessionSnapshot updated;
        synchronized (lock) {
            BotSessionSnapshot.Builder builder = snapshot.buildUpon();
            consumer.accept(builder);
            snapshot = builder.build();
            updated = snapshot;
        }
        mainHandler.post(() -> notifyListeners(updated));
    }

    private void notifyListeners(BotSessionSnapshot updated) {
        for (Listener listener : listeners) {
            listener.onSnapshot(updated);
        }
    }
}
