#!/data/data/com.termux/files/usr/bin/bash
# ══════════════════════════════════════════════════════════════
#   Royal Match Bot - Script de Instalação (Termux)
#   Execute este script DENTRO do Termux no seu celular Android.
#
#   Como usar:
#   1. Abra o Termux
#   2. Cole e execute:
#      curl -sL https://raw.githubusercontent.com/SEU_USUARIO/royal-match-bot/main/scripts/instalar_termux.sh | bash
# ══════════════════════════════════════════════════════════════

set -e

echo ""
echo "╔══════════════════════════════════════════════════════╗"
echo "║     ROYAL MATCH BOT - INSTALAÇÃO (TERMUX)           ║"
echo "╚══════════════════════════════════════════════════════╝"
echo ""

# ─── Atualizar repositórios ────────────────────────────────
echo "[1/7] Atualizando repositórios do Termux..."
pkg update -y 2>/dev/null || true

# ─── Instalar dependências do sistema ─────────────────────
echo "[2/7] Instalando dependências do sistema..."
pkg install -y python python-pip git wget 2>/dev/null || {
    echo "Tentando instalação alternativa..."
    apt-get install -y python python-pip git 2>/dev/null || true
}

# ─── Instalar termux-api ───────────────────────────────────
echo "[3/7] Instalando termux-api..."
pkg install -y termux-api 2>/dev/null || true
echo "  IMPORTANTE: Instale o app 'Termux:API' da F-Droid também!"

# ─── Instalar OpenCV ───────────────────────────────────────
echo "[4/7] Instalando OpenCV para Android..."
pkg install -y python-opencv 2>/dev/null || {
    echo "  Tentando via pip..."
    pip install opencv-python-headless 2>/dev/null || true
}

# ─── Instalar dependências Python ─────────────────────────
echo "[5/7] Instalando dependências Python..."
pip install numpy Pillow PyYAML --quiet

# ─── Baixar/Atualizar o bot ────────────────────────────────
echo "[6/7] Baixando Royal Match Bot..."
BOT_DIR="$HOME/royal-match-bot"

if [ -d "$BOT_DIR" ]; then
    echo "  Atualizando versão existente..."
    cd "$BOT_DIR" && git pull 2>/dev/null || true
else
    echo "  Clonando repositório..."
    git clone https://github.com/SEU_USUARIO/royal-match-bot.git "$BOT_DIR" 2>/dev/null || {
        echo "  Criando estrutura local..."
        mkdir -p "$BOT_DIR"
    }
fi

cd "$BOT_DIR"
pip install -e . --quiet 2>/dev/null || pip install -r requirements-termux.txt --quiet

# ─── Configurar permissões ────────────────────────────────
echo "[7/7] Configurando permissões..."
termux-setup-storage 2>/dev/null || true
mkdir -p "$HOME/royal-match-bot/logs"
mkdir -p "$HOME/royal-match-bot/config"

echo ""
echo "╔══════════════════════════════════════════════════════╗"
echo "║           INSTALAÇÃO CONCLUÍDA!                      ║"
echo "╚══════════════════════════════════════════════════════╝"
echo ""
echo "IMPORTANTE - Antes de iniciar:"
echo ""
echo "  1. Instale 'Termux:API' da F-Droid (não Play Store!)"
echo "     https://f-droid.org/packages/com.termux.api/"
echo ""
echo "  2. No Android, vá em:"
echo "     Configurações → Acessibilidade → Termux → Ativar"
echo ""
echo "  3. Conceda permissão de sobreposição ao Termux (opcional)"
echo ""
echo "  4. Abra o Royal Match pelo menos uma vez"
echo ""
echo "Comandos:"
echo ""
echo "  Configurar:    rmbot configurar"
echo "  Testar:        rmbot testar --modo termux"
echo "  Iniciar:       rmbot iniciar --modo termux"
echo ""
echo "  Ou simplesmente: python -m royal_match_bot.cli iniciar --modo termux"
