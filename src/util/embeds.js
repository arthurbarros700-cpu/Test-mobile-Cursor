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
        "Este painel concentra **moderação**, **estrutura do Discord**, **tickets** e a **ponte com o MTA**.",
        "",
        "Escolha uma secção no menu abaixo. Apenas **staff** ou **donos** podem usar funções administrativas.",
      ].join("\n")
    )
    .addFields(
      {
        name: "Servidor",
        value: "Canais, categorias, cargos e sincronização automática.",
        inline: true,
      },
      {
        name: "Moderação",
        value: "Expulsões, timeouts, limpeza de mensagens e registos.",
        inline: true,
      },
      {
        name: "MTA",
        value: "Anúncios e eventos enviados do jogo para o Discord.",
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
