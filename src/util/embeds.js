import { EmbedBuilder } from "discord.js";

const ACCENT = 0x5865f2;
const OK = 0x3ba55c;
const WARN = 0xf0b232;
const ERR = 0xed4245;

export function panelEmbed() {
  return new EmbedBuilder()
    .setColor(ACCENT)
    .setTitle("Painel de controlo do servidor")
    .setDescription(
      [
        "Arquitetura **modular**: servidor, comunidade, MTA, ferramentas e tickets em módulos separados.",
        "",
        "Inclui **servidor**, **moderação**, **tickets**, **MTA**, **comunidade** (votações, sorteios) e **ferramentas staff** (estatísticas, auditoria, convites, embeds).",
        "",
        "Apenas **staff** ou **donos** usam funções administrativas; membros podem votar, participar em sorteios e abrir tickets.",
      ].join("\n")
    )
    .addFields(
      {
        name: "Servidor",
        value: "Setup, regras, permissões.",
        inline: true,
      },
      {
        name: "Moderação",
        value: "Expulsões, timeouts, limpeza.",
        inline: true,
      },
      {
        name: "Comunidade",
        value: "Votações, sorteios, mensagens motivacionais.",
        inline: true,
      },
      {
        name: "MTA",
        value: "Ponte HTTP e testes.",
        inline: true,
      },
      {
        name: "Ferramentas",
        value: "Stats, auditoria, convites, cargos, embeds.",
        inline: true,
      },
      {
        name: "Tickets",
        value: "Suporte privado.",
        inline: true,
      }
    )
    .setFooter({ text: "Sem comandos de texto — apenas componentes interativos." })
    .setTimestamp();
}

export function successEmbed(title, description) {
  return new EmbedBuilder().setColor(OK).setTitle(title).setDescription(description);
}

export function warnEmbed(title, description) {
  return new EmbedBuilder().setColor(WARN).setTitle(title).setDescription(description);
}

export function errorEmbed(title, description) {
  return new EmbedBuilder().setColor(ERR).setTitle(title).setDescription(description);
}

export function logEmbed(action, details) {
  return new EmbedBuilder()
    .setColor(ACCENT)
    .setTitle(`Registo: ${action}`)
    .setDescription(details)
    .setTimestamp();
}
