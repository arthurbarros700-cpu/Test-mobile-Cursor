import {
  Client,
  GatewayIntentBits,
  Partials,
  Events,
} from "discord.js";
import { loadConfig, assertConfig } from "./config.js";
import { loadStorage, saveStorage } from "./storage.js";
import { registerInteractionHub } from "./core/interaction-hub.js";
import { scriptModules } from "./scripts/index.js";
import { createBridgeServer } from "./bridge/http.js";
import { panelEmbed } from "./util/embeds.js";
import { buildMainPanelRows } from "./panel/ui.js";
import { successEmbed } from "./util/embeds.js";
import { registerAuditListeners } from "./services/audit-log.js";

const baseConfig = loadConfig();
assertConfig(baseConfig);

let storageCache = await loadStorage();

function mergeEnvAndStorage(env, st) {
  return {
    ...env,
    panelChannelId: env.panelChannelId || st.panelChannelId,
    logChannelId: env.logChannelId || st.logChannelId,
    welcomeChannelId: env.welcomeChannelId || st.welcomeChannelId,
    announceChannelId: env.announceChannelId || st.announceChannelId,
    ticketCategoryId: env.ticketCategoryId || st.ticketCategoryId,
    staffRoleId: env.staffRoleId || st.staffRoleId,
  };
}

function getConfig() {
  return mergeEnvAndStorage(baseConfig, storageCache);
}

async function refreshStorage() {
  storageCache = await loadStorage();
}

const ctx = {
  getConfig,
  getStorage: () => storageCache,
  refreshStorage,
};

function getGuild() {
  return client.guilds.cache.get(getConfig().guildId) ?? null;
}

function getAnnounceChannel() {
  const g = getGuild();
  if (!g) return null;
  const id = getConfig().announceChannelId;
  return id ? g.channels.cache.get(id) : null;
}

const client = new Client({
  intents: [
    GatewayIntentBits.Guilds,
    GatewayIntentBits.GuildMembers,
    GatewayIntentBits.GuildMessages,
    GatewayIntentBits.GuildModeration,
  ],
  partials: [Partials.GuildMember],
});

registerInteractionHub(client, ctx, scriptModules);
registerAuditListeners(client, () => getConfig().guildId);

client.once(Events.ClientReady, async (c) => {
  console.log(`Autenticado como ${c.user.tag}`);
  const guild = getGuild();
  if (!guild) {
    console.error("GUILD_ID inválido ou bot fora do servidor.");
    return;
  }
  await guild.members.fetch().catch(() => {});

  await ensurePanelMessage(guild);

  createBridgeServer({
    getConfig,
    getGuild,
    getAnnounceChannel,
    log: (...a) => console.log("[bridge]", ...a),
  });
});

client.on(Events.GuildMemberAdd, async (member) => {
  if (member.guild.id !== getConfig().guildId) return;
  const wid = getConfig().welcomeChannelId;
  const ch = wid ? member.guild.channels.cache.get(wid) : null;
  if (ch?.isTextBased()) {
    await ch.send({
      embeds: [
        successEmbed(
          "Novo membro",
          `${member} entrou no servidor. Bem-vindo(a) — leia as regras e divirta-se no MTA.`
        ),
      ],
    }).catch(() => {});
  }
});

client.on(Events.GuildMemberRemove, async (member) => {
  if (member.guild.id !== getConfig().guildId) return;
  const lid = getConfig().logChannelId;
  const ch = lid ? member.guild.channels.cache.get(lid) : null;
  if (ch?.isTextBased()) {
    await ch.send({
      embeds: [
        successEmbed(
          "Saída",
          `${member.user?.tag ?? member.id} saiu ou foi removido(a) do servidor.`
        ),
      ],
    }).catch(() => {});
  }
});

async function ensurePanelMessage(guild) {
  const panelChId = getConfig().panelChannelId || storageCache.panelChannelId;
  if (!panelChId) {
    console.warn(
      "Defina PANEL_CHANNEL_ID no .env ou crie um canal #painel-bot e coloque o ID em .env."
    );
    return;
  }
  const ch = guild.channels.cache.get(panelChId);
  if (!ch?.isTextBased()) {
    console.warn("Canal do painel inválido ou inacessível.");
    return;
  }

  const embed = panelEmbed();
  const rows = buildMainPanelRows();

  const msgId = storageCache.panelMessageId;
  if (msgId) {
    try {
      const msg = await ch.messages.fetch(msgId);
      await msg.edit({ embeds: [embed], components: rows });
      return;
    } catch {
      // recriar
    }
  }

  const sent = await ch.send({ embeds: [embed], components: rows });
  await saveStorage({
    panelChannelId: ch.id,
    panelMessageId: sent.id,
  });
  await refreshStorage();
}

client.login(baseConfig.token);
