#!/usr/bin/env bash
# ============================================================
#  Royal Match Bot — Script de Instalação (Linux / macOS)
# ============================================================
set -e

VERDE='\033[0;32m'
AMARELO='\033[1;33m'
VERMELHO='\033[0;31m'
RESET='\033[0m'

echo -e "${VERDE}"
echo "╔══════════════════════════════════════════════════════╗"
echo "║          ROYAL MATCH BOT  —  Instalador v2.0        ║"
echo "╚══════════════════════════════════════════════════════╝"
echo -e "${RESET}"

# ── Verifica Python ──────────────────────────────────────────
echo -e "${AMARELO}[1/5] Verificando Python 3.9+...${RESET}"
PYTHON=""
for cmd in python3.11 python3.10 python3.9 python3; do
    if command -v "$cmd" &>/dev/null; then
        VER=$("$cmd" -c "import sys; print(sys.version_info >= (3,9))")
        if [ "$VER" = "True" ]; then
            PYTHON="$cmd"
            break
        fi
    fi
done

if [ -z "$PYTHON" ]; then
    echo -e "${VERMELHO}Python 3.9+ não encontrado. Instale em https://python.org${RESET}"
    exit 1
fi
echo -e "${VERDE}  ✔ Python encontrado: $($PYTHON --version)${RESET}"

# ── Ambiente virtual ─────────────────────────────────────────
echo -e "${AMARELO}[2/5] Criando ambiente virtual...${RESET}"
VENV_DIR="$HOME/.royalmatch_bot/venv"
if [ ! -d "$VENV_DIR" ]; then
    "$PYTHON" -m venv "$VENV_DIR"
fi
source "$VENV_DIR/bin/activate"
echo -e "${VERDE}  ✔ Ambiente virtual: $VENV_DIR${RESET}"

# ── Dependências ─────────────────────────────────────────────
echo -e "${AMARELO}[3/5] Instalando dependências Python...${RESET}"
pip install --upgrade pip -q
pip install -r "$(dirname "$0")/../requirements.txt" -q
echo -e "${VERDE}  ✔ Dependências instaladas.${RESET}"

# ── ADB ──────────────────────────────────────────────────────
echo -e "${AMARELO}[4/5] Verificando ADB...${RESET}"
if command -v adb &>/dev/null; then
    echo -e "${VERDE}  ✔ ADB encontrado: $(adb version | head -1)${RESET}"
else
    echo -e "${AMARELO}  ADB não encontrado. Instalando via apt...${RESET}"
    if command -v apt-get &>/dev/null; then
        sudo apt-get install -y android-tools-adb 2>/dev/null || true
    elif command -v brew &>/dev/null; then
        brew install android-platform-tools
    else
        echo -e "${VERMELHO}  Instale o ADB manualmente: https://developer.android.com/studio/releases/platform-tools${RESET}"
    fi
fi

# ── Atalho de execução ───────────────────────────────────────
echo -e "${AMARELO}[5/5] Criando atalho de execução...${RESET}"
SCRIPT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
LAUNCHER="$HOME/.royalmatch_bot/iniciar_bot.sh"
cat > "$LAUNCHER" <<EOF
#!/usr/bin/env bash
source "$VENV_DIR/bin/activate"
cd "$SCRIPT_DIR"
python -m royalmatch_bot.ui.app "\$@"
EOF
chmod +x "$LAUNCHER"

# Atalho no PATH (opcional)
if [ -d "$HOME/.local/bin" ]; then
    ln -sf "$LAUNCHER" "$HOME/.local/bin/royalmatch-bot" 2>/dev/null || true
fi

echo ""
echo -e "${VERDE}╔══════════════════════════════════════════════════════╗"
echo -e "║  ✔ INSTALAÇÃO CONCLUÍDA!                             ║"
echo -e "╚══════════════════════════════════════════════════════╝${RESET}"
echo ""
echo "  Para iniciar o bot:"
echo -e "  ${AMARELO}$LAUNCHER${RESET}"
echo "  ou, se estiver no PATH:"
echo -e "  ${AMARELO}royalmatch-bot${RESET}"
echo ""
echo "  Dica: Ative o Modo Desenvolvedor no celular e"
echo "  conecte via USB ou configure o IP do dispositivo."
echo ""
