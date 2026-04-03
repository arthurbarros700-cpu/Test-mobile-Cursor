import { EmbedBuilder } from "discord.js";
import { errorEmbed, successEmbed } from "../util/embeds.js";
import { assertStaff } from "../util/permissions.js";

export const name = "mta";

export async function onInteraction(interaction, ctx) {
  if (interaction.isButton() && interaction.customId === "panel:mta-test") {
    const check = assertStaff(interaction, ctx.getConfig());
    if (!check.ok) {
      await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
      return true;
    }
    const cfg = ctx.getConfig();
    const s = ctx.getStorage();
    const id = cfg.announceChannelId || s.announceChannelId;
    const ann = id ? interaction.guild.channels.cache.get(id) : null;
    if (!ann?.isTextBased()) {
      await interaction.reply({
        ephemeral: true,
        embeds: [errorEmbed("Canal", "Defina o canal de anúncios com o setup ou variáveis de ambiente.")],
      });
      return true;
    }
    await ann.send({
      embeds: [
        new EmbedBuilder()
          .setColor(0x3ba55c)
          .setTitle("Teste da ponte MTA")
          .setDescription(
            "Se vê esta mensagem, o canal de anúncios está correto. O servidor de jogo pode enviar embeds via HTTP."
          )
          .setFooter({ text: `Pedido por ${interaction.user.tag}` })
          .setTimestamp(),
      ],
    });
    await interaction.reply({
      ephemeral: true,
      embeds: [successEmbed("Enviado", `Anúncio de teste publicado em ${ann}.`)],
    });
    return true;
  }

  if (interaction.isButton() && interaction.customId === "panel:mta-help") {
    await interaction.reply({
      ephemeral: true,
      embeds: [
        new EmbedBuilder()
          .setColor(0x5865f2)
          .setTitle("Ligar o MTA ao Discord")
          .setDescription(
            [
              "**URL (resource Lua):**",
              `\`http://SEU_IP:${ctx.getConfig().bridgePort}/mta/announce\``,
              "",
              "**Header:** `x-bridge-secret: <BRIDGE_SECRET>`",
              "",
              "**JSON embed:** `{ \"title\": \"…\", \"description\": \"…\" }`",
              "**JSON texto:** `{ \"content\": \"…\" }`",
              "**Staff:** `POST /mta/staff` · `{ \"message\": \"…\" }`",
            ].join("\n")
          ),
      ],
    });
    return true;
  }

  return false;
}
