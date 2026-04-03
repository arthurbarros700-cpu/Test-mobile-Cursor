import {
  ChannelType,
  PermissionFlagsBits,
  EmbedBuilder,
} from "discord.js";
import { closeTicketRow } from "../panel/ui.js";
import { errorEmbed, successEmbed, warnEmbed } from "../util/embeds.js";
import { isStaff } from "../util/permissions.js";

export const name = "tickets";

export async function onInteraction(interaction, ctx) {
  const cfg = ctx.getConfig();

  if (interaction.isButton() && interaction.customId === "panel:ticket-open") {
    await interaction.deferReply({ ephemeral: true });
    const s = ctx.getStorage();
    const catId = cfg.ticketCategoryId || s.ticketCategoryId;
    const category = catId ? interaction.guild.channels.cache.get(catId) : null;
    if (!category || category.type !== ChannelType.GuildCategory) {
      await interaction.editReply({
        embeds: [
          errorEmbed(
            "Tickets indisponíveis",
            "Execute **Setup completo do servidor** (secção Servidor) para criar a categoria de tickets."
          ),
        ],
      });
      return true;
    }
    const existing = interaction.guild.channels.cache.find(
      (c) =>
        c.type === ChannelType.GuildText &&
        c.parentId === category.id &&
        c.name === `ticket-${interaction.user.id}`
    );
    if (existing) {
      await interaction.editReply({
        embeds: [warnEmbed("Ticket existente", `Já tem um ticket: ${existing}`)],
      });
      return true;
    }
    const staffRoleId = cfg.staffRoleId || s.staffRoleId;
    const overwrites = [
      {
        id: interaction.guild.roles.everyone.id,
        deny: [PermissionFlagsBits.ViewChannel],
      },
      {
        id: interaction.user.id,
        allow: [
          PermissionFlagsBits.ViewChannel,
          PermissionFlagsBits.SendMessages,
          PermissionFlagsBits.ReadMessageHistory,
          PermissionFlagsBits.AttachFiles,
        ],
      },
    ];
    if (staffRoleId) {
      overwrites.push({
        id: staffRoleId,
        allow: [
          PermissionFlagsBits.ViewChannel,
          PermissionFlagsBits.SendMessages,
          PermissionFlagsBits.ReadMessageHistory,
          PermissionFlagsBits.ManageMessages,
        ],
      });
    }
    const ticket = await interaction.guild.channels.create({
      name: `ticket-${interaction.user.id}`,
      type: ChannelType.GuildText,
      parent: category.id,
      permissionOverwrites: overwrites,
      topic: `Ticket de ${interaction.user.tag}`,
    });
    await ticket.send({
      content: staffRoleId ? `<@&${staffRoleId}> — novo ticket.` : undefined,
      embeds: [
        new EmbedBuilder()
          .setColor(0x5865f2)
          .setTitle("Ticket de suporte")
          .setDescription(
            `Olá ${interaction.user}, descreva o problema com o máximo de detalhe possível.\nA equipa será notificada.`
          ),
      ],
      components: closeTicketRow(),
    });
    await interaction.editReply({
      embeds: [successEmbed("Ticket criado", `${ticket}`)],
    });
    return true;
  }

  if (interaction.isButton() && (interaction.customId === "panel:ticket-close" || interaction.customId === "ticket:close")) {
    const ch = interaction.channel;
    if (!ch?.isTextBased()) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Canal inválido", "")] });
      return true;
    }
    const s = ctx.getStorage();
    const catId = ctx.getConfig().ticketCategoryId || s.ticketCategoryId;
    const isTicket = ch.name?.startsWith("ticket-") && ch.parentId && ch.parentId === catId;
    if (!isTicket) {
      await interaction.reply({
        ephemeral: true,
        embeds: [errorEmbed("Não é um ticket", "Use isto dentro de um canal de ticket.")],
      });
      return true;
    }
    const member = interaction.member;
    const canClose = ch.name === `ticket-${interaction.user.id}` || isStaff(member, ctx.getConfig());
    if (!canClose) {
      await interaction.reply({
        ephemeral: true,
        embeds: [errorEmbed("Permissão", "Só o autor do ticket ou staff pode fechar.")],
      });
      return true;
    }
    await interaction.reply({
      ephemeral: true,
      embeds: [successEmbed("A fechar…", "O canal será eliminado em instantes.")],
    });
    await ch.delete("Ticket fechado pelo painel").catch(() => {});
    return true;
  }

  return false;
}
