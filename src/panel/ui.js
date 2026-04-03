import {
  ActionRowBuilder,
  ButtonBuilder,
  ButtonStyle,
  StringSelectMenuBuilder,
  UserSelectMenuBuilder,
} from "discord.js";

export function buildMainPanelRows() {
  const select = new StringSelectMenuBuilder()
    .setCustomId("panel:section")
    .setPlaceholder("Escolha uma secção do painel…")
    .addOptions(
      {
        label: "Servidor & estrutura",
        value: "server",
        description: "Canais, categorias, cargos e modelos",
        emoji: "🏛️",
      },
      {
        label: "Moderação",
        value: "mod",
        description: "Utilizadores, timeouts, limpeza",
        emoji: "🛡️",
      },
      {
        label: "Comunidade",
        value: "community",
        description: "Votações, sorteios, encorajamento",
        emoji: "🎉",
      },
      {
        label: "Tickets",
        value: "tickets",
        description: "Suporte privado para jogadores",
        emoji: "🎫",
      },
      {
        label: "MTA & anúncios",
        value: "mta",
        description: "Ponte jogo → Discord",
        emoji: "🎮",
      },
      {
        label: "Ferramentas staff",
        value: "tools",
        description: "Stats, auditoria, convites, embeds",
        emoji: "🔧",
      },
      {
        label: "Informação",
        value: "info",
        description: "Estado, permissões e ajuda",
        emoji: "ℹ️",
      }
    );

  return [new ActionRowBuilder().addComponents(select)];
}

export function serverRows() {
  return [
    new ActionRowBuilder().addComponents(
      new ButtonBuilder()
        .setCustomId("panel:setup")
        .setLabel("Setup completo do servidor")
        .setStyle(ButtonStyle.Primary),
      new ButtonBuilder()
        .setCustomId("panel:rules")
        .setLabel("Publicar modelo de regras")
        .setStyle(ButtonStyle.Secondary),
      new ButtonBuilder()
        .setCustomId("panel:perms")
        .setLabel("Reaplicar permissões base")
        .setStyle(ButtonStyle.Secondary)
    ),
  ];
}

export function moderationRows() {
  return [
    new ActionRowBuilder().addComponents(
      new UserSelectMenuBuilder()
        .setCustomId("panel:mod-user")
        .setPlaceholder("Selecione um utilizador…")
        .setMinValues(1)
        .setMaxValues(1)
    ),
    new ActionRowBuilder().addComponents(
      new ButtonBuilder()
        .setCustomId("panel:purge")
        .setLabel("Limpar mensagens (canal do painel)")
        .setStyle(ButtonStyle.Danger)
    ),
  ];
}

export function moderationUserRows(targetId) {
  return [
    new ActionRowBuilder().addComponents(
      new ButtonBuilder()
        .setCustomId(`panel:kick:${targetId}`)
        .setLabel("Expulsar")
        .setStyle(ButtonStyle.Danger),
      new ButtonBuilder()
        .setCustomId(`panel:to1:${targetId}`)
        .setLabel("Timeout 1h")
        .setStyle(ButtonStyle.Secondary),
      new ButtonBuilder()
        .setCustomId(`panel:to24:${targetId}`)
        .setLabel("Timeout 24h")
        .setStyle(ButtonStyle.Secondary),
      new ButtonBuilder()
        .setCustomId(`panel:untimeout:${targetId}`)
        .setLabel("Remover timeout")
        .setStyle(ButtonStyle.Success),
      new ButtonBuilder()
        .setCustomId(`panel:ban:${targetId}`)
        .setLabel("Banir")
        .setStyle(ButtonStyle.Danger)
    ),
  ];
}

export function communityRows() {
  return [
    new ActionRowBuilder().addComponents(
      new ButtonBuilder()
        .setCustomId("panel:poll")
        .setLabel("Votação rápida (👍👎)")
        .setStyle(ButtonStyle.Primary),
      new ButtonBuilder()
        .setCustomId("panel:giveaway")
        .setLabel("Sorteio (1 vencedor)")
        .setStyle(ButtonStyle.Primary),
      new ButtonBuilder()
        .setCustomId("panel:encourage")
        .setLabel("Mensagem de encorajamento")
        .setStyle(ButtonStyle.Secondary)
    ),
  ];
}

export function ticketRows() {
  return [
    new ActionRowBuilder().addComponents(
      new ButtonBuilder()
        .setCustomId("panel:ticket-open")
        .setLabel("Abrir ticket de suporte")
        .setStyle(ButtonStyle.Primary),
      new ButtonBuilder()
        .setCustomId("panel:ticket-close")
        .setLabel("Fechar este ticket")
        .setStyle(ButtonStyle.Danger)
    ),
  ];
}

export function mtaRows() {
  return [
    new ActionRowBuilder().addComponents(
      new ButtonBuilder()
        .setCustomId("panel:mta-test")
        .setLabel("Enviar anúncio de teste")
        .setStyle(ButtonStyle.Primary),
      new ButtonBuilder()
        .setCustomId("panel:mta-help")
        .setLabel("Como ligar o MTA")
        .setStyle(ButtonStyle.Secondary)
    ),
  ];
}

export function toolsRows() {
  return [
    new ActionRowBuilder().addComponents(
      new ButtonBuilder()
        .setCustomId("panel:stats")
        .setLabel("Estatísticas do servidor")
        .setStyle(ButtonStyle.Secondary),
      new ButtonBuilder()
        .setCustomId("panel:audit")
        .setLabel("Auditoria (últimas ações)")
        .setStyle(ButtonStyle.Secondary),
      new ButtonBuilder()
        .setCustomId("panel:invites")
        .setLabel("Top convites")
        .setStyle(ButtonStyle.Secondary)
    ),
    new ActionRowBuilder().addComponents(
      new ButtonBuilder()
        .setCustomId("panel:roles-export")
        .setLabel("Exportar lista de cargos")
        .setStyle(ButtonStyle.Secondary),
      new ButtonBuilder()
        .setCustomId("panel:embed-builder")
        .setLabel("Construtor de embed (3 passos)")
        .setStyle(ButtonStyle.Primary)
    ),
  ];
}

export function closeTicketRow() {
  return [
    new ActionRowBuilder().addComponents(
      new ButtonBuilder()
        .setCustomId("ticket:close")
        .setLabel("Fechar ticket")
        .setStyle(ButtonStyle.Danger)
    ),
  ];
}
