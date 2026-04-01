# Royal Match Auto Bot (Android)

Projeto Android em **Kotlin** para automação avançada de jogadas em jogos estilo match-3, com foco em arquitetura profissional e modular.

> ⚠️ **Importante**: automação de jogos pode violar termos de uso da plataforma/jogo e resultar em punições da conta. Este projeto é educacional.

## Visão geral

O app implementa um pipeline completo:

1. **Captura de tela** via `AccessibilityService` (`canTakeScreenshot=true`).
2. **Parser de visão heurística** para converter a imagem em grade 8x8.
3. **Solver Match-3** que simula trocas válidas e pontua combinações.
4. **Planner de gestos** para transformar a melhor jogada em swipe de tela.
5. **Loop automático** com intervalo e limiar de confiança configuráveis.

## Arquitetura

```text
app/src/main/java/br/com/royalmatch/autobot/
├── data/
│   └── BotConfigRepository.kt
├── model/
│   └── Board.kt
├── engine/
│   ├── BoardVisionParser.kt
│   ├── Match3Solver.kt
│   └── GesturePlanner.kt
├── service/
│   ├── RoyalBotAccessibilityService.kt
│   └── ServiceStateStore.kt
└── ui/
    └── MainActivity.kt
```

## Requisitos

- Android Studio atualizado
- Android SDK instalado e configurado
- Dispositivo Android (API 30+) para usar captura de tela por acessibilidade

## Como executar

1. Abra o projeto no Android Studio.
2. Aguarde sincronização do Gradle.
3. Execute `app` em um dispositivo Android.
4. No app:
   - toque em **Abrir configurações de acessibilidade**;
   - habilite o serviço **Royal Bot Accessibility**;
   - ative o switch **Bot Ativo**.
5. Abra o Royal Match e deixe o app em primeiro plano.

## Configurações do painel

- **Bot Ativo**: inicia/para o loop automático.
- **Intervalo entre jogadas (ms)**: controla agressividade da automação.
- **Limiar de confiança**: exige pontuação mínima para executar jogadas.

## Limitações atuais

- Parser de visão usa heurísticas de cor (não rede neural).
- Estratégia de solver é baseada em pontuação local de combinações.
- Pode precisar de calibração fina para diferentes resoluções/temas visuais.

## Próximas evoluções sugeridas

- Calibração automática da área da grade por detecção de borda.
- Classificador de peças por ML leve (TFLite).
- Estratégias multi-turno com previsão de cascata.
- Modo “anti-padrão” para variação temporal de gestos.

## Build via terminal

```bash
./gradlew assembleDebug
```

Se ocorrer erro de SDK, configure o Android SDK no ambiente (`ANDROID_HOME`/`local.properties`).
