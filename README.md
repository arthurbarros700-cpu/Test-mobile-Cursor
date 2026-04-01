# 👑 Royal Match Bot — Automação Profissional para Android

Bot automatizador completo e profissional para o jogo **Royal Match**, desenvolvido em **Kotlin nativo para Android**. Joga automaticamente por você sem precisar de root, usando apenas as APIs de Acessibilidade e MediaProjection nativas do Android.

---

## 🚀 O que o bot faz?

- **Abre o Royal Match automaticamente** quando iniciado
- **Captura a tela em tempo real** usando a API MediaProjection
- **Reconhece todas as peças** do tabuleiro por análise de cor (visão computacional)
- **Calcula a melhor jogada** usando 5 estratégias diferentes
- **Executa o swipe/arrasto** diretamente na tela (sem root)
- **Detecta e usa Boosters** estrategicamente (Foguete, Bomba, Arco-Íris, etc.)
- **Completa fase após fase** sem qualquer interação do usuário
- **Coleta recompensas diárias** automaticamente
- **Exibe estatísticas em tempo real** (fases, jogadas, tempo, taxa de sucesso)
- **Modo Sigilo** com movimentos humanizados para parecer jogador real

---

## 📱 Instalação no Celular

### Pré-requisitos
- Android 8.0 (Oreo) ou superior
- Royal Match instalado no dispositivo
- Cerca de 30 MB de espaço livre

### Passo 1: Compilar o APK
```bash
# Clone o repositório
git clone https://github.com/seu-usuario/royal-match-bot.git
cd royal-match-bot

# Compile com Android Studio ou via linha de comando
./gradlew assembleDebug

# O APK estará em:
# app/build/outputs/apk/debug/app-debug.apk
```

### Passo 2: Instalar o APK
1. Transfira o arquivo `app-debug.apk` para o celular
2. No celular, vá em **Configurações > Segurança** e ative **"Instalar apps desconhecidos"**
3. Abra o arquivo APK e toque em **Instalar**

### Passo 3: Ativar Serviços (uma única vez)

#### Serviço de Acessibilidade (obrigatório)
1. Abra o app Royal Match Bot
2. Toque no card vermelho **"Ativar Acessibilidade"**
3. Será aberta a tela de Acessibilidade do Android
4. Acesse **"Serviços baixados"** ou **"Aplicativos"**
5. Encontre **"Royal Match Bot"** e toque nele
6. Ative o serviço tocando no toggle e confirme

#### Captura de Tela (obrigatório)
1. De volta ao app, toque no card **"Captura de Tela"**
2. Uma caixa de diálogo irá aparecer pedindo permissão
3. Toque em **"Iniciar agora"** para conceder

### Passo 4: Iniciar o Bot! 🎉
1. Ambos os cards devem estar **verdes** (✅)
2. Toque no grande botão **"▶ INICIAR BOT"**
3. O bot irá **abrir o Royal Match automaticamente** e começar a jogar!
4. Deixe o celular ligado com a tela ativa e pronto!

---

## ⚙️ Configurações

Acesse **⚙️ Configurações** no app para personalizar:

| Configuração | Descrição |
|---|---|
| **Velocidade** | Muito Lenta / Lenta / Normal / Rápida / Muito Rápida |
| **Estratégia** | Agressiva / Balanceada / Conservadora / Boosters / Objetivo |
| **Usar Boosters** | Ativa/desativa uso automático de boosters |
| **Coletar Recompensas** | Coleta recompensas diárias automaticamente |
| **Modo Sigilo** | Movimentos com variação para parecer humano |
| **Iniciar com Sistema** | Bot começa quando o celular liga |
| **Limite de Horas** | Limita o uso diário (0 = sem limite) |

### Estratégias Disponíveis

| Estratégia | Melhor para |
|---|---|
| **Agressiva** | Maximizar pontuação e combos explosivos |
| **Balanceada** | Uso geral (recomendado para iniciantes) |
| **Conservadora** | Fases difíceis com muitos obstáculos |
| **Boosters Primeiro** | Fases onde boosters fazem diferença |
| **Foco no Objetivo** | Completar a meta da fase rapidamente |

---

## 🏗️ Arquitetura Técnica

```
app/
├── model/           # Modelos de dados
│   ├── TipoPeca.kt       # Enum com todos os tipos de peças
│   ├── Celula.kt         # Célula individual do tabuleiro
│   ├── Tabuleiro.kt      # Estado completo do tabuleiro
│   ├── Jogada.kt         # Jogada calculada (origem + destino + pontuação)
│   └── EstadoBot.kt      # Estados, estratégias e configurações
│
├── service/         # Serviços Android (rodam em background)
│   ├── BotAcessibilidadeServico.kt  # Executa gestos na tela
│   ├── BotPrincipalServico.kt       # Orquestra o loop principal
│   └── CapturaTelaServico.kt        # Captura frames via MediaProjection
│
├── engine/          # Motor de análise e estratégia
│   ├── AnalisadorTabuleiro.kt  # Reconhece peças por análise de cor
│   ├── CalculadorJogadas.kt    # Encontra todos os matches possíveis
│   ├── MotorEstrategico.kt     # Seleciona a melhor jogada
│   └── ControladorBot.kt       # Coordena o pipeline completo
│
├── ui/              # Interface do usuário
│   ├── MainActivity.kt          # Tela principal com controles
│   ├── ConfiguracoesActivity.kt # Configurações detalhadas
│   ├── LogsActivity.kt          # Logs em tempo real
│   └── EstatisticasActivity.kt  # Estatísticas e histórico
│
└── util/            # Utilitários
    ├── BotLogger.kt               # Sistema de logging centralizado
    ├── GerenciadorPreferencias.kt # Persistência de configurações
    ├── ProcessadorImagem.kt       # Operações de imagem
    ├── GerenciadorNotificacoes.kt # Notificações do sistema
    └── BancoDados.kt              # Room Database para logs
```

### Como o Reconhecimento de Peças Funciona

1. A tela é capturada como Bitmap via MediaProjection
2. O tabuleiro é detectado na tela (region detection heurística)
3. O tabuleiro é dividido em células (9x9 = 81 células)
4. Para cada célula: analisa a cor média dos pixels centrais
5. Compara com tabela de cores de referência de cada tipo de peça
6. Classifica com nível de confiança (0% a 100%)
7. Células com confiança < 75% são ignoradas na tomada de decisão

### Como a Estratégia é Calculada

1. Para cada par de células adjacentes, simula a troca
2. Conta quantas peças seriam eliminadas (match-3, match-4, etc.)
3. Classifica o tipo de match (L, T, linha, 6+)
4. Pontua conforme tipo e quantidade
5. Aplica bônus/penalidades da estratégia escolhida
6. Considera proximidade de obstáculos e movimentos restantes
7. Seleciona a jogada de maior pontuação final

---

## 📊 Tela de Estatísticas

- **Fases completadas** na sessão atual
- **Total de jogadas** realizadas
- **Combos** executados
- **Boosters** usados
- **Tempo ativo** da sessão
- **Taxa de sucesso** de fases (barra visual)
- **Histórico total** acumulado entre sessões

---

## 📋 Sistema de Logs

5 níveis de log com filtro na interface:
- 🔵 **Verbose** — tudo, incluindo análises internas
- ⚪ **Debug** — detalhes de cada jogada calculada
- 🟢 **Info** — ações principais (jogada executada, fase completa)
- 🟡 **Aviso** — situações inesperadas recuperadas
- 🔴 **Erro** — falhas que requerem atenção

---

## ❓ Perguntas Frequentes

**O bot precisa de root?**
Não. Usa apenas APIs públicas do Android (Acessibilidade + MediaProjection).

**O bot funciona com a tela bloqueada?**
Não, a tela precisa estar ativa (não bloqueada). Configure o tempo de bloqueio automático para "Nunca" durante o uso.

**O bot pode ser detectado pelo Royal Match?**
O Modo Sigilo adiciona variação aleatória nos movimentos. Não há garantias absolutas, mas o bot imita comportamento humano ao máximo.

**O bot coleta minhas informações pessoais?**
Não. O app funciona completamente offline, sem envio de dados para servidores externos.

**Posso configurar o bot para jogar por X horas por dia?**
Sim! Vá em Configurações > Limite de Horas por Dia e defina o valor desejado.

**O que acontece se o jogo travar ou mostrar um diálogo inesperado?**
O bot detecta estados desconhecidos e tenta fechar diálogos automaticamente. Se falhar 5 vezes consecutivas, reinicia o jogo.

---

## 🛠️ Desenvolvimento

### Requisitos de Desenvolvimento
- Android Studio Hedgehog 2023.1.1 ou superior
- JDK 17
- SDK Android 34
- Kotlin 1.9.22

### Compilar e instalar
```bash
# Debug
./gradlew installDebug

# Release (precisa configurar keystore)
./gradlew assembleRelease
```

### Executar testes
```bash
./gradlew test
./gradlew connectedAndroidTest
```

---

## 📄 Licença

Este projeto é para fins educacionais e de estudo de automação Android.
Use com responsabilidade e de acordo com os termos de serviço dos aplicativos.

---

*Desenvolvido com Kotlin, Android Accessibility Service e MediaProjection API*
