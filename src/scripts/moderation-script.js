import { errorEmbed, successEmbed, warnEmbed } from "../util/embeds.js";
import { assertStaff } from "../util/permissions.js";
import { sendStaffLog } from "../util/log.js";
import { moderationUserRows } from "../panel/ui.js";

export const name = "moderation";

export async function onInteraction(interaction, ctx) {
  if (interaction.isUserSelectMenu() && interaction.customId === "panel:mod-user") {
    const check = assertStaff(interaction, ctx.getConfig());
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    const userId = interaction.values[0];
    await interaction.reply({
      ephemeral: true,
      content: `Ações para <@${userId}>:`,
      components: moderationUserRows(userId),
    });
    return true;
  }

  if (interaction.isButton() && interaction.customId === "panel:purge") {
    const check = assertStaff(interaction, ctx.getConfig());
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    const ch = interaction.channel;
    if (!ch?.isTextBased() || ch.isDMBased()) {
      await interaction.reply({
        ephemeral: true,
        embeds: [errorEmbed("Canal", "Use isto num canal de texto do servidor.")],
      });
      return true;
    }
    await interaction.deferReply({ ephemeral: true });
    const fetched = await ch.messages.fetch({ limit: 50 });
    const deletable = fetched.filter((m) => !m.pinned);
    const twoWeeks = Date.now() - 14 * 24 * 60 * 60 * 1000;
    const recent = deletable.filter((m) => m.createdTimestamp > twoWeeks);
    if (recent.size === 0) {
      await interaction.editReply({
        embeds: [warnEmbed("Limpeza", "Nenhuma mensagem recente para apagar (limite 14 dias da API).")],
      });
      return true;
    }
    await ch.bulkDelete(recent, true);
    await interaction.editReply({
      embeds: [successEmbed("Limpeza", `${recent.size} mensagens removidas em ${ch}.`)],
    });
    return true;
  }

  const modMatch = interaction.isButton() && interaction.customId.match(
    /^panel:(kick|to1|to24|untimeout|ban):(\d+)$/
  );
  if (modMatch) {
    const check = assertStaff(interaction, ctx.getConfig());
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    const [, action, userId] = modMatch;
    const target = await interaction.guild.members.fetch(userId).catch(() => null);
    if (!target) {
      await interaction.reply({
        ephemeral: true,
        embeds: [errorEmbed("Utilizador", "Membro não encontrado no servidor.")],
      });
      return true;
    }
    if (target.id === interaction.guild.ownerId) {
      await interaction.reply({
        ephemeral: true,
        embeds: [errorEmbed("Protegido", "Não é possível moderar o dono do servidor.")],
      });
      return true;
    }
    const me = interaction.guild.members.me;
    if (target.roles.highest.position >= me.roles.highest.position) {
      await interaction.reply({
        ephemeral: true,
        embeds: [errorEmbed("Hierarquia", "O bot não pode moderar este membro (cargo acima).")],
      });
      return true;
    }

    await interaction.deferReply({ ephemeral: true });
    try {
      if (action === "kick") {
        await target.kick(`Painel — ${interaction.user.tag}`);
        await interaction.editReply({ embeds: [successEmbed("Expulso", `${target.user.tag} foi expulso.`)] });
      } else if (action === "ban") {
        await target.ban({
          deleteMessageSeconds: 60 * 60 * 24,
          reason: `Painel — ${interaction.user.tag}`,
        });
        await interaction.editReply({ embeds: [successEmbed("Banido", `${target.user.tag} foi banido.`)] });
      } else if (action === "to1") {
        await target.timeout(60 * 60 * 1000, `Painel — ${interaction.user.tag}`);
        await interaction.editReply({ embeds: [successEmbed("Timeout", "1 hora aplicada.")] });
      } else if (action === "to24") {
        await target.timeout(24 * 60 * 60 * 1000, `Painel — ${interaction.user.tag}`);
        await interaction.editReply({ embeds: [successEmbed("Timeout", "24 horas aplicadas.")] });
      } else if (action === "untimeout") {
        await target.timeout(null, `Painel — ${interaction.user.tag}`);
        await interaction.editReply({ embeds: [successEmbed("Timeout", "Removido.")] });
      }
    } catch (e) {
      await interaction.editReply({
        embeds: [errorEmbed("Erro", String(e.message || e))],
      });
      return true;
    }
    await sendStaffLog(
      interaction.guild,
      ctx.getConfig(),
      ctx.getStorage(),
      `**${action}** em ${target.user.tag} por ${interaction.user.tag}`
    );
    return true;
  }

  return false;
}
