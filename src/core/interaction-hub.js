/**
 * Orquestra interações: cada módulo em scripts/ devolve true se tratou o evento.
 */
export function registerInteractionHub(client, ctx, modules) {
  client.on("interactionCreate", async (interaction) => {
    try {
      for (const mod of modules) {
        const handled = await mod.onInteraction?.(interaction, ctx);
        if (handled) return;
      }
    } catch (err) {
      console.error("[interaction]", err);
      const { errorEmbed } = await import("../util/embeds.js");
      if (interaction.isRepliable() && !interaction.replied && !interaction.deferred) {
        await interaction.reply({
          ephemeral: true,
          embeds: [errorEmbed("Erro interno", "Ocorreu um erro ao processar o painel.")],
        });
      }
    }
  });
}
