import {
  EmbedBuilder,
  ActionRowBuilder,
  ButtonBuilder,
  ButtonStyle,
  ModalBuilder,
  TextInputBuilder,
  TextInputStyle,
} from "discord.js";
import { assertStaff, isStaff } from "../util/permissions.js";
import { errorEmbed, successEmbed, warnEmbed } from "../util/embeds.js";
import { saveStorage } from "../storage.js";
import { channelByName } from "./_shared/channels.js";

export const name = "community";

const giveaways = new Map();

function randomWinner(entries) {
  const arr = [...entries];
  if (arr.length === 0) return null;
  return arr[Math.floor(Math.random() * arr.length)];
}

export async function onInteraction(interaction, ctx) {
  const cfg = ctx.getConfig();

  if (interaction.isButton() && interaction.customId === "panel:poll") {
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    const modal = new ModalBuilder()
      .setCustomId("comm:poll")
      .setTitle("Votação rápida")
      .addComponents(
        new ActionRowBuilder().addComponents(
          new TextInputBuilder()
            .setCustomId("poll_title")
            .setLabel("Título da votação")
            .setStyle(TextInputStyle.Short)
            .setRequired(true)
            .setMaxLength(200)
        ),
        new ActionRowBuilder().addComponents(
          new TextInputBuilder()
            .setCustomId("poll_desc")
            .setLabel("Descrição (opcional)")
            .setStyle(TextInputStyle.Paragraph)
            .setRequired(false)
            .setMaxLength(1500)
        )
      );
    await interaction.showModal(modal);
    return true;
  }

  if (interaction.isModalSubmit() && interaction.customId === "comm:poll") {
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    const title = interaction.fields.getTextInputValue("poll_title");
    const desc = interaction.fields.getTextInputValue("poll_desc") || "Reaja com 👍 ou 👎 (👀 = neutro).";
    const ch = interaction.channel;
    if (!ch?.isTextBased() || ch.isDMBased()) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Canal", "Abra o painel num canal de texto.")], });
      return true;
    }
    const msg = await ch.send({
      embeds: [
        new EmbedBuilder()
          .setColor(0x5865f2)
          .setTitle(title.slice(0, 256))
          .setDescription(desc.slice(0, 4096))
          .setFooter({ text: `Criada por ${interaction.user.tag}` })
          .setTimestamp(),
      ],
    });
    await msg.react("👍").catch(() => {});
    await msg.react("👎").catch(() => {});
    await msg.react("👀").catch(() => {});
    await interaction.reply({
      ephemeral: true,
      embeds: [successEmbed("Votação publicada", `${msg.url}`)],
    });
    return true;
  }

  if (interaction.isButton() && interaction.customId === "panel:giveaway") {
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    const modal = new ModalBuilder()
      .setCustomId("comm:gw")
      .setTitle("Novo sorteio")
      .addComponents(
        new ActionRowBuilder().addComponents(
          new TextInputBuilder()
            .setCustomId("gw_prize")
            .setLabel("Prémio / título")
            .setStyle(TextInputStyle.Short)
            .setRequired(true)
            .setMaxLength(200)
        ),
        new ActionRowBuilder().addComponents(
          new TextInputBuilder()
            .setCustomId("gw_hours")
            .setLabel("Duração (horas, ex: 24)")
            .setStyle(TextInputStyle.Short)
            .setRequired(true)
            .setMaxLength(4)
        )
      );
    await interaction.showModal(modal);
    return true;
  }

  if (interaction.isModalSubmit() && interaction.customId === "comm:gw") {
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    const prize = interaction.fields.getTextInputValue("gw_prize");
    const hoursRaw = interaction.fields.getTextInputValue("gw_hours").replace(",", ".");
    const hours = Math.min(168, Math.max(0.1, parseFloat(hoursRaw) || 1));
    const ch = interaction.channel;
    if (!ch?.isTextBased() || ch.isDMBased()) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Canal", "Use um canal de texto.")], });
      return true;
    }
    const gwId = `${interaction.id}`;
    const endsAt = Date.now() + hours * 60 * 60 * 1000;
    const row = new ActionRowBuilder().addComponents(
      new ButtonBuilder()
        .setCustomId(`gw:join:${gwId}`)
        .setLabel("Participar")
        .setStyle(ButtonStyle.Success)
    );
    const msg = await ch.send({
      embeds: [
        new EmbedBuilder()
          .setColor(0xf0b232)
          .setTitle("Sorteio")
          .setDescription(
            [
              `**Prémio:** ${prize}`,
              "",
              `Termina <t:${Math.floor(endsAt / 1000)}:R>`,
              "",
              "Clique em **Participar** para entrar.",
            ].join("\n")
          )
          .setFooter({ text: `Organizado por ${interaction.user.tag}` }),
      ],
      components: [row],
    });
    giveaways.set(gwId, {
      messageId: msg.id,
      channelId: ch.id,
      guildId: interaction.guildId,
      endsAt,
      entries: new Set(),
      hostId: interaction.user.id,
      prize,
    });
    await interaction.reply({
      ephemeral: true,
      embeds: [successEmbed("Sorteio criado", `${msg.url}`)],
    });

    setTimeout(async () => {
      const g = giveaways.get(gwId);
      if (!g) return;
      giveaways.delete(gwId);
      try {
        const guild = interaction.client.guilds.cache.get(g.guildId);
        const channel = guild?.channels.cache.get(g.channelId);
        if (!channel?.isTextBased()) return;
        const m = await channel.messages.fetch(g.messageId).catch(() => null);
        if (!m) return;
        const winnerId = randomWinner(g.entries);
        const winnerLine = winnerId ? `<@${winnerId}> ganhou **${g.prize}**!` : "Ninguém participou.";
        await m.edit({
          embeds: [
            new EmbedBuilder()
              .setColor(0x3ba55c)
              .setTitle("Sorteio encerrado")
              .setDescription(
                [
                  `**Prémio:** ${g.prize}`,
                  "",
                  winnerLine,
                  "",
                  `Participantes: **${g.entries.size}**`,
                ].join("\n")
              ),
          ],
          components: [
            new ActionRowBuilder().addComponents(
              new ButtonBuilder()
                .setCustomId(`gw:done:${gwId}`)
                .setLabel("Encerrado")
                .setStyle(ButtonStyle.Secondary)
                .setDisabled(true)
            ),
          ],
        });
      } catch (e) {
        console.error("[giveaway end]", e);
      }
    }, hours * 60 * 60 * 1000);

    return true;
  }

  if (interaction.isButton() && interaction.customId.startsWith("gw:join:")) {
    const gwId = interaction.customId.slice("gw:join:".length);
    const g = giveaways.get(gwId);
    if (!g || Date.now() > g.endsAt) {
      await interaction.reply({
        ephemeral: true,
        embeds: [warnEmbed("Sorteio", "Este sorteio já terminou ou não existe.")],
      });
      return true;
    }
    g.entries.add(interaction.user.id);
    await interaction.reply({
      ephemeral: true,
      embeds: [successEmbed("Inscrição", "Está na lista de participantes.")],
    });
    return true;
  }

  if (interaction.isButton() && interaction.customId === "panel:encourage") {
    const s = ctx.getStorage();
    if (!s.encourageMessage) {
      if (!isStaff(interaction.member, cfg)) {
        await interaction.reply({
          ephemeral: true,
          embeds: [warnEmbed("Mensagem", "A equipa ainda não definiu o texto de encorajamento.")],
        });
        return true;
      }
      const modal = new ModalBuilder()
        .setCustomId("comm:enc")
        .setTitle("Definir mensagem de encorajamento")
        .addComponents(
          new ActionRowBuilder().addComponents(
            new TextInputBuilder()
              .setCustomId("enc_text")
              .setLabel("Texto (markdown permitido)")
              .setStyle(TextInputStyle.Paragraph)
              .setRequired(true)
              .setMaxLength(1800)
          )
        );
      await interaction.showModal(modal);
      return true;
    }
    const target = channelByName(interaction.guild, "geral") ?? interaction.channel;
    if (!target?.isTextBased() || target.isDMBased()) {
      await interaction.reply({
        ephemeral: true,
        embeds: [errorEmbed("Canal", "Não foi encontrado #geral nem canal válido.")],
      });
      return true;
    }
    await target.send({
      embeds: [
        new EmbedBuilder()
          .setColor(0xeb459e)
          .setTitle("Mensagem da comunidade")
          .setDescription(s.encourageMessage.slice(0, 4096))
          .setFooter({ text: `Partilhado por ${interaction.user.tag}` }),
      ],
    });
    await interaction.reply({
      ephemeral: true,
      embeds: [successEmbed("Enviado", `Publicado em ${target}.`)],
    });
    return true;
  }

  if (interaction.isModalSubmit() && interaction.customId === "comm:enc") {
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    const text = interaction.fields.getTextInputValue("enc_text");
    await saveStorage({ encourageMessage: text });
    await ctx.refreshStorage();
    await interaction.reply({
      ephemeral: true,
      embeds: [successEmbed("Guardado", "A mensagem de encorajamento foi guardada. Pode voltar a clicar no botão para publicar em #geral.")],
    });
    return true;
  }

  return false;
}
