import {
  EmbedBuilder,
  ActionRowBuilder,
  ButtonBuilder,
  ButtonStyle,
  ModalBuilder,
  TextInputBuilder,
  TextInputStyle,
  ChannelType,
} from "discord.js";
import { assertStaff } from "../util/permissions.js";
import { errorEmbed, successEmbed } from "../util/embeds.js";
import { getRecentAuditLines, auditSummaryEmbed } from "../services/audit-log.js";

export const name = "tools";

/** @type {Map<string, { title?: string, color?: number, description?: string, footer?: string }>} */
const embedDrafts = new Map();

function parseHexColor(s) {
  if (!s || typeof s !== "string") return null;
  const t = s.trim().replace(/^#/, "");
  if (!/^[0-9a-fA-F]{6}$/.test(t)) return null;
  return parseInt(t, 16);
}

export async function onInteraction(interaction, ctx) {
  const cfg = ctx.getConfig();

  if (interaction.isButton() && interaction.customId === "panel:stats") {
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    await interaction.deferReply({ ephemeral: true });
    const g = interaction.guild;
    await g.members.fetch().catch(() => {});
    const text = g.channels.cache.filter((c) => c.isTextBased()).size;
    const voice = g.channels.cache.filter((c) => c.isVoiceBased()).size;
    const cats = g.channels.cache.filter((c) => c.type === ChannelType.GuildCategory).size;
    const embed = new EmbedBuilder()
      .setColor(0x5865f2)
      .setTitle(`Estatísticas · ${g.name}`)
      .addFields(
        { name: "Membros", value: `${g.memberCount}`, inline: true },
        { name: "Humanos / Bots", value: `${g.members.cache.filter((m) => !m.user.bot).size} / ${g.members.cache.filter((m) => m.user.bot).size}`, inline: true },
        { name: "Boost", value: `Nível ${g.premiumTier} · ${g.premiumSubscriptionCount} boosts`, inline: true },
        { name: "Canais texto", value: `${text}`, inline: true },
        { name: "Canais voz", value: `${voice}`, inline: true },
        { name: "Categorias", value: `${cats}`, inline: true },
        { name: "Cargos", value: `${g.roles.cache.size}`, inline: true },
        { name: "Criado em", value: `<t:${Math.floor(g.createdTimestamp / 1000)}:D>`, inline: true }
      )
      .setThumbnail(g.iconURL({ size: 128 }))
      .setTimestamp();
    await interaction.editReply({ embeds: [embed] });
    return true;
  }

  if (interaction.isButton() && interaction.customId === "panel:audit") {
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    const lines = getRecentAuditLines(interaction.guildId, 18);
    await interaction.reply({
      ephemeral: true,
      embeds: [auditSummaryEmbed(interaction.guild, lines)],
    });
    return true;
  }

  if (interaction.isButton() && interaction.customId === "panel:invites") {
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    await interaction.deferReply({ ephemeral: true });
    const invites = await interaction.guild.invites.fetch().catch(() => null);
    if (!invites?.size) {
      await interaction.editReply({
        embeds: [errorEmbed("Convites", "Não foi possível listar convites (permissão *Manage Guild* ou sem convites).")],
      });
      return true;
    }
    const sorted = [...invites.values()]
      .sort((a, b) => (b.uses ?? 0) - (a.uses ?? 0))
      .slice(0, 12);
    const lines = sorted.map(
      (inv, i) =>
        `${i + 1}. \`${inv.code}\` · **${inv.uses ?? 0}** usos · ${inv.inviter?.tag ?? "?"} · ${inv.channel?.name ?? "?"}`
    );
    await interaction.editReply({
      embeds: [
        new EmbedBuilder()
          .setColor(0x5865f2)
          .setTitle("Convites com mais usos")
          .setDescription(lines.join("\n").slice(0, 4000)),
      ],
    });
    return true;
  }

  if (interaction.isButton() && interaction.customId === "panel:roles-export") {
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    const roles = [...interaction.guild.roles.cache.values()]
      .filter((r) => r.id !== interaction.guild.id)
      .sort((a, b) => b.position - a.position)
      .map((r) => `${r.name} · ${r.id} · cor #${r.color.toString(16).padStart(6, "0")} · membros ${r.members.size}`);
    const chunk = roles.join("\n").slice(0, 3900);
    await interaction.reply({
      ephemeral: true,
      embeds: [
        new EmbedBuilder()
          .setColor(0x99aab5)
          .setTitle("Cargos (exportação)")
          .setDescription(chunk || "_Sem cargos._"),
      ],
    });
    return true;
  }

  if (interaction.isButton() && interaction.customId === "panel:embed-builder") {
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    embedDrafts.delete(interaction.user.id);
    const modal = new ModalBuilder()
      .setCustomId("tools:eb1")
      .setTitle("Embed — passo 1/3")
      .addComponents(
        new ActionRowBuilder().addComponents(
          new TextInputBuilder()
            .setCustomId("eb_title")
            .setLabel("Título")
            .setStyle(TextInputStyle.Short)
            .setRequired(true)
            .setMaxLength(256)
        ),
        new ActionRowBuilder().addComponents(
          new TextInputBuilder()
            .setCustomId("eb_color")
            .setLabel("Cor hex (opcional, ex: 5865f2)")
            .setStyle(TextInputStyle.Short)
            .setRequired(false)
            .setMaxLength(7)
        )
      );
    await interaction.showModal(modal);
    return true;
  }

  if (interaction.isModalSubmit() && interaction.customId === "tools:eb1") {
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    const title = interaction.fields.getTextInputValue("eb_title");
    const colorRaw = interaction.fields.getTextInputValue("eb_color");
    const color = parseHexColor(colorRaw) ?? 0x5865f2;
    embedDrafts.set(interaction.user.id, { title, color });
    await interaction.reply({
      ephemeral: true,
      content: "**Passo 2/3** — descrição do embed.",
      components: [
        new ActionRowBuilder().addComponents(
          new ButtonBuilder()
            .setCustomId(`tools:eb2:${interaction.user.id}`)
            .setLabel("Abrir passo 2 (descrição)")
            .setStyle(ButtonStyle.Primary)
        ),
      ],
    });
    return true;
  }

  if (interaction.isButton() && interaction.customId.startsWith("tools:eb2:")) {
    const uid = interaction.customId.slice("tools:eb2:".length);
    if (interaction.user.id !== uid) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Sessão", "Este fluxo pertence a outro utilizador.")] });
      return true;
    }
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    if (!embedDrafts.has(uid)) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Rascunho", "Recomece pelo painel (passo 1).")] });
      return true;
    }
    const modal = new ModalBuilder()
      .setCustomId("tools:eb2m")
      .setTitle("Embed — passo 2/3")
      .addComponents(
        new ActionRowBuilder().addComponents(
          new TextInputBuilder()
            .setCustomId("eb_desc")
            .setLabel("Descrição (markdown)")
            .setStyle(TextInputStyle.Paragraph)
            .setRequired(true)
            .setMaxLength(4000)
        )
      );
    await interaction.showModal(modal);
    return true;
  }

  if (interaction.isModalSubmit() && interaction.customId === "tools:eb2m") {
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    const d = embedDrafts.get(interaction.user.id);
    if (!d?.title) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Rascunho", "Recomece pelo passo 1.")] });
      return true;
    }
    d.description = interaction.fields.getTextInputValue("eb_desc");
    embedDrafts.set(interaction.user.id, d);
    await interaction.reply({
      ephemeral: true,
      content: "**Passo 3/3** — rodapé (opcional).",
      components: [
        new ActionRowBuilder().addComponents(
          new ButtonBuilder()
            .setCustomId(`tools:eb3:${interaction.user.id}`)
            .setLabel("Abrir passo 3 (rodapé)")
            .setStyle(ButtonStyle.Primary)
        ),
      ],
    });
    return true;
  }

  if (interaction.isButton() && interaction.customId.startsWith("tools:eb3:")) {
    const uid = interaction.customId.slice("tools:eb3:".length);
    if (interaction.user.id !== uid) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Sessão", "Este fluxo pertence a outro utilizador.")] });
      return true;
    }
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    const modal = new ModalBuilder()
      .setCustomId("tools:eb3m")
      .setTitle("Embed — passo 3/3")
      .addComponents(
        new ActionRowBuilder().addComponents(
          new TextInputBuilder()
            .setCustomId("eb_footer")
            .setLabel("Texto do rodapé (opcional)")
            .setStyle(TextInputStyle.Short)
            .setRequired(false)
            .setMaxLength(200)
        )
      );
    await interaction.showModal(modal);
    return true;
  }

  if (interaction.isModalSubmit() && interaction.customId === "tools:eb3m") {
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    const d = embedDrafts.get(interaction.user.id);
    if (!d?.title || !d.description) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Rascunho", "Complete os passos anteriores.")] });
      return true;
    }
    d.footer = interaction.fields.getTextInputValue("eb_footer") || undefined;
    embedDrafts.set(interaction.user.id, d);
    const preview = new EmbedBuilder()
      .setColor(d.color ?? 0x5865f2)
      .setTitle(d.title.slice(0, 256))
      .setDescription(d.description.slice(0, 4096));
    if (d.footer) preview.setFooter({ text: d.footer.slice(0, 2048) });
    preview.setTimestamp();
    await interaction.reply({
      ephemeral: true,
      content: "Pré-visualização:",
      embeds: [preview],
      components: [
        new ActionRowBuilder().addComponents(
          new ButtonBuilder()
            .setCustomId(`tools:ebpub:${interaction.user.id}`)
            .setLabel("Publicar neste canal")
            .setStyle(ButtonStyle.Success)
        ),
      ],
    });
    return true;
  }

  if (interaction.isButton() && interaction.customId.startsWith("tools:ebpub:")) {
    const uid = interaction.customId.slice("tools:ebpub:".length);
    if (interaction.user.id !== uid) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Sessão", "Este fluxo pertence a outro utilizador.")] });
      return true;
    }
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    const d = embedDrafts.get(interaction.user.id);
    if (!d?.title || !d.description) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Rascunho", "Rascunho expirado ou incompleto.")] });
      return true;
    }
    const ch = interaction.channel;
    if (!ch?.isTextBased() || ch.isDMBased()) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Canal", "Use um canal de texto do servidor.")] });
      return true;
    }
    const out = new EmbedBuilder()
      .setColor(d.color ?? 0x5865f2)
      .setTitle(d.title.slice(0, 256))
      .setDescription(d.description.slice(0, 4096));
    if (d.footer) out.setFooter({ text: d.footer.slice(0, 2048) });
    out.setTimestamp();
    await ch.send({ embeds: [out] });
    embedDrafts.delete(interaction.user.id);
    await interaction.reply({
      ephemeral: true,
      embeds: [successEmbed("Publicado", `Embed enviado para ${ch}.`)],
    });
    return true;
  }

  return false;
}
