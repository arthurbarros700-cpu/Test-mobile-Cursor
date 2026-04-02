import {
  ChannelType,
  PermissionFlagsBits,
  EmbedBuilder,
  Colors,
} from "discord.js";
import { runGuildSetup } from "../guild/setup.js";
import { saveStorage } from "../storage.js";
import {
  buildMainPanelRows,
  serverRows,
  moderationRows,
  moderationUserRows,
  ticketRows,
  mtaRows,
  closeTicketRow,
} from "../panel/ui.js";
import { panelEmbed, errorEmbed, successEmbed, warnEmbed, logEmbed } from "../util/embeds.js";
import { assertStaff, isStaff } from "../util/permissions.js";

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

async function sendLog(guild, config, storage, lines) {
  const id = config.logChannelId || storage.logChannelId;
  const ch = id ? guild.channels.cache.get(id) : null;
  if (ch?.isTextBased()) {
    await ch.send({ embeds: [logEmbed("Painel", lines)] });
  }
}

export function registerPanelHandlers(client, getConfig, getStorage, refreshStorage) {
  client.on("interactionCreate", async (interaction) => {
    try {
      const config = getConfig();
      if (interaction.isStringSelectMenu() && interaction.customId === "panel:section") {
        const value = interaction.values[0];
        if (value === "info") {
          const storage = getStorage();
          await interaction.reply({
            ephemeral: true,
            embeds: [
              new EmbedBuilder()
                .setColor(0x5865f2)
                .setTitle("Informação do painel")
                .setDescription(
                  [
                    "**Sem comandos de texto** — tudo passa por botões e menus.",
                    "",
                    `**Guild:** ${interaction.guild?.name ?? "—"}`,
                    `**Canais registados:** painel \`${storage.panelChannelId ?? "—"}\`, logs \`${storage.logChannelId ?? "—"}\``,
                    `**Ponte MTA:** porta \`${config.bridgePort}\` (header \`x-bridge-secret\`)`,
                    "",
                    "Donos configurados via `BOT_OWNER_IDS`. Staff = Admin, cargo Staff ou dono.",
                  ].join("\n")
                ),
            ],
          });
          return;
        }

        if (value === "server") {
          const check = assertStaff(interaction, config);
          if (!check.ok) {
            await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
            return;
          }
          await interaction.reply({
            ephemeral: true,
            content: "**Servidor & estrutura** — ações abaixo alteram o Discord.",
            components: [...serverRows()],
          });
          return;
        }

        if (value === "mod") {
          const check = assertStaff(interaction, config);
          if (!check.ok) {
            await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
            return;
          }
          await interaction.reply({
            ephemeral: true,
            content: "**Moderação** — escolha um utilizador ou limpe mensagens neste canal.",
            components: [...moderationRows()],
          });
          return;
        }

        if (value === "tickets") {
          await interaction.reply({
            ephemeral: true,
            content: "**Tickets** — abra um canal privado com a equipa.",
            components: [...ticketRows()],
          });
          return;
        }

        if (value === "mta") {
          const check = assertStaff(interaction, config);
          if (!check.ok) {
            await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
            return;
          }
          await interaction.reply({
            ephemeral: true,
            content: "**MTA** — testes e documentação da ponte HTTP.",
            components: [...mtaRows()],
          });
          return;
        }
      }

      if (interaction.isButton()) {
        const cfg = getConfig();
        const storage = getStorage();

        if (interaction.customId === "panel:setup") {
          const check = assertStaff(interaction, cfg);
          if (!check.ok) {
            await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
            return;
          }
          await interaction.deferReply({ ephemeral: true });
          const result = await runGuildSetup(interaction.guild);
          await saveStorage({
            logChannelId: result.logChannel?.id ?? storage.logChannelId,
            welcomeChannelId: result.welcomeChannel?.id ?? storage.welcomeChannelId,
            announceChannelId: result.announceChannel?.id ?? storage.announceChannelId,
            ticketCategoryId: result.ticketCategory?.id ?? storage.ticketCategoryId,
            staffRoleId: result.staffRole?.id ?? storage.staffRoleId,
            setupDoneAt: new Date().toISOString(),
          });
          await refreshStorage();
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
          await sendLog(
            interaction.guild,
            cfg,
            getStorage(),
            `Setup executado por ${interaction.user.tag}`
          );
          return;
        }

        if (interaction.customId === "panel:rules") {
          const check = assertStaff(interaction, cfg);
          if (!check.ok) {
            await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
            return;
          }
          const rulesCh =
            interaction.guild.channels.cache.find((c) => c.name === "regras" && c.isTextBased()) ??
            interaction.channel;
          if (!rulesCh?.isTextBased()) {
            await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Canal inválido", "Não foi possível encontrar #regras.")] });
            return;
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
          return;
        }

        if (interaction.customId === "panel:perms") {
          const check = assertStaff(interaction, cfg);
          if (!check.ok) {
            await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
            return;
          }
          await interaction.deferReply({ ephemeral: true });
          await runGuildSetup(interaction.guild);
          await interaction.editReply({
            embeds: [successEmbed("Permissões", "Estrutura e permissões base foram reaplicadas.")],
          });
          return;
        }

        if (interaction.customId === "panel:purge") {
          const check = assertStaff(interaction, cfg);
          if (!check.ok) {
            await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
            return;
          }
          const ch = interaction.channel;
          if (!ch?.isTextBased() || ch.isDMBased()) {
            await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Canal", "Use isto num canal de texto do servidor.")] });
            return;
          }
          await interaction.deferReply({ ephemeral: true });
          const fetched = await ch.messages.fetch({ limit: 50 });
          const deletable = fetched.filter((m) => !m.pinned);
          const twoWeeks = Date.now() - 14 * 24 * 60 * 60 * 1000;
          const recent = deletable.filter((m) => m.createdTimestamp > twoWeeks);
          if (recent.size === 0) {
            await interaction.editReply({
              embeds: [warnEmbed("Limpeza", "Nenhuma mensagem recente para apagar (limite 14 dias da API).")],
            });
            return;
          }
          await ch.bulkDelete(recent, true);
          await interaction.editReply({
            embeds: [successEmbed("Limpeza", `${recent.size} mensagens removidas em ${ch}.`)],
          });
          return;
        }

        if (interaction.customId === "panel:ticket-open") {
          await interaction.deferReply({ ephemeral: true });
          const s = getStorage();
          const catId = cfg.ticketCategoryId || s.ticketCategoryId;
          const category = catId ? interaction.guild.channels.cache.get(catId) : null;
          if (!category || category.type !== ChannelType.GuildCategory) {
            await interaction.editReply({
              embeds: [
                errorEmbed(
                  "Tickets indisponíveis",
                  "Execute **Setup completo do servidor** no painel (secção Servidor) para criar a categoria de tickets."
                ),
              ],
            });
            return;
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
            return;
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
          return;
        }

        if (interaction.customId === "panel:ticket-close" || interaction.customId === "ticket:close") {
          const ch = interaction.channel;
          if (!ch?.isTextBased()) {
            await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Canal inválido", "")] });
            return;
          }
          const s = getStorage();
          const catId = getConfig().ticketCategoryId || s.ticketCategoryId;
          const isTicket =
            ch.name?.startsWith("ticket-") && ch.parentId && ch.parentId === catId;
          if (!isTicket) {
            await interaction.reply({
              ephemeral: true,
              embeds: [errorEmbed("Não é um ticket", "Este comando só funciona dentro de um canal de ticket.")],
            });
            return;
          }
          const member = interaction.member;
          const canClose =
            ch.name === `ticket-${interaction.user.id}` || isStaff(member, getConfig());
          if (!canClose) {
            await interaction.reply({
              ephemeral: true,
              embeds: [errorEmbed("Permissão", "Só o autor do ticket ou staff pode fechar.")],
            });
            return;
          }
          await interaction.reply({ ephemeral: true, embeds: [successEmbed("A fechar…", "O canal será eliminado em instantes.")] });
          await ch.delete("Ticket fechado pelo painel").catch(() => {});
          return;
        }

        if (interaction.customId === "panel:mta-test") {
          const check = assertStaff(interaction, cfg);
          if (!check.ok) {
            await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
            return;
          }
          const s = getStorage();
          const id = cfg.announceChannelId || s.announceChannelId;
          const ann = id ? interaction.guild.channels.cache.get(id) : null;
          if (!ann?.isTextBased()) {
            await interaction.reply({
              ephemeral: true,
              embeds: [errorEmbed("Canal", "Defina o canal de anúncios com o setup ou variáveis de ambiente.")],
            });
            return;
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
          return;
        }

        if (interaction.customId === "panel:mta-help") {
          await interaction.reply({
            ephemeral: true,
            embeds: [
              new EmbedBuilder()
                .setColor(0x5865f2)
                .setTitle("Ligar o MTA ao Discord")
                .setDescription(
                  [
                    "**URL (no resource Lua):**",
                    `\`http://SEU_IP:${getConfig().bridgePort}/mta/announce\``,
                    "",
                    "**Header obrigatório:**",
                    "`x-bridge-secret: <BRIDGE_SECRET>`",
                    "",
                    "**Corpo JSON (embed):**",
                    "`{ \"title\": \"Evento\", \"description\": \"Texto…\" }`",
                    "",
                    "**Corpo JSON (texto simples):**",
                    "`{ \"content\": \"Mensagem curta\" }`",
                    "",
                    "**Staff (log interno):**",
                    "`POST /mta/staff` com `{ \"message\": \"…\" }`",
                  ].join("\n")
                ),
            ],
          });
          return;
        }

        const modMatch = interaction.customId.match(
          /^panel:(kick|to1|to24|untimeout|ban):(\d+)$/
        );
        if (modMatch) {
          const check = assertStaff(interaction, getConfig());
          if (!check.ok) {
            await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
            return;
          }
          const [, action, userId] = modMatch;
          const target = await interaction.guild.members.fetch(userId).catch(() => null);
          if (!target) {
            await interaction.reply({
              ephemeral: true,
              embeds: [errorEmbed("Utilizador", "Membro não encontrado no servidor.")],
            });
            return;
          }
          if (target.id === interaction.guild.ownerId) {
            await interaction.reply({
              ephemeral: true,
              embeds: [errorEmbed("Protegido", "Não é possível moderar o dono do servidor.")],
            });
            return;
          }
          const me = interaction.guild.members.me;
          if (target.roles.highest.position >= me.roles.highest.position) {
            await interaction.reply({
              ephemeral: true,
              embeds: [errorEmbed("Hierarquia", "O bot não pode moderar este membro (cargo acima).")],
            });
            return;
          }

          await interaction.deferReply({ ephemeral: true });
          try {
            if (action === "kick") {
              await target.kick(`Painel — ${interaction.user.tag}`);
              await interaction.editReply({ embeds: [successEmbed("Expulso", `${target.user.tag} foi expulso.`)] });
            } else if (action === "ban") {
              await target.ban({ deleteMessageSeconds: 60 * 60 * 24, reason: `Painel — ${interaction.user.tag}` });
              await interaction.editReply({ embeds: [successEmbed("Banido", `${target.user.tag} foi banido.`)] });
            } else if (action === "to1") {
              await target.timeout(60 * 60 * 1000, `Painel — ${interaction.user.tag}`);
              await interaction.editReply({ embeds: [successEmbed("Timeout", "1 hora aplicada.")] });
            } else if (action === "to24") {
              await target.timeout(24 * 60 * 60 * 1000, `Painel — ${interaction.user.tag}`);
              await interaction.editReply({ embeds: [successEmbed("Timeout", "24 horas aplicadas.")] });
            } else if (action === "untimeout") {
              await target.timeout(null, `Painel — ${interaction.user.tag}`);
              await interaction.editReply({ embeds: [successEmbed("Timeout", "Removido.")] });
            }
          } catch (e) {
            await interaction.editReply({
              embeds: [errorEmbed("Erro", String(e.message || e))],
            });
            return;
          }
          await sendLog(
            interaction.guild,
            getConfig(),
            getStorage(),
            `**${action}** em ${target.user.tag} por ${interaction.user.tag}`
          );
          return;
        }
      }

      if (interaction.isUserSelectMenu() && interaction.customId === "panel:mod-user") {
        const check = assertStaff(interaction, getConfig());
        if (!check.ok) {
          await interaction.reply({ ephemeral: true, embeds: [errorEmbed("Acesso negado", check.message)] });
          return;
        }
        const userId = interaction.values[0];
        await interaction.reply({
          ephemeral: true,
          content: `Ações para <@${userId}>:`,
          components: moderationUserRows(userId),
        });
        return;
      }
    } catch (err) {
      console.error("interaction error", err);
      if (interaction.isRepliable() && !interaction.replied && !interaction.deferred) {
        await interaction.reply({
          ephemeral: true,
          embeds: [errorEmbed("Erro interno", "Ocorreu um erro ao processar o painel.")],
        });
      }
    }
  });
}
