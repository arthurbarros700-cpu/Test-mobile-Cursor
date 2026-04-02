import "dotenv/config";

function parseIds(str) {
  if (!str || typeof str !== "string") return [];
  return str
    .split(",")
    .map((s) => s.trim())
    .filter(Boolean);
}

export function loadConfig() {
  const token = process.env.DISCORD_TOKEN;
  const guildId = process.env.GUILD_ID || null;
  const bridgePort = Number(process.env.BRIDGE_PORT || 3750);
  const bridgeSecret = process.env.BRIDGE_SECRET || "";

  return {
    token,
    guildId,
    panelChannelId: process.env.PANEL_CHANNEL_ID || null,
    logChannelId: process.env.LOG_CHANNEL_ID || null,
    welcomeChannelId: process.env.WELCOME_CHANNEL_ID || null,
    announceChannelId: process.env.ANNOUNCE_CHANNEL_ID || null,
    ticketCategoryId: process.env.TICKET_CATEGORY_ID || null,
    staffRoleId: process.env.STAFF_ROLE_ID || null,
    bridgePort,
    bridgeSecret,
    ownerIds: parseIds(process.env.BOT_OWNER_IDS || ""),
  };
}

export function assertConfig(cfg) {
  if (!cfg.token) {
    throw new Error("Defina DISCORD_TOKEN no arquivo .env");
  }
  if (!cfg.guildId) {
    throw new Error("Defina GUILD_ID no arquivo .env");
  }
}
