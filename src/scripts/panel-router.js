import { EmbedBuilder } from "discord.js";
import {
  buildMainPanelRows,
  serverRows,
  moderationRows,
  communityRows,
  ticketRows,
  mtaRows,
  toolsRows,
} from "../panel/ui.js";
import { errorEmbed } from "../util/embeds.js";
import { assertStaff } from "../util/permissions.js";

export const name = "panel-router";

export async function onInteraction(interaction, ctx) {
  if (!interaction.isStringSelectMenu() || interaction.customId !== "panel:section") {
    return false;
  }

  const config = ctx.getConfig();
  const storage = ctx.getStorage();
  const value = interaction.values[0];

  if (value === "info") {
    await interaction.reply({
      ephemeral: true,
      embeds: [
        new EmbedBuilder()
          .setColor(0x5865f2)
          .setTitle("Informação do painel")
          .setDescription(
            [
              "**Módulos** (em `src/scripts/`): router, servidor, moderação, tickets, MTA, comunidade, ferramentas.",
              "",
              `**Guild:** ${interaction.guild?.name ?? "—"}`,
              `**Canais:** painel \`${storage.panelChannelId ?? "—"}\`, logs \`${storage.logChannelId ?? "—"}\``,
              `**Ponte MTA:** porta \`${config.bridgePort}\` · header \`x-bridge-secret\``,
              "",
              "**Acesso:** `BOT_OWNER_IDS` · Staff = Administrador, cargo Staff ou dono.",
            ].join("\n")
          ),
      ],
    });
    return true;
  }

  if (value === "server") {
    const check = assertStaff(interaction, config);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    await interaction.reply({
      ephemeral: true,
      content: "**Servidor & estrutura** — ações abaixo alteram o Discord.",
      components: [...serverRows()],
    });
    return true;
  }

  if (value === "mod") {
    const check = assertStaff(interaction, config);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    await interaction.reply({
      ephemeral: true,
      content: "**Moderação** — escolha um utilizador ou limpe mensagens neste canal.",
      components: [...moderationRows()],
    });
    return true;
  }

  if (value === "community") {
    await interaction.reply({
      ephemeral: true,
      content:
        "**Comunidade** — votações e sorteios (staff); encorajamento usa texto guardado em `data/storage.json` (definir na primeira utilização).",
      components: [...communityRows()],
    });
    return true;
  }

  if (value === "tickets") {
    await interaction.reply({
      ephemeral: true,
      content: "**Tickets** — abra um canal privado com a equipa.",
      components: [...ticketRows()],
    });
    return true;
  }

  if (value === "mta") {
    const check = assertStaff(interaction, config);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    await interaction.reply({
      ephemeral: true,
      content: "**MTA** — testes e documentação da ponte HTTP.",
      components: [...mtaRows()],
    });
    return true;
  }

  if (value === "tools") {
    const check = assertStaff(interaction, config);
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    await interaction.reply({
      ephemeral: true,
      content: "**Ferramentas staff** — estatísticas, auditoria, convites e construtor de embed.",
      components: [...toolsRows()],
    });
    return true;
  }

  return false;
}
