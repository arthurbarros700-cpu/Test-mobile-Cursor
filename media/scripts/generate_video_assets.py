import math
from pathlib import Path
from PIL import Image, ImageDraw, ImageFont, ImageFilter

W, H = 1920, 1080
FPS = 30
DUR = 52  # seconds
TOTAL = FPS * DUR

OUT = Path('/workspace/media/assets/frames')
OUT.mkdir(parents=True, exist_ok=True)

try:
    FONT_BOLD = ImageFont.truetype('/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf', 72)
    FONT_SUB = ImageFont.truetype('/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf', 40)
    FONT_BODY = ImageFont.truetype('/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf', 30)
    FONT_SMALL = ImageFont.truetype('/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf', 24)
except Exception:
    FONT_BOLD = ImageFont.load_default()
    FONT_SUB = ImageFont.load_default()
    FONT_BODY = ImageFont.load_default()
    FONT_SMALL = ImageFont.load_default()

SCENES = [
    (0, 6, 'ROYAL MATCH AUTO BOT', 'Automação inteligente e elegante para jogadas contínuas'),
    (6, 12, 'PAINEL DE CONTROLE', 'Ativação rápida, ajuste de confiança e intervalo'),
    (12, 19, 'VISÃO COMPUTACIONAL', 'Leitura heurística da grade 8x8 em tempo real'),
    (19, 27, 'MATCH-3 SOLVER', 'Simulação de trocas e escolha da melhor jogada'),
    (27, 35, 'GESTOS AUTOMÁTICOS', 'Execução precisa de swipes com ritmo profissional'),
    (35, 44, 'LOOP CONTÍNUO', 'Captura, decisão e ação em ciclo otimizado'),
    (44, 52, 'RESULTADO', 'Performance estável, modular e pronta para evoluir'),
]

PALETTE = [
    (26, 20, 58),
    (40, 26, 87),
    (62, 40, 130),
    (20, 134, 208),
]


def lerp(a, b, t):
    return a + (b - a) * t


def gradient_bg(t):
    # animated diagonal gradient
    img = Image.new('RGB', (W, H), PALETTE[0])
    px = img.load()
    drift = math.sin(t * 0.18) * 0.15
    for y in range(H):
        yy = y / (H - 1)
        for x in range(W):
            xx = x / (W - 1)
            g = max(0.0, min(1.0, 0.6 * xx + 0.4 * yy + drift))
            if g < 0.33:
                tt = g / 0.33
                c1, c2 = PALETTE[0], PALETTE[1]
            elif g < 0.66:
                tt = (g - 0.33) / 0.33
                c1, c2 = PALETTE[1], PALETTE[2]
            else:
                tt = (g - 0.66) / 0.34
                c1, c2 = PALETTE[2], PALETTE[3]
            r = int(lerp(c1[0], c2[0], tt))
            gc = int(lerp(c1[1], c2[1], tt))
            b = int(lerp(c1[2], c2[2], tt))
            px[x, y] = (r, gc, b)
    return img


def draw_particles(draw, t):
    for i in range(55):
        a = i * 0.37
        x = int((0.5 + 0.42 * math.sin(t * 0.13 + a * 1.31)) * W)
        y = int((0.5 + 0.46 * math.cos(t * 0.17 + a * 1.17)) * H)
        r = int(2 + 2 * (1 + math.sin(t * 0.7 + i)) / 2)
        alpha = int(60 + 120 * (1 + math.sin(t * 0.4 + i * 0.2)) / 2)
        draw.ellipse((x-r, y-r, x+r, y+r), fill=(165, 220, 255, alpha))


def rounded_box(img, xy, radius, fill, outline=None, width=2):
    d = ImageDraw.Draw(img, 'RGBA')
    d.rounded_rectangle(xy, radius=radius, fill=fill, outline=outline, width=width)


def scene_text(sec):
    for s, e, ttl, sub in SCENES:
        if s <= sec < e:
            return s, e, ttl, sub
    return SCENES[-1]


def ease_out_cubic(x):
    x = max(0.0, min(1.0, x))
    return 1 - (1 - x) ** 3


def draw_dashboard(img, t):
    panel_w, panel_h = 980, 560
    x0 = (W - panel_w) // 2
    y0 = (H - panel_h) // 2 + 120
    rounded_box(img, (x0, y0, x0 + panel_w, y0 + panel_h), 36, (22, 18, 44, 220), (120, 180, 255, 220), 3)
    d = ImageDraw.Draw(img, 'RGBA')

    # panel title
    d.text((x0 + 40, y0 + 34), 'Painel de Controle', font=FONT_SUB, fill=(236, 244, 255, 255))

    # status pill
    pill = (x0 + 600, y0 + 30, x0 + 920, y0 + 96)
    rounded_box(img, pill, 30, (0, 184, 255, 60), (0, 220, 255, 200), 2)
    d.text((x0 + 638, y0 + 46), 'BOT ATIVO', font=FONT_SMALL, fill=(211, 248, 255, 255))

    # slider lines
    labels = [
        ('Intervalo entre jogadas', 0.72 + 0.15 * math.sin(t * 0.8)),
        ('Limiar de confiança', 0.61 + 0.18 * math.sin(t * 1.1 + 0.7)),
        ('Precisão de leitura', 0.80 + 0.09 * math.sin(t * 0.9 + 1.7)),
    ]
    yy = y0 + 150
    for lbl, v in labels:
        d.text((x0 + 50, yy - 36), lbl, font=FONT_SMALL, fill=(210, 220, 240, 255))
        bar = (x0 + 50, yy, x0 + 920, yy + 18)
        rounded_box(img, bar, 9, (255, 255, 255, 30))
        fillw = int((bar[2] - bar[0]) * max(0.0, min(1.0, v)))
        rounded_box(img, (bar[0], bar[1], bar[0] + fillw, bar[3]), 9, (0, 184, 255, 220))
        yy += 122


def draw_match_grid(img, t):
    d = ImageDraw.Draw(img, 'RGBA')
    gx, gy = 140, 260
    size = 96
    pad = 8
    cols, rows = 8, 8
    colors = [
        (255, 90, 90),
        (90, 180, 255),
        (120, 225, 120),
        (255, 210, 90),
        (195, 120, 255),
    ]

    rounded_box(img, (gx - 24, gy - 24, gx + cols * (size + pad) - pad + 24, gy + rows * (size + pad) - pad + 24), 26, (12, 10, 32, 205), (150, 170, 255, 160), 2)

    for r in range(rows):
        for c in range(cols):
            idx = int((r * 3 + c * 5 + int(t * 2)) % len(colors))
            col = colors[idx]
            x = gx + c * (size + pad)
            y = gy + r * (size + pad)
            rounded_box(img, (x, y, x + size, y + size), 20, col + (220,))

    # animated swipe arrow
    phase = (math.sin(t * 2.0) + 1) / 2
    ax1 = gx + 2 * (size + pad) + size // 2
    ay1 = gy + 3 * (size + pad) + size // 2
    ax2 = int(ax1 + (size + pad) * (0.6 + phase))
    ay2 = ay1
    d.line((ax1, ay1, ax2, ay2), fill=(255, 255, 255, 230), width=10)
    d.polygon([(ax2, ay2), (ax2 - 26, ay2 - 18), (ax2 - 26, ay2 + 18)], fill=(255, 255, 255, 240))


def overlay_title(img, sec, title, subtitle):
    d = ImageDraw.Draw(img, 'RGBA')

    # top dark strip
    rounded_box(img, (80, 56, W - 80, 228), 30, (0, 0, 0, 115), (175, 220, 255, 180), 2)

    # subtle intro animation
    local_t = sec - int(sec)
    wobble = int(6 * math.sin(sec * 1.7))

    d.text((130, 88 + wobble), title, font=FONT_BOLD, fill=(244, 249, 255, 255))
    d.text((134, 172), subtitle, font=FONT_SUB, fill=(198, 228, 255, 255))

    # bottom signature
    d.text((84, H - 58), 'Royal Match Auto Bot • Demonstração Técnica', font=FONT_SMALL, fill=(214, 232, 255, 210))


def generate():
    for i in range(TOTAL):
        sec = i / FPS
        s0, s1, title, subtitle = scene_text(sec)
        scene_prog = (sec - s0) / max(0.001, (s1 - s0))

        img = gradient_bg(sec).convert('RGBA')
        draw = ImageDraw.Draw(img, 'RGBA')
        draw_particles(draw, sec)

        if s0 in (6, 35):
            draw_dashboard(img, sec)
        if s0 in (12, 19, 27, 44):
            draw_match_grid(img, sec)

        # center glow pulse
        glow = Image.new('RGBA', (W, H), (0, 0, 0, 0))
        gd = ImageDraw.Draw(glow, 'RGBA')
        rad = int(220 + 80 * math.sin(sec * 2.3))
        gd.ellipse((W//2-rad, H//2-rad, W//2+rad, H//2+rad), fill=(0, 200, 255, 40))
        glow = glow.filter(ImageFilter.GaussianBlur(30))
        img.alpha_composite(glow)

        # scene transition fade in
        fade = ease_out_cubic(min(1.0, scene_prog * 2.0))
        veil_alpha = int((1.0 - fade) * 120)
        if veil_alpha > 0:
            veil = Image.new('RGBA', (W, H), (0, 0, 0, veil_alpha))
            img.alpha_composite(veil)

        overlay_title(img, sec, title, subtitle)

        out = OUT / f"frame_{i:05d}.png"
        img.convert('RGB').save(out, quality=95)

    print(f'Frames gerados: {TOTAL}')


if __name__ == '__main__':
    generate()
