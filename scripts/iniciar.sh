#!/usr/bin/env bash
# Atalho para iniciar o bot com o ambiente virtual ativado

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BOT_DIR="$(dirname "$SCRIPT_DIR")"

cd "$BOT_DIR"

# Ativar venv se existir
if [ -d "venv" ]; then
    if [[ "$OSTYPE" == "msys" || "$OSTYPE" == "cygwin" ]]; then
        source venv/Scripts/activate
    else
        source venv/bin/activate
    fi
fi

python -m royal_match_bot.cli iniciar "$@"
