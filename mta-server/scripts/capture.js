/**
 * MTA:SA Panel — Cinematic Video Capture
 * Captures animated frames of the panel using Puppeteer + Chrome
 * then outputs to /workspace/video/frames/
 */

const puppeteer = require('puppeteer');
const fs        = require('fs');
const path      = require('path');

const FRAMES_DIR = '/workspace/video/frames';
const WIDTH  = 1280;
const HEIGHT = 720;
const FPS    = 24;

fs.mkdirSync(FRAMES_DIR, { recursive: true });

// ── Helpers ───────────────────────────────────────────────────
async function sleep(ms) { return new Promise(r => setTimeout(r, ms)); }

function frameFile(n) {
  return path.join(FRAMES_DIR, `frame_${String(n).padStart(5,'0')}.png`);
}

let frameIdx = 0;

async function captureFrames(page, durationMs, label) {
  const count = Math.ceil((durationMs / 1000) * FPS);
  console.log(`  📸 Capturing "${label}" — ${count} frames (${durationMs}ms)`);
  for (let i = 0; i < count; i++) {
    await page.screenshot({ path: frameFile(frameIdx++), type: 'png' });
    await sleep(1000 / FPS);
  }
}

// ── Inject cinematic overlay helpers into page ────────────────
async function injectOverlay(page) {
  await page.addStyleTag({ content: `
    #__cinematic_bar_top,
    #__cinematic_bar_bot {
      position: fixed;
      left: 0; right: 0;
      height: 0;
      background: #000;
      z-index: 99999;
      pointer-events: none;
      transition: height .6s ease;
    }
    #__cinematic_bar_top { top: 0; }
    #__cinematic_bar_bot { bottom: 0; }

    #__title_card {
      position: fixed;
      inset: 0;
      background: linear-gradient(135deg, #080b10 0%, #0d1a2e 100%);
      display: flex; flex-direction: column;
      align-items: center; justify-content: center;
      z-index: 99998;
      opacity: 0;
      pointer-events: none;
      transition: opacity .8s ease;
    }
    #__title_card .tc-pre {
      font-family: 'Segoe UI', system-ui, sans-serif;
      font-size: 13px; letter-spacing: 5px; text-transform: uppercase;
      color: #00d4ff; margin-bottom: 16px; opacity: 0;
      transform: translateY(10px);
      transition: all .6s ease .3s;
    }
    #__title_card .tc-main {
      font-family: 'Segoe UI', system-ui, sans-serif;
      font-size: 52px; font-weight: 900; color: #fff;
      letter-spacing: -1px; opacity: 0;
      transform: translateY(14px);
      transition: all .7s ease .5s;
    }
    #__title_card .tc-main span { color: #00d4ff; }
    #__title_card .tc-sub {
      font-family: 'Segoe UI', system-ui, sans-serif;
      font-size: 16px; color: #94a3b8; margin-top: 14px; opacity: 0;
      transform: translateY(10px);
      transition: all .6s ease .7s;
    }
    #__title_card .tc-line {
      width: 0; height: 2px; background: #00d4ff;
      margin: 20px 0; transition: width .8s ease .9s;
    }
    #__title_card .tc-tag {
      font-family: 'Segoe UI', system-ui, sans-serif;
      font-size: 11px; letter-spacing: 4px; color: #475569;
      text-transform: uppercase; opacity: 0;
      transition: opacity .6s ease 1.1s;
    }

    #__section_label {
      position: fixed;
      left: 32px; bottom: 40px;
      font-family: 'Segoe UI', system-ui, sans-serif;
      font-size: 11px; letter-spacing: 3px; text-transform: uppercase;
      color: #00d4ff; z-index: 99997;
      display: flex; align-items: center; gap: 8px;
      opacity: 0; transition: opacity .4s ease;
      pointer-events: none;
    }
    #__section_label::before {
      content: '';
      display: inline-block; width: 20px; height: 1px;
      background: #00d4ff;
    }

    #__progress_bar {
      position: fixed; bottom: 0; left: 0;
      height: 2px; background: #00d4ff;
      z-index: 99999;
      transition: width 0s linear;
      pointer-events: none;
    }

    .__highlight_pulse {
      animation: __hpulse 1s ease-in-out 2;
    }
    @keyframes __hpulse {
      0%,100% { box-shadow: none; }
      50% { box-shadow: 0 0 0 3px rgba(0,212,255,.5); }
    }
  `});

  await page.evaluate(() => {
    const top  = document.createElement('div'); top.id  = '__cinematic_bar_top';
    const bot  = document.createElement('div'); bot.id  = '__cinematic_bar_bot';
    const card = document.createElement('div'); card.id = '__title_card';
    card.innerHTML = `
      <div class="tc-pre">Apresentando</div>
      <div class="tc-main">MTA<span>:SA</span><br>Control Panel</div>
      <div class="tc-sub">Sistema de Administração Profissional</div>
      <div class="tc-line"></div>
      <div class="tc-tag">Roleplay · PVP · Freeroam</div>
    `;
    const sec  = document.createElement('div'); sec.id = '__section_label';
    const prog = document.createElement('div'); prog.id = '__progress_bar';
    prog.style.width = '0%';
    document.body.appendChild(top);
    document.body.appendChild(bot);
    document.body.appendChild(card);
    document.body.appendChild(sec);
    document.body.appendChild(prog);
  });
}

async function showTitleCard(page, durationMs) {
  console.log('  🎬 Title card...');
  // Show card
  await page.evaluate(() => {
    const c = document.getElementById('__title_card');
    c.style.opacity = '1';
    c.style.pointerEvents = 'none';
    setTimeout(() => {
      c.querySelector('.tc-pre').style.opacity  = '1';
      c.querySelector('.tc-pre').style.transform = 'none';
      c.querySelector('.tc-main').style.opacity  = '1';
      c.querySelector('.tc-main').style.transform = 'none';
      c.querySelector('.tc-sub').style.opacity   = '1';
      c.querySelector('.tc-sub').style.transform  = 'none';
      c.querySelector('.tc-line').style.width    = '200px';
      c.querySelector('.tc-tag').style.opacity   = '1';
    }, 100);
  });
  await captureFrames(page, durationMs, 'Title Card');
  // Fade out
  await page.evaluate(() => {
    document.getElementById('__title_card').style.opacity = '0';
  });
  await captureFrames(page, 800, 'Title card fade out');
}

async function setCinematicBars(page, show) {
  await page.evaluate((s) => {
    document.getElementById('__cinematic_bar_top').style.height = s ? '36px' : '0';
    document.getElementById('__cinematic_bar_bot').style.height = s ? '36px' : '0';
  }, show);
  await sleep(700);
}

async function setSectionLabel(page, text) {
  await page.evaluate((t) => {
    const el = document.getElementById('__section_label');
    el.textContent = '';
    el.style.opacity = '0';
    setTimeout(() => {
      const before = document.createElement('span');
      before.style.cssText = 'display:inline-block;width:20px;height:1px;background:#00d4ff';
      el.appendChild(before);
      el.appendChild(document.createTextNode(' ' + t));
      el.style.opacity = '1';
    }, 100);
  }, text);
  await sleep(400);
}

async function setProgress(page, pct) {
  await page.evaluate((p) => {
    const el = document.getElementById('__progress_bar');
    el.style.transition = `width ${0.3}s linear`;
    el.style.width = p + '%';
  }, pct);
}

async function clickNav(page, selector, label) {
  await page.click(selector);
  await sleep(400);
  await setSectionLabel(page, label);
}

async function highlightElement(page, selector) {
  try {
    await page.evaluate((sel) => {
      const el = document.querySelector(sel);
      if (el) {
        el.classList.add('__highlight_pulse');
        setTimeout(() => el.classList.remove('__highlight_pulse'), 2100);
      }
    }, selector);
  } catch(_) {}
  await sleep(400);
}

async function smoothScroll(page, targetY) {
  const steps = 20;
  const start = await page.evaluate(() => document.getElementById('main').scrollTop);
  for (let i = 1; i <= steps; i++) {
    const y = start + ((targetY - start) * (i/steps));
    await page.evaluate((v) => { document.getElementById('main').scrollTop = v; }, y);
    await sleep(25);
  }
}

// ══════════════════════════════════════════════════════════════
//  MAIN
// ══════════════════════════════════════════════════════════════
(async () => {
  console.log('\n🎥 MTA:SA Panel — Cinematic Capture\n');

  const browser = await puppeteer.launch({
    executablePath: '/usr/local/bin/google-chrome',
    headless: 'new',
    args: [
      '--no-sandbox', '--disable-setuid-sandbox',
      '--disable-dev-shm-usage', '--disable-gpu',
      `--window-size=${WIDTH},${HEIGHT}`,
    ],
  });

  const page = await browser.newPage();
  await page.setViewport({ width: WIDTH, height: HEIGHT });

  // ── Load panel ────────────────────────────────────────────
  console.log('🌐 Loading panel...');
  await page.goto('http://localhost:3000', { waitUntil: 'networkidle0', timeout: 15000 });
  await sleep(1500);
  await injectOverlay(page);
  await sleep(300);

  // ── SCENE 0: Black intro frames (0.5s) ───────────────────
  console.log('\n[Scene 0] Black intro');
  await page.evaluate(() => {
    document.getElementById('__title_card').style.background = '#000';
    document.getElementById('__title_card').style.opacity = '1';
  });
  await captureFrames(page, 500, 'Black intro');

  // ── SCENE 1: Title Card (3.5s) ───────────────────────────
  console.log('\n[Scene 1] Title Card');
  await showTitleCard(page, 3500);
  await setProgress(page, 5);

  // ── SCENE 2: Dashboard overview (4s) ────────────────────
  console.log('\n[Scene 2] Dashboard');
  await setCinematicBars(page, true);
  await setSectionLabel(page, '01 — Dashboard');
  await setProgress(page, 15);
  await captureFrames(page, 1200, 'Dashboard appear');
  await highlightElement(page, '.stat-card.c1');
  await captureFrames(page, 700, 'Highlight players card');
  await highlightElement(page, '.stat-card.c2');
  await captureFrames(page, 700, 'Highlight cpu card');
  await highlightElement(page, '.stat-card.c3');
  await captureFrames(page, 700, 'Highlight ram card');
  await highlightElement(page, '.stat-card.c4');
  await captureFrames(page, 700, 'Highlight uptime card');
  await setProgress(page, 28);
  await captureFrames(page, 1800, 'Dashboard charts live');

  // Scroll down to see gauges + activity
  await smoothScroll(page, 340);
  await captureFrames(page, 2000, 'Dashboard gauges + activity');
  await smoothScroll(page, 0);
  await captureFrames(page, 400, 'Scroll back');

  // ── SCENE 3: Monitor (3.5s) ──────────────────────────────
  console.log('\n[Scene 3] Monitor');
  await clickNav(page, '[data-page="monitor"]', '02 — Monitor de Performance');
  await setProgress(page, 38);
  await captureFrames(page, 1200, 'Monitor appear');
  await highlightElement(page, '#ring-cpu');
  await captureFrames(page, 700, 'Ring cpu');
  await highlightElement(page, '#ring-ram');
  await captureFrames(page, 700, 'Ring ram');
  await highlightElement(page, '#ring-pl');
  await captureFrames(page, 700, 'Ring players');
  await captureFrames(page, 1800, 'Monitor charts live');

  // ── SCENE 4: Players (3s) ────────────────────────────────
  console.log('\n[Scene 4] Players');
  await clickNav(page, '[data-page="players"]', '03 — Gestão de Jogadores');
  await setProgress(page, 52);
  await captureFrames(page, 1200, 'Players appear');
  await captureFrames(page, 1800, 'Players table live');
  // Hover over first row
  await page.hover('#players-tbody tr:first-child').catch(() => {});
  await captureFrames(page, 800, 'Player row hover');
  await captureFrames(page, 1000, 'Players live after hover');

  // ── SCENE 5: Resources (3s) ─────────────────────────────
  console.log('\n[Scene 5] Resources');
  await clickNav(page, '[data-page="resources"]', '04 — Gerenciador de Recursos');
  await setProgress(page, 65);
  await captureFrames(page, 1200, 'Resources appear');
  await captureFrames(page, 1200, 'Resources table');
  // Scroll to see all resources
  await smoothScroll(page, 200);
  await captureFrames(page, 1200, 'Resources scroll');
  await smoothScroll(page, 0);

  // ── SCENE 6: Bans (2.5s) ────────────────────────────────
  console.log('\n[Scene 6] Bans');
  await clickNav(page, '[data-page="bans"]', '05 — Controle de Banimentos');
  await setProgress(page, 75);
  await captureFrames(page, 1000, 'Bans appear');
  await captureFrames(page, 1800, 'Bans table');

  // ── SCENE 7: Console (3s) ────────────────────────────────
  console.log('\n[Scene 7] Console');
  await clickNav(page, '[data-page="console"]', '06 — Console ao Vivo');
  await setProgress(page, 85);
  await captureFrames(page, 1000, 'Console appear');

  // Type a command slowly
  await page.focus('#console-input');
  for (const ch of 'status') {
    await page.keyboard.type(ch);
    await captureFrames(page, 100, `Type ${ch}`);
  }
  await captureFrames(page, 500, 'Command typed');
  await page.keyboard.press('Enter');
  await captureFrames(page, 1200, 'Command result');

  // Type say command
  await page.focus('#console-input');
  for (const ch of 'say Bem-vindos ao servidor!') {
    await page.keyboard.type(ch);
    await captureFrames(page, 50, `Type ${ch}`);
  }
  await captureFrames(page, 400, 'Say command typed');
  await page.keyboard.press('Enter');
  await captureFrames(page, 1000, 'Say result');

  // ── SCENE 8: Settings (2s) ───────────────────────────────
  console.log('\n[Scene 8] Settings');
  await clickNav(page, '[data-page="settings"]', '07 — Configurações & Segurança');
  await setProgress(page, 92);
  await captureFrames(page, 1000, 'Settings appear');
  await highlightElement(page, '#tog-ac');
  await captureFrames(page, 600, 'Toggle highlight');
  await highlightElement(page, '#tog-ddos');
  await captureFrames(page, 600, 'Toggle highlight 2');
  await captureFrames(page, 800, 'Settings rest');

  // ── SCENE 9: Return to Dashboard + final live (2.5s) ────
  console.log('\n[Scene 9] Final dashboard');
  await clickNav(page, '[data-page="dashboard"]', 'Dashboard — Ao Vivo');
  await setProgress(page, 98);
  await captureFrames(page, 2500, 'Final dashboard live');

  // ── SCENE 10: Outro card ─────────────────────────────────
  console.log('\n[Scene 10] Outro');
  await setProgress(page, 100);
  await page.evaluate(() => {
    const card = document.getElementById('__title_card');
    card.style.background = 'linear-gradient(135deg, #080b10 0%, #0d1a2e 100%)';
    card.innerHTML = `
      <div style="font-family:'Segoe UI',system-ui,sans-serif;text-align:center">
        <div style="font-size:11px;letter-spacing:5px;text-transform:uppercase;color:#00d4ff;margin-bottom:16px">
          MTA:SA Server Control Panel
        </div>
        <div style="font-size:42px;font-weight:900;color:#fff;line-height:1.1">
          Sistema Profissional<br><span style="color:#00d4ff">de Administração</span>
        </div>
        <div style="width:160px;height:2px;background:#00d4ff;margin:22px auto"></div>
        <div style="font-size:14px;color:#94a3b8;margin-bottom:8px">
          Dashboard · Monitor · Jogadores · Recursos · Console
        </div>
        <div style="font-size:12px;color:#475569;letter-spacing:3px;text-transform:uppercase;margin-top:18px">
          Entre no servidor e seja parte desta experiência
        </div>
      </div>
    `;
    card.style.opacity = '1';
    card.style.pointerEvents = 'none';
  });
  await captureFrames(page, 3000, 'Outro card');

  // ── Fade to black ────────────────────────────────────────
  await page.evaluate(() => {
    const card = document.getElementById('__title_card');
    card.style.background = '#000';
    card.innerHTML = '';
  });
  await captureFrames(page, 700, 'Fade to black');

  await browser.close();

  console.log(`\n✅ Capture complete — ${frameIdx} frames saved to ${FRAMES_DIR}`);
  process.exit(0);
})();
