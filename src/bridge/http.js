import express from "express";
import { EmbedBuilder } from "discord.js";
import { successEmbed } from "../util/embeds.js";

export function createBridgeServer({ getConfig, getGuild, getAnnounceChannel, log }) {
  const app = express();
  app.use(express.json({ limit: "256kb" }));

  app.get("/health", (_req, res) => {
    res.json({ ok: true, service: "mta-discord-bridge" });
  });

  function auth(req, res, next) {
    const cfg = getConfig();
    if (!cfg.bridgeSecret) {
      res.status(503).json({ ok: false, error: "BRIDGE_SECRET não configurado" });
      return;
    }
    const hdr = req.headers["x-bridge-secret"];
    if (hdr !== cfg.bridgeSecret) {
      res.status(401).json({ ok: false, error: "Não autorizado" });
      return;
    }
    next();
  }

  app.post("/mta/announce", auth, async (req, res) => {
    try {
      const guild = getGuild();
      const ch = getAnnounceChannel();
      if (!guild || !ch?.isTextBased()) {
        res.status(400).json({ ok: false, error: "Canal de anúncios indisponível" });
        return;
      }
      const { title, description, content, color } = req.body || {};
      if (content && typeof content === "string") {
        await ch.send({ content: content.slice(0, 2000) });
        res.json({ ok: true, mode: "content" });
        return;
      }
      const embed = new EmbedBuilder()
        .setColor(typeof color === "number" ? color : 0x5865f2)
        .setTitle((title || "Servidor MTA").toString().slice(0, 256))
        .setDescription((description || "").toString().slice(0, 4096))
        .setTimestamp();
      await ch.send({ embeds: [embed] });
      res.json({ ok: true, mode: "embed" });
    } catch (e) {
      log?.("bridge announce error", e);
      res.status(500).json({ ok: false, error: String(e.message || e) });
    }
  });

  app.post("/mta/staff", auth, async (req, res) => {
    try {
      const guild = getGuild();
      if (!guild) {
        res.status(400).json({ ok: false, error: "Guild indisponível" });
        return;
      }
      const logCh = guild.channels.cache.get(getConfig().logChannelId);
      if (!logCh?.isTextBased()) {
        res.status(400).json({ ok: false, error: "Canal de log staff indisponível" });
        return;
      }
      const { message } = req.body || {};
      const text = (message || "[MTA] evento sem mensagem").toString().slice(0, 2000);
      await logCh.send({
        embeds: [successEmbed("MTA → Staff", text)],
      });
      res.json({ ok: true });
    } catch (e) {
      log?.("bridge staff error", e);
      res.status(500).json({ ok: false, error: String(e.message || e) });
    }
  });

  const port = getConfig().bridgePort;
  const server = app.listen(port, () => {
    log?.(`Ponte HTTP à escuta na porta ${port}`);
  });

  return { app, server };
}
