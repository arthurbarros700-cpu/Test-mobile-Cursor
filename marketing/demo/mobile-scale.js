/**
 * Escala o layout 1920×1080 para caber em telemóveis (evita página em branco / overflow).
 */
(function () {
  const W = 1920;
  const H = 1080;
  const wrap = document.getElementById("scaleWrap");
  const app = document.getElementById("app");
  if (!wrap || !app) return;

  function apply() {
    const desktop =
      window.matchMedia("(min-width: 1025px) and (min-height: 720px)").matches;
    if (desktop) {
      wrap.style.width = "";
      wrap.style.height = "";
      wrap.style.margin = "";
      app.style.transform = "";
      app.style.transformOrigin = "";
      document.documentElement.classList.remove("demo-mobile");
      return;
    }
    document.documentElement.classList.add("demo-mobile");
    const cw = document.documentElement.clientWidth;
    const ch = window.innerHeight;
    const s = Math.min(cw / W, ch / H, 1);
    wrap.style.width = "100%";
    wrap.style.height = `${H * s}px`;
    wrap.style.margin = "0 auto";
    wrap.style.overflow = "hidden";
    app.style.width = `${W}px`;
    app.style.height = `${H}px`;
    app.style.transformOrigin = "top left";
    app.style.transform = `scale(${s})`;
  }

  if (document.readyState === "loading") {
    document.addEventListener("DOMContentLoaded", apply);
  } else {
    apply();
  }
  window.addEventListener("resize", apply);
  window.addEventListener("orientationchange", () => setTimeout(apply, 200));
})();
