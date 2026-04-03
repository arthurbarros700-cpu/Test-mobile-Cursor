/**
 * Ordem importa: o router do menu principal deve correr primeiro;
 * depois módulos por área (cada um trata os seus customId).
 */
import * as panelRouter from "./panel-router.js";
import * as serverScript from "./server-script.js";
import * as moderationScript from "./moderation-script.js";
import * as communityScript from "./community-script.js";
import * as ticketsScript from "./tickets-script.js";
import * as mtaScript from "./mta-script.js";
import * as toolsScript from "./tools-script.js";

export const scriptModules = [
  panelRouter,
  serverScript,
  moderationScript,
  communityScript,
  ticketsScript,
  mtaScript,
  toolsScript,
];
