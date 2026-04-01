#!/usr/bin/env bash
# ══════════════════════════════════════════════════════════════
#   Royal Match Bot - Script de Instalação (PC/Mac/Linux)
#   Instala todas as dependências e configura o bot.
# ══════════════════════════════════════════════════════════════

set -e

VERDE="\033[32m"
AMARELO="\033[33m"
VERMELHO="\033[31m"
RESET="\033[0m"
NEGRITO="\033[1m"

echo -e "${NEGRITO}"
echo "╔══════════════════════════════════════════════════════╗"
echo "║       ROYAL MATCH BOT - INSTALAÇÃO (PC)             ║"
echo "╚══════════════════════════════════════════════════════╝"
echo -e "${RESET}"

# ─── Verificar Python ───────────────────────────────────────
echo -e "${VERDE}[1/6] Verificando Python...${RESET}"
if ! command -v python3 &>/dev/null; then
    echo -e "${VERMELHO}Python 3 não encontrado!${RESET}"
    echo "  Instale em: https://www.python.org/downloads/"
    exit 1
fi
PYTHON_VERSION=$(python3 -c "import sys; print(f'{sys.version_info.major}.{sys.version_info.minor}')")
echo "  ✓ Python $PYTHON_VERSION encontrado"

# ─── Verificar ADB ─────────────────────────────────────────
echo -e "${VERDE}[2/6] Verificando ADB...${RESET}"
if command -v adb &>/dev/null; then
    ADB_VERSION=$(adb version 2>&1 | head -1)
    echo "  ✓ $ADB_VERSION"
else
    echo -e "${AMARELO}  ⚠ ADB não encontrado no PATH${RESET}"
    echo "  Para ADB via USB/Wi-Fi, instale:"
    echo "  - Windows: https://developer.android.com/studio/releases/platform-tools"
    echo "  - Linux: sudo apt install adb"
    echo "  - Mac: brew install android-platform-tools"
    echo "  (Ignorado se usar modo Termux)"
fi

# ─── Criar ambiente virtual ────────────────────────────────
echo -e "${VERDE}[3/6] Criando ambiente virtual Python...${RESET}"
if [ ! -d "venv" ]; then
    python3 -m venv venv
    echo "  ✓ Ambiente virtual criado em ./venv/"
else
    echo "  ✓ Ambiente virtual já existe"
fi

# Ativar venv
if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" || "$OSTYPE" == "win32" ]]; then
    source venv/Scripts/activate
else
    source venv/bin/activate
fi

# ─── Instalar dependências ─────────────────────────────────
echo -e "${VERDE}[4/6] Instalando dependências...${RESET}"
pip install --upgrade pip -q
pip install -r requirements.txt -q
echo "  ✓ Dependências instaladas"

# ─── Instalar o bot ────────────────────────────────────────
echo -e "${VERDE}[5/6] Instalando Royal Match Bot...${RESET}"
pip install -e . -q
echo "  ✓ Bot instalado"

# ─── Criar estrutura de pastas ────────────────────────────
echo -e "${VERDE}[6/6] Criando diretórios necessários...${RESET}"
mkdir -p logs/screenshots
mkdir -p config
echo "  ✓ Diretórios criados"

echo ""
echo -e "${NEGRITO}╔══════════════════════════════════════════════════════╗"
echo "║           INSTALAÇÃO CONCLUÍDA!                      ║"
echo "╚══════════════════════════════════════════════════════╝${RESET}"
echo ""
echo "Próximos passos:"
echo ""
echo -e "  ${AMARELO}1.${RESET} Ativar ambiente virtual:"
echo "     source venv/bin/activate   (Linux/Mac)"
echo "     venv\\Scripts\\activate      (Windows)"
echo ""
echo -e "  ${AMARELO}2.${RESET} Configurar o bot:"
echo "     rmbot configurar"
echo ""
echo -e "  ${AMARELO}3.${RESET} Testar conexão:"
echo "     rmbot testar"
echo ""
echo -e "  ${AMARELO}4.${RESET} Iniciar o bot:"
echo "     rmbot iniciar"
echo ""
echo "Para ajuda: rmbot --help"
