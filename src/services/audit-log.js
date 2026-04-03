import { EmbedBuilder, AuditLogEvent } from "discord.js";

const MAX = 80;
const entries = [];

function push(guildId, line) {
  if (guildId && entries.length > 0 && entries[entries.length - 1].guildId !== guildId) {
    // optional: could filter by guild when reading
  }
  entries.push({ t: Date.now(), guildId, line });
  while (entries.length > MAX) entries.shift();
}

export function getRecentAuditLines(guildId, n = 15) {
  return entries
    .filter((e) => e.guildId === guildId)
    .slice(-n)
    .reverse()
    .map((e) => `<t:${Math.floor(e.t / 1000)}:t> · ${e.line}`);
}

export function registerAuditListeners(client, getGuildId) {
  client.on("guildBanAdd", async (ban) => {
    if (ban.guild.id !== getGuildId()) return;
    push(ban.guild.id, `**Ban** · ${ban.user.tag} (${ban.user.id})`);
  });

  client.on("guildBanRemove", async (ban) => {
    if (ban.guild.id !== getGuildId()) return;
    push(ban.guild.id, `**Unban** · ${ban.user.tag} (${ban.user.id})`);
  });

  client.on("guildMemberRemove", async (member) => {
    if (member.guild.id !== getGuildId()) return;
    const logs = await member.guild
      .fetchAuditLogs({ limit: 1, type: AuditLogEvent.MemberKick })
      .catch(() => null);
    const ent = logs?.entries.first();
    if (ent && ent.targetId === member.id && ent.createdTimestamp > Date.now() - 5000) {
      push(member.guild.id, `**Kick** · ${member.user.tag} — executor: ${ent.executor?.tag ?? "?"}`);
    } else {
      push(member.guild.id, `**Saída** · ${member.user.tag} (${member.user.id})`);
    }
  });

  client.on("guildMemberUpdate", (oldM, newM) => {
    if (newM.guild.id !== getGuildId()) return;
    const oldT = oldM.communicationDisabledUntil;
    const newT = newM.communicationDisabledUntil;
    if (oldT?.getTime() !== newT?.getTime()) {
      if (newT && newT > new Date()) {
        push(newM.guild.id, `**Timeout** · ${newM.user.tag} até <t:${Math.floor(newT.getTime() / 1000)}:f>`);
      } else if (!newT || newT <= new Date()) {
        push(newM.guild.id, `**Timeout removido** · ${newM.user.tag}`);
      }
    }
  });
}

export function auditSummaryEmbed(guild, lines) {
  const body = lines.length ? lines.join("\n").slice(0, 3900) : "_Sem eventos recentes na memória do bot._";
  return new EmbedBuilder()
    .setColor(0x5865f2)
    .setTitle(`Auditoria · ${guild.name}`)
    .setDescription(body)
    .setFooter({ text: "Buffer em RAM — reiniciar o bot limpa o histórico." });
}
