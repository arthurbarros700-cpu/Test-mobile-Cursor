#!/bin/bash
# =============================================================
# Script de Compilação do Royal Match Bot
# =============================================================

echo ""
echo "🔨 Compilando Royal Match Bot..."
echo ""

cd "$(dirname "$0")/.." || exit 1

# Limpar build anterior
echo "🧹 Limpando build anterior..."
./gradlew clean

# Compilar APK debug
echo "📦 Compilando APK debug..."
./gradlew assembleDebug

if [ $? -eq 0 ]; then
    APK="app/build/outputs/apk/debug/app-debug.apk"
    TAMANHO=$(du -sh "$APK" | cut -f1)
    
    echo ""
    echo "✅ Compilação concluída!"
    echo "📁 APK gerado: $APK"
    echo "📊 Tamanho: $TAMANHO"
    echo ""
    echo "Para instalar no celular, execute:"
    echo "  ./scripts/instalar.sh"
else
    echo ""
    echo "❌ Erro na compilação!"
    echo "   Verifique os logs acima para detalhes."
    exit 1
fi
