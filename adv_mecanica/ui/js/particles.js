/* ════════════════════════════════════════════════════════════════════════════
   Lightweight canvas particle background (spark / ember effect for workshop)
   ════════════════════════════════════════════════════════════════════════════ */
(function () {
  const canvas = document.createElement('canvas');
  canvas.id    = 'bg-canvas';
  canvas.style.cssText = [
    'position:fixed', 'inset:0', 'width:100%', 'height:100%',
    'pointer-events:none', 'z-index:-1', 'opacity:0.35',
  ].join(';');
  document.body.appendChild(canvas);

  const ctx = canvas.getContext('2d');

  function resize() {
    canvas.width  = window.innerWidth;
    canvas.height = window.innerHeight;
  }
  window.addEventListener('resize', resize);
  resize();

  const PARTICLE_COUNT = 40;
  const particles = [];

  function rand(min, max) { return Math.random() * (max - min) + min; }

  class Particle {
    constructor() { this.reset(); }
    reset() {
      this.x     = rand(0, canvas.width);
      this.y     = rand(canvas.height * 0.5, canvas.height);
      this.vx    = rand(-0.3, 0.3);
      this.vy    = rand(-1.2, -0.3);
      this.life  = rand(0.5, 1.0);
      this.decay = rand(0.002, 0.006);
      this.size  = rand(1, 3);
      const r = Math.round(rand(220, 255));
      const g = Math.round(rand(80, 160));
      this.color = `rgba(${r},${g},20,`;
    }
    update() {
      this.x   += this.vx;
      this.y   += this.vy;
      this.life -= this.decay;
      if (this.life <= 0) this.reset();
    }
    draw() {
      ctx.beginPath();
      ctx.arc(this.x, this.y, this.size, 0, Math.PI * 2);
      ctx.fillStyle = this.color + this.life + ')';
      ctx.fill();
    }
  }

  for (let i = 0; i < PARTICLE_COUNT; i++) particles.push(new Particle());

  function animate() {
    ctx.clearRect(0, 0, canvas.width, canvas.height);
    for (const p of particles) { p.update(); p.draw(); }
    requestAnimationFrame(animate);
  }
  animate();
})();
