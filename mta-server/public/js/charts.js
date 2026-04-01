// ── Lightweight Canvas Chart Library ──────────────────────────
const Charts = (() => {
  const registry = {};

  function init(id, color1, color2) {
    const canvas = document.getElementById(id);
    if (!canvas) return;
    registry[id] = { canvas, ctx: canvas.getContext('2d'), color1, color2: color2 || null };
    resize(id);
  }

  function resize(id) {
    const c = registry[id];
    if (!c) return;
    const wrap = c.canvas.parentElement;
    c.canvas.width  = wrap.clientWidth  || 300;
    c.canvas.height = wrap.clientHeight || 120;
  }

  function draw(id, data1, data2, label1, label2, maxVal) {
    const c = registry[id];
    if (!c) return;
    resize(id);
    const { ctx, canvas, color1, color2 } = c;
    const W = canvas.width, H = canvas.height;
    const pad = { t: 8, b: 26, l: 32, r: 6 };
    const cW = W - pad.l - pad.r;
    const cH = H - pad.t - pad.b;

    ctx.clearRect(0, 0, W, H);

    // Grid
    ctx.strokeStyle = 'rgba(30,45,66,.7)';
    ctx.lineWidth = 1;
    for (let i = 0; i <= 4; i++) {
      const y = pad.t + (cH / 4) * i;
      ctx.beginPath(); ctx.moveTo(pad.l, y); ctx.lineTo(W - pad.r, y); ctx.stroke();
    }

    // Y-axis labels
    ctx.fillStyle = 'rgba(71,85,105,.8)';
    ctx.font = '9px system-ui';
    ctx.textAlign = 'right';
    for (let i = 0; i <= 4; i++) {
      const y = pad.t + (cH / 4) * i;
      ctx.fillText(Math.round(maxVal * (1 - i / 4)), pad.l - 4, y + 3);
    }

    function drawSeries(data, col) {
      if (!data || data.length < 2) return;
      const step = cW / (data.length - 1);

      ctx.beginPath();
      data.forEach((v, i) => {
        const x = pad.l + i * step;
        const y = pad.t + cH - Math.min(v / maxVal, 1) * cH;
        i === 0 ? ctx.moveTo(x, y) : ctx.lineTo(x, y);
      });
      ctx.strokeStyle = col;
      ctx.lineWidth = 1.8;
      ctx.lineJoin = 'round';
      ctx.stroke();

      // Area fill
      const last = data.length - 1;
      ctx.lineTo(pad.l + last * step, pad.t + cH);
      ctx.lineTo(pad.l, pad.t + cH);
      ctx.closePath();
      const grad = ctx.createLinearGradient(0, pad.t, 0, pad.t + cH);
      // parse color to rgba
      grad.addColorStop(0, hexToRgba(col, 0.16));
      grad.addColorStop(1, hexToRgba(col, 0));
      ctx.fillStyle = grad;
      ctx.fill();
    }

    if (data2) drawSeries(data2, color2 || '#7c3aed');
    drawSeries(data1, color1);

    // Legend
    ctx.textAlign = 'left';
    if (label1) {
      ctx.fillStyle = color1;
      ctx.fillRect(pad.l, H - 16, 10, 3);
      ctx.fillStyle = 'rgba(148,163,184,.8)';
      ctx.fillText(label1, pad.l + 13, H - 10);
    }
    if (label2) {
      ctx.fillStyle = color2 || '#7c3aed';
      ctx.fillRect(pad.l + 80, H - 16, 10, 3);
      ctx.fillStyle = 'rgba(148,163,184,.8)';
      ctx.fillText(label2, pad.l + 93, H - 10);
    }
  }

  function hexToRgba(hex, alpha) {
    if (hex.startsWith('#')) {
      const r = parseInt(hex.slice(1,3),16);
      const g = parseInt(hex.slice(3,5),16);
      const b = parseInt(hex.slice(5,7),16);
      return `rgba(${r},${g},${b},${alpha})`;
    }
    // Already a named/var color — fallback
    return `rgba(0,212,255,${alpha})`;
  }

  window.addEventListener('resize', () => {
    Object.keys(registry).forEach(id => resize(id));
  });

  return { init, draw };
})();
