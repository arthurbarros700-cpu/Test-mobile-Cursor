import { PermissionFlagsBits } from "discord.js";

export function isOwner(userId, config) {
  return config.ownerIds.includes(userId);
}

export function isStaff(member, config) {
  if (!member) return false;
  if (isOwner(member.id, config)) return true;
  if (member.permissions.has(PermissionFlagsBits.Administrator)) return true;
  if (config.staffRoleId && member.roles.cache.has(config.staffRoleId)) return true;
  return false;
}

export function assertStaff(interaction, config) {
  const member = interaction.member;
  if (!isStaff(member, config)) {
    return {
      ok: false,
      message: "Não tem permissão para usar esta função do painel.",
    };
  }
  return { ok: true };
}
