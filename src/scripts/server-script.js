import { EmbedBuilder, Colors } from "discord.js";
import { runGuildSetup } from "../guild/setup.js";
import { saveStorage } from "../storage.js";
import { errorEmbed, successEmbed } from "../util/embeds.js";
import { assertStaff } from "../util/permissions.js";
import { sendStaffLog } from "../util/log.js";

const RULES_TEXT = [
  "# Regras do servidor",
  "",
  "1. **Respeito** — sem insultos, discriminação ou assédio.",
  "2. **Conteúdo** — sem NSFW, gore ou links ilegais.",
  "3. **Spam** — evite flood, caps excessivo e menções em massa.",
  "4. **MTA** — sem cheats, exploits ou venda de contas; siga as regras do jogo.",
  "5. **Staff** — decisões da equipa são finais; use tickets para apelar.",
  "",
  "_As regras podem ser atualizadas; mantenha-se atento a #anúncios._",
].join("\n");

export const name = "server";

export async function onInteraction(interaction, ctx) {
  const cfg = ctx.getConfig();

  if (interaction.isButton() && interaction.customId === "panel:setup") {
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    await interaction.deferReply({ ephemeral: true });
    const storage = ctx.getStorage();
    const result = await runGuildSetup(interaction.guild);
    await saveStorage({
      logChannelId: result.logChannel?.id ?? storage.logChannelId,
      welcomeChannelId: result.welcomeChannel?.id ?? storage.welcomeChannelId,
      announceChannelId: result.announceChannel?.id ?? storage.announceChannelId,
      ticketCategoryId: result.ticketCategory?.id ?? storage.ticketCategoryId,
      staffRoleId: result.staffRole?.id ?? storage.staffRoleId,
      setupDoneAt: new Date().toISOString(),
    });
    await ctx.refreshStorage();
    await interaction.editReply({
      embeds: [
        successEmbed(
          "Setup concluído",
          [
            "Categorias, canais e cargos base foram criados ou sincronizados.",
            result.ticketHub ? `\n**Suporte:** ${result.ticketHub}` : "",
            result.announceChannel ? `\n**Anúncios:** ${result.announceChannel}` : "",
          ].join("")
        ),
      ],
    });
    await sendStaffLog(interaction.guild, ctx.getConfig(), ctx.getStorage(), `Setup executado por ${interaction.user.tag}`);
    return true;
  }

  if (interaction.isButton() && interaction.customId === "panel:rules") {
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    const rulesCh =
      interaction.guild.channels.cache.find((c) => c.name === "regras" && c.isTextBased()) ??
      interaction.channel;
    if (!rulesCh?.isTextBased()) {
      await interaction.reply({
        ephemeral: true,
        embeds: [errorEmbed("Canal inválido", "Não foi possível encontrar #regras.")],
      });
      return true;
    }
    await rulesCh.send({
      embeds: [
        new EmbedBuilder()
          .setColor(Colors.Blurple)
          .setTitle("Regras da comunidade")
          .setDescription(RULES_TEXT.slice(0, 4096)),
      ],
    });
    await interaction.reply({
      ephemeral: true,
      embeds: [successEmbed("Publicado", `Mensagem de regras enviada para ${rulesCh}.`)],
    });
    return true;
  }

  if (interaction.isButton() && interaction.customId === "panel:perms") {
    const check = assertStaff(interaction, cfg);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    await interaction.deferReply({ ephemeral: true });
    await runGuildSetup(interaction.guild);
    await interaction.editReply({
      embeds: [successEmbed("Permissões", "Estrutura e permissões base foram reaplicadas.")],
    });
    return true;
  }

  return false;
}
