import {
  ChannelType,
  PermissionFlagsBits,
  Colors,
} from "discord.js";

const ROLE_SPECS = [
  { key: "owner", name: "Dono", color: Colors.Red, hoist: true },
  { key: "admin", name: "Administrador", color: Colors.DarkRed, hoist: true },
  { key: "mod", name: "Moderador", color: Colors.Orange, hoist: true },
  { key: "staff", name: "Staff", color: Colors.Gold, hoist: true },
  { key: "mta", name: "Jogador MTA", color: Colors.Blurple, hoist: false },
  { key: "member", name: "Membro", color: Colors.Grey, hoist: false },
];

const CATEGORY_SPECS = [
  { name: "📌 INFORMAÇÃO", channels: ["anúncios", "regras", "links", "status-mta"] },
  { name: "💬 COMUNIDADE", channels: ["geral", "mídia", "sugestões"] },
  { name: "🎮 MTA", channels: ["chat-mta", "procurando-grupo", "bugs"] },
  { name: "🛡️ STAFF", channels: ["staff-chat", "staff-alertas"], staffOnly: true },
  { name: "🎫 TICKETS", channels: [], ticketHub: true },
];

function sortRolesFirst(guild) {
  const positions = new Map();
  let base = guild.roles.highest.position - 1;
  for (const spec of ROLE_SPECS) {
    positions.set(spec.key, base);
    base -= 1;
  }
  return positions;
}

async function ensureRole(guild, spec, position) {
  let role = guild.roles.cache.find((r) => r.name === spec.name);
  if (!role) {
    role = await guild.roles.create({
      name: spec.name,
      color: spec.color,
      hoist: spec.hoist,
      mentionable: spec.key === "staff",
      reason: "Setup automático do painel MTA/Discord",
    });
  } else {
    await role.edit({
      color: spec.color,
      hoist: spec.hoist,
      mentionable: spec.key === "staff",
      position,
      reason: "Sincronizar setup do painel",
    });
  }
  return role;
}

async function lockCategoryForEveryone(guild, category, allowView = false) {
  const everyone = guild.roles.everyone;
  await category.permissionOverwrites.edit(everyone, {
    ViewChannel: allowView,
    SendMessages: allowView,
    ReadMessageHistory: allowView,
  });
}

export async function runGuildSetup(guild) {
  const roleByKey = {};
  const positions = sortRolesFirst(guild);

  for (const spec of ROLE_SPECS) {
    const pos = positions.get(spec.key);
    roleByKey[spec.key] = await ensureRole(guild, spec, pos);
  }

  const staffRole = roleByKey.staff;
  const adminRole = roleByKey.admin;
  const modRole = roleByKey.mod;

  const channelMap = {};
  let ticketCategory = null;
  let ticketHub = null;

  for (const catSpec of CATEGORY_SPECS) {
    let category = guild.channels.cache.find(
      (c) => c.type === ChannelType.GuildCategory && c.name === catSpec.name
    );
    if (!category) {
      category = await guild.channels.create({
        name: catSpec.name,
        type: ChannelType.GuildCategory,
        reason: "Setup automático do painel",
      });
    }

    if (catSpec.staffOnly) {
      await lockCategoryForEveryone(guild, category, false);
      await category.permissionOverwrites.edit(staffRole, {
        ViewChannel: true,
        SendMessages: true,
        ReadMessageHistory: true,
        ManageMessages: true,
      });
      await category.permissionOverwrites.edit(modRole, {
        ViewChannel: true,
        SendMessages: true,
        ReadMessageHistory: true,
      });
      await category.permissionOverwrites.edit(adminRole, {
        ViewChannel: true,
        SendMessages: true,
        ManageMessages: true,
        MentionEveryone: true,
      });
    } else if (!catSpec.ticketHub) {
      await lockCategoryForEveryone(guild, category, true);
    }

    if (catSpec.ticketHub) {
      ticketCategory = category;
      await category.permissionOverwrites.edit(guild.roles.everyone, {
        ViewChannel: false,
      });
      await category.permissionOverwrites.edit(staffRole, {
        ViewChannel: true,
        SendMessages: true,
        ManageChannels: true,
        ManageMessages: true,
      });
      ticketHub = guild.channels.cache.find(
        (c) =>
          c.parentId === category.id &&
          c.type === ChannelType.GuildText &&
          c.name === "suporte"
      );
      if (!ticketHub) {
        ticketHub = await guild.channels.create({
          name: "suporte",
          type: ChannelType.GuildText,
          parent: category.id,
          topic:
            "Canal de suporte — leia as instruções fixadas. Tickets privados abrem pelo botão abaixo ou pelo painel principal.",
          permissionOverwrites: [
            {
              id: guild.roles.everyone.id,
              allow: [PermissionFlagsBits.ViewChannel, PermissionFlagsBits.ReadMessageHistory],
              deny: [PermissionFlagsBits.SendMessages],
            },
            {
              id: staffRole.id,
              allow: [
                PermissionFlagsBits.ViewChannel,
                PermissionFlagsBits.SendMessages,
                PermissionFlagsBits.ManageChannels,
                PermissionFlagsBits.ManageMessages,
              ],
            },
          ],
          reason: "Hub de tickets (leitura para membros)",
        });
      }
      channelMap.ticketHub = ticketHub;
      continue;
    }

    for (const chName of catSpec.channels) {
      const existing = guild.channels.cache.find(
        (c) =>
          c.parentId === category.id &&
          c.type === ChannelType.GuildText &&
          c.name === chName
      );
      if (existing) {
        channelMap[chName] = existing;
        continue;
      }
      const created = await guild.channels.create({
        name: chName,
        type: ChannelType.GuildText,
        parent: category.id,
        reason: "Setup automático do painel",
      });
      channelMap[chName] = created;
    }
  }

  const rules = channelMap.regras;
  const announcements = channelMap["anúncios"];
  const general = channelMap.geral;
  const welcome = channelMap.links ?? general;

  if (rules) {
    await rules.permissionOverwrites.edit(guild.roles.everyone, {
      SendMessages: false,
      AddReactions: true,
      ReadMessageHistory: true,
    });
  }
  if (announcements) {
    await announcements.permissionOverwrites.edit(guild.roles.everyone, {
      SendMessages: false,
      ReadMessageHistory: true,
    });
    await announcements.permissionOverwrites.edit(staffRole, {
      SendMessages: true,
      ManageMessages: true,
      MentionEveryone: true,
    });
  }

  return {
    roles: roleByKey,
    channels: channelMap,
    ticketCategory,
    ticketHub,
    logChannel: channelMap["staff-alertas"],
    welcomeChannel: welcome,
    announceChannel: announcements,
    staffRole,
  };
}
