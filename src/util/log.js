import { logEmbed } from "./embeds.js";

export async function sendStaffLog(guild, config, storage, lines) {
  const id = config.logChannelId || storage.logChannelId;
  const ch = id ? guild.channels.cache.get(id) : null;
  if (ch?.isTextBased()) {
    await ch.send({ embeds: [logEmbed("Painel", lines)] });
  }
}
