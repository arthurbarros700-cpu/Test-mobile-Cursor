# Bot Discord + MTA (painel interativo)

Bot em **Node.js** (discord.js v14) para gerir o servidor Discord através de um **painel com menus e botões** (sem comandos de texto nem slash commands). O código está **modular**: cada área vive em `src/scripts/` e o `interaction-hub` encadeia os módulos.

Inclui **setup automático** de categorias, canais e cargos, **tickets**, **moderação**, **comunidade** (votações com reações, sorteios com botão participar, mensagem de encorajamento guardada), **ferramentas staff** (estatísticas, buffer de auditoria, top convites, export de cargos, construtor de embed em 3 passos), **boas-vindas / logs** e **ponte HTTP** para o **MTA:SA**.

## Requisitos

- Node.js 20+
- Bot no [Discord Developer Portal](https://discord.com/developers/applications) com **Privileged Gateway Intents**: *Server Members Intent* (e *Message Content* apenas se no futuro quiser ler conteúdo de mensagens).

## Configuração rápida

1. Copie `.env.example` para `.env` e preencha:
   - `DISCORD_TOKEN` — token do bot
   - `GUILD_ID` — ID do servidor
   - `PANEL_CHANNEL_ID` — canal onde a mensagem fixa do painel será criada (recomendado: `#painel-bot` só para staff)
   - `BOT_OWNER_IDS` — IDs dos donos (separados por vírgula), para acesso total ao painel
   - `BRIDGE_SECRET` — chave partilhada com o resource MTA
   - `BRIDGE_PORT` — porta HTTP da ponte (padrão `3750`)

2. Convide o bot com permissões de **administrador** (ou equivalente: gerir canais, cargos, expulsar, banir, moderar). Para **top convites** e deteção fina de kicks na auditoria em RAM, o bot também precisa de **Ver registo de auditoria** e **Gerir servidor**.

3. Instale e arranque:

```bash
npm install
npm start
```

Na primeira execução, o bot publica o painel no canal indicado. Na secção **Servidor**, use **Setup completo do servidor** para criar a estrutura (categorias, `#anúncios`, `#regras`, tickets, cargos, etc.). Os IDs importantes ficam guardados em `data/storage.json`.

## Ponte MTA → Discord

Com o bot a correr, o servidor HTTP expõe:

- `GET /health` — estado
- `POST /mta/announce` — corpo JSON `{ "title", "description" }` ou `{ "content" }` + header `x-bridge-secret`
- `POST /mta/staff` — `{ "message" }` para o canal de log da staff

Copie a pasta `mta-resource` para `resources/discord_bridge`, ajuste `config.lua` (`bridgeURL` com o IP/porta onde o **Node** escuta) e adicione ao `mtacl.conf`.

## Estrutura do projeto

- `src/index.js` — cliente Discord, painel fixo, eventos de entrada/saída
- `src/core/interaction-hub.js` — despacho de interações para os scripts
- `src/scripts/` — módulos do painel (`panel-router`, `server-script`, `moderation-script`, `community-script`, `tickets-script`, `mta-script`, `tools-script`); ordem em `src/scripts/index.js`
- `src/services/audit-log.js` — buffer em RAM de eventos de moderação (limpa ao reiniciar)
- `src/guild/setup.js` — modelo de servidor (categorias, permissões, tickets)
- `src/bridge/http.js` — API para o MTA

## Nota sobre “botbja discou”

Se se referia a **Discord Bot Maker** ou outra ferramenta visual: este repositório é código **open-source** em Node.js, com o mesmo tipo de fluxo (componentes interativos + automação), adequado a hospedagem própria e integração MTA.
