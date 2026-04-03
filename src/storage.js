import fs from "node:fs/promises";
import path from "node:path";

const DATA_DIR = path.join(process.cwd(), "data");
const FILE = path.join(DATA_DIR, "storage.json");

const defaultState = {
  panelChannelId: null,
  panelMessageId: null,
  logChannelId: null,
  welcomeChannelId: null,
  announceChannelId: null,
  ticketCategoryId: null,
  staffRoleId: null,
  setupDoneAt: null,
  /** Texto opcional usado pelo botão “Mensagem de encorajamento” (secção Comunidade). */
  encourageMessage: null,
};

async function ensureDir() {
  await fs.mkdir(DATA_DIR, { recursive: true });
}

export async function loadStorage() {
  await ensureDir();
  try {
    const raw = await fs.readFile(FILE, "utf8");
    const parsed = JSON.parse(raw);
    return { ...defaultState, ...parsed };
  } catch {
    return { ...defaultState };
  }
}

export async function saveStorage(partial) {
  await ensureDir();
  const current = await loadStorage();
  const next = { ...current, ...partial };
  await fs.writeFile(FILE, JSON.stringify(next, null, 2), "utf8");
  return next;
}
