export function channelByName(guild, name) {
  return guild.channels.cache.find((c) => c.isTextBased() && c.name === name) ?? null;
}
