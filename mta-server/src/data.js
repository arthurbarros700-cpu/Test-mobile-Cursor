// ── Simulated MTA:SA server state ──────────────────────────────
const NAMES = [
  'GhostRider','XxProKiller','NightWalker','SilverFox','DarkWolf',
  'BlueStorm','RedEagle','ShadowBlade','IronFist','ThunderBolt',
  'VenomSnake','CoolBreeze','LegendKing','UrbanHunter','NeonFury',
  'StormBreaker','DeadShot','PhantomX','CyberPunk','VoidWalker',
];
const REASONS = ['Aimbot','Hacking','Flood','Insultos','Bug Abuse','Speed Hack','Wall Hack'];
const rand = (min, max) => min + Math.random() * (max - min);
const randInt = (min, max) => Math.floor(rand(min, max));
const serial = () => Array.from({length:32}, () => '0123456789ABCDEF'[randInt(0,16)]).join('');
const ip = () => `${randInt(10,200)}.${randInt(0,255)}.${randInt(0,255)}.${randInt(1,254)}`;

let _playerId = 1;
function makePlayer() {
  const roles = ['player','player','player','player','player','mod','admin'];
  return {
    id:     _playerId++,
    name:   NAMES[randInt(0, NAMES.length)] + '_' + randInt(100,999),
    serial: serial(),
    ip:     ip(),
    ping:   randInt(20, 200),
    role:   roles[randInt(0, roles.length)],
    time:   randInt(0, 240),
  };
}

const RESOURCES = [
  { name:'gamemode-rp',   ver:'3.2.1', author:'DevTeam',   status:'running', cpu:18, ram:64  },
  { name:'freeroam',      ver:'1.0.4', author:'MTA Team',  status:'running', cpu:5,  ram:12  },
  { name:'admin',         ver:'2.4.0', author:'MTA Team',  status:'running', cpu:3,  ram:8   },
  { name:'scoreboard',    ver:'1.2.0', author:'xDev',      status:'running', cpu:1,  ram:4   },
  { name:'vehicleshop',   ver:'0.9.8', author:'CarMaster', status:'running', cpu:7,  ram:22  },
  { name:'housing',       ver:'2.0.1', author:'DevTeam',   status:'running', cpu:9,  ram:30  },
  { name:'economy',       ver:'1.5.3', author:'EcoTeam',   status:'running', cpu:6,  ram:18  },
  { name:'anticheat-pro', ver:'4.1.0', author:'SecureDev', status:'running', cpu:12, ram:40  },
  { name:'chat-system',   ver:'1.1.0', author:'ChatDev',   status:'running', cpu:2,  ram:6   },
  { name:'death-match',   ver:'0.5.2', author:'DmDev',     status:'stopped', cpu:0,  ram:0   },
  { name:'racing-system', ver:'1.0.0', author:'RaceDev',   status:'stopped', cpu:0,  ram:0   },
  { name:'weapons-mgr',   ver:'2.0.0', author:'GunDev',    status:'stopped', cpu:0,  ram:0   },
];

function makeBan(i) {
  const names = ['HackMaster','AimGod','SpeedHax','WallSniper','CheatBot','AutoFire','TriggerBot'];
  const d = new Date(Date.now() - rand(0, 30) * 86400000);
  const durs = ['Permanente','7 dias','24 horas','30 dias'];
  return {
    id:      i+1,
    name:    names[i % names.length],
    serial:  serial().slice(0,16) + '...',
    ip:      ip(),
    reason:  REASONS[i % REASONS.length],
    by:      'Admin_Chefe',
    date:    d.toLocaleDateString('pt-BR'),
    expires: durs[i % durs.length],
  };
}

// Mutable server state
const state = {
  players:   [],
  resources: JSON.parse(JSON.stringify(RESOURCES)),
  bans:      Array.from({length:5}, (_,i) => makeBan(i)),
  cpu:       35,
  ram:       900,
  dl:        200,
  ul:        80,
  ping:      55,
  uptimeSec: 7200,
  serverName:'MTA:SA Roleplay BR',
  gameMode:  'Roleplay',
  maxSlots:  100,
  port:      22003,
  logs:      [],
  activity:  [],
};

// Pre-fill players
for (let i = 0; i < 12; i++) state.players.push(makePlayer());

function addLog(msg, type = 'info') {
  const now = new Date();
  const t = `${String(now.getHours()).padStart(2,'0')}:${String(now.getMinutes()).padStart(2,'0')}:${String(now.getSeconds()).padStart(2,'0')}`;
  state.logs.push({ t, msg, type });
  if (state.logs.length > 300) state.logs.shift();
}

function addActivity(type, text) {
  const now = new Date();
  const t = `${String(now.getHours()).padStart(2,'0')}:${String(now.getMinutes()).padStart(2,'0')}`;
  state.activity.unshift({ type, text, t });
  if (state.activity.length > 30) state.activity.pop();
}

// Initial logs
addLog('MTA:SA Server iniciado com sucesso', 'ok');
addLog('Anti-cheat carregado', 'ok');
addLog('Proteção DDoS ativa', 'ok');
addLog(`${state.resources.filter(r=>r.status==='running').length} recursos iniciados`, 'info');
addLog(`${state.players.length} jogadores conectados na inicialização`, 'info');

// ── Simulation tick ────────────────────────────────────────────
function smooth(val, min, max, delta) {
  return Math.max(min, Math.min(max, val + (Math.random() * delta * 2 - delta)));
}

function tick() {
  state.uptimeSec++;
  state.cpu  = smooth(state.cpu,  5,  95,  5);
  state.ram  = smooth(state.ram,  400,3200,60);
  state.dl   = smooth(state.dl,   10, 980, 40);
  state.ul   = smooth(state.ul,   5,  500, 30);
  state.ping = smooth(state.ping, 15, 180, 8);

  // Player join
  if (Math.random() < 0.06 && state.players.length < 95) {
    const p = makePlayer();
    state.players.push(p);
    addLog(`${p.name} conectou-se ao servidor`, 'ok');
    addActivity('join', `<strong>${p.name}</strong> entrou no servidor`);
  }
  // Player leave
  if (Math.random() < 0.04 && state.players.length > 3) {
    const idx = randInt(0, state.players.length);
    const left = state.players.splice(idx, 1)[0];
    addLog(`${left.name} desconectou-se`, 'info');
    addActivity('leave', `<strong>${left.name}</strong> saiu do servidor`);
  }
  // Increment play time
  state.players.forEach(p => p.time++);

  // Occasional server messages
  if (Math.random() < 0.05) {
    const msgs = [
      ['Checkpoint salvo no banco de dados','ok'],
      ['Backup automático concluído','ok'],
      ['Cache de veículos limpo','info'],
      ['Garbage collector executado','info'],
      ['Ping alto detectado em alguns jogadores','warn'],
      ['Anti-cheat: verificação concluída, nenhuma anomalia','ok'],
    ];
    const m = msgs[randInt(0, msgs.length)];
    addLog(m[0], m[1]);
  }
}

setInterval(tick, 1000);

module.exports = { state, addLog, addActivity, makePlayer, serial, ip };
