# Royal Match Bot Mobile

Aplicativo Android em PT-BR com painel de controle, servico de acessibilidade, captura de tela e motor heuristico para detectar uma grade 8x8 e enviar swipes automaticamente.

## O que foi criado

- App Android nativo em Java
- Interface mobile em PT-BR
- Painel operacional para ativar ou pausar o bot
- Integracao com AccessibilityService
- Captura de tela via `takeScreenshot()` em Android 11+
- Analisador de grade por amostragem de cores
- Motor match-3 para estimar jogadas validas
- Planejador heuristico para escolher a melhor troca
- Telemetria basica: capturas, swipes, pacote ativo e ultima decisao

## Estrutura principal

- `app/src/main/java/br/com/testmobilecursor/royalbotlab/MainActivity.java`
  - painel principal do app
- `app/src/main/java/br/com/testmobilecursor/royalbotlab/service/RoyalMatchAccessibilityService.java`
  - servico de acessibilidade que observa a tela, captura imagem e envia gestos
- `app/src/main/java/br/com/testmobilecursor/royalbotlab/analyzer/BoardAnalyzer.java`
  - detector heuristico da grade 8x8
- `app/src/main/java/br/com/testmobilecursor/royalbotlab/domain/engine/Match3Engine.java`
  - motor de match-3 usado para avaliar jogadas
- `app/src/main/java/br/com/testmobilecursor/royalbotlab/domain/engine/BotPlanner.java`
  - priorizacao da melhor troca

## Como usar no celular

1. Compile e instale o APK no Android.
2. Abra o app **Royal Match Bot Mobile**.
3. Toque em **Abrir acessibilidade**.
4. Habilite o servico **Bot Royal Match Mobile**.
5. Volte ao app e toque em **Abrir Royal Match**.
6. Entre em uma fase do jogo.
7. Toque em **Ativar bot**.
8. Observe a grade detectada, o status e a ultima decisao no painel.

## Requisitos

- Android 11 ou superior para captura de tela via acessibilidade
- Royal Match instalado no aparelho
- Servico de acessibilidade habilitado

## Observacoes tecnicas

- O detector atual usa heuristicas de cor e uma estimativa de area central do tabuleiro.
- A previsao funciona melhor com brilho estavel e sem overlays cobrindo a grade.
- O painel mostra uma pre-visualizacao 8x8 da leitura de cores feita pelo bot.
- O fluxo tambem tenta clicar em textos comuns como `Jogar`, `Continuar`, `Tentar novamente` e `Ok`.

## Limitações atuais

- A leitura visual ainda e heuristica; fases com muitos efeitos, fumaça, gelo, tapetes, caixas ou layouts muito diferentes podem reduzir a confianca.
- O classificador nao faz OCR nem segmentacao visual avancada.
- O motor de decisao assume uma grade match-3 classica de 8x8 para guiar a troca.
- Para uma versao mais robusta, os proximos passos seriam:
  - detector de grade por bordas e linhas
  - OCR local para reconhecer botoes e telas intermediarias
  - modelos por tema visual e por conjunto de pecas especiais
  - calibracao assistida pelo usuario
  - coleta opcional de amostras de tela para ajuste fino do classificador

## Build

O projeto usa:

- AGP `8.7.3`
- Gradle `8.9`
- Java `17`
- `minSdk 26`
- `targetSdk 35`

Se o ambiente local ainda nao tiver Android SDK instalado, configure antes:

- `ANDROID_HOME` ou `ANDROID_SDK_ROOT`
- plataforma Android 35
- build-tools compativeis com AGP 8.7

## Proximos passos sugeridos

- adicionar um overlay opcional com a jogada escolhida
- persistir logs de sessoes
- calibrar automaticamente a area do tabuleiro por dispositivo
- salvar capturas de erro para depuracao
- adicionar testes unitarios especificos para o planejador e o classificador de cores
