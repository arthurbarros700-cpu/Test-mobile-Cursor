#!/bin/bash
# =============================================================
# Script de Instalação do Royal Match Bot
# Autor: Royal Match Bot Team
# Versão: 1.0.0
# =============================================================

echo ""
echo "╔══════════════════════════════════════════════════════╗"
echo "║          ROYAL MATCH BOT - Instalador v1.0           ║"
echo "║          Bot Automático Profissional                  ║"
echo "╚══════════════════════════════════════════════════════╝"
echo ""

# Verificar se o ADB está disponível
if ! command -v adb &> /dev/null; then
    echo "❌ ADB não encontrado! Instale o Android SDK."
    echo "   Download: https://developer.android.com/studio/releases/platform-tools"
    exit 1
fi

echo "✓ ADB encontrado"

# Verificar dispositivo conectado
DISPOSITIVOS=$(adb devices | grep -v "List of devices" | grep "device" | wc -l)
if [ "$DISPOSITIVOS" -eq "0" ]; then
    echo "❌ Nenhum dispositivo Android conectado!"
    echo ""
    echo "   Como conectar:"
    echo "   1. Habilite 'Opções do Desenvolvedor' no Android"
    echo "   2. Ative 'Depuração USB'"
    echo "   3. Conecte o cabo USB"
    echo "   4. Aceite a autorização no celular"
    exit 1
fi

echo "✓ Dispositivo Android detectado"
echo ""

# Instalar o APK
APK_PATH="$(dirname "$0")/../app/build/outputs/apk/debug/app-debug.apk"

if [ ! -f "$APK_PATH" ]; then
    echo "⚠️  APK não encontrado em: $APK_PATH"
    echo ""
    echo "   Compile o projeto primeiro:"
    echo "   cd RoyalMatchBot && ./gradlew assembleDebug"
    echo ""
    
    # Verificar se tem APK release
    APK_RELEASE="$(dirname "$0")/../app/build/outputs/apk/release/app-release.apk"
    if [ -f "$APK_RELEASE" ]; then
        APK_PATH="$APK_RELEASE"
        echo "✓ Encontrado APK release: $APK_RELEASE"
    else
        exit 1
    fi
fi

echo "📦 Instalando Royal Match Bot..."
adb install -r "$APK_PATH"

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Instalação concluída com sucesso!"
    echo ""
    echo "╔══════════════════════════════════════════════════════╗"
    echo "║                PRÓXIMOS PASSOS                        ║"
    echo "╠══════════════════════════════════════════════════════╣"
    echo "║                                                        ║"
    echo "║  1. Abra o app 'Royal Match Bot' no seu celular       ║"
    echo "║                                                        ║"
    echo "║  2. Ative o Serviço de Acessibilidade:                ║"
    echo "║     Configurações → Acessibilidade →                  ║"
    echo "║     Royal Match Bot → Ativar                          ║"
    echo "║                                                        ║"
    echo "║  3. Permita Sobreposição:                             ║"
    echo "║     Configurações → Apps → Royal Match Bot →          ║"
    echo "║     Exibir sobre outros apps → Permitir               ║"
    echo "║                                                        ║"
    echo "║  4. No app do bot, toque em 'Iniciar Bot'             ║"
    echo "║                                                        ║"
    echo "║  5. Abra o Royal Match e deixe jogar! 🎮              ║"
    echo "║                                                        ║"
    echo "╚══════════════════════════════════════════════════════╝"
else
    echo ""
    echo "❌ Falha na instalação!"
    echo "   Verifique se 'Instalar apps desconhecidos' está habilitado."
fi
