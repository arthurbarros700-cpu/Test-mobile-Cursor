# 🤖 Royal Match Bot - Jogador Automático Profissional

<div align="center">

![Royal Match Bot](https://img.shields.io/badge/Royal%20Match-Bot%20Automático-gold?style=for-the-badge)
![Android](https://img.shields.io/badge/Android-API%2026%2B-green?style=for-the-badge&logo=android)
![Kotlin](https://img.shields.io/badge/Kotlin-100%25-purple?style=for-the-badge&logo=kotlin)
![Versão](https://img.shields.io/badge/Versão-1.0.0-blue?style=for-the-badge)

**Bot profissional que joga Royal Match automaticamente no seu Android.**  
Baixe, instale, configure e deixe o celular jogar sozinho!

</div>

---

## 📋 O que este bot faz

- Joga Royal Match completamente sozinho, sem precisar tocar na tela
- Analisa o tabuleiro usando visão computacional
- Calcula as melhores jogadas usando Inteligência Artificial
- Passa as fases automaticamente e coleta recompensas
- Gerencia vidas (aguarda recarga automaticamente)
- Funciona com a tela apagada (usa WakeLock)
- Exibe estatísticas detalhadas de desempenho
- Registra log de tudo que faz

---

## 📱 Requisitos

| Item | Requisito |
|------|-----------|
| Android | 8.0 (API 26) ou superior |
| RAM | 2 GB ou mais recomendado |
| Royal Match | Instalado no dispositivo |
| Permissões | Acessibilidade + Sobreposição |

---

## 🚀 Instalação (Passo a Passo)

### Método 1 — Via arquivo APK (recomendado)

1. **Baixe o APK** `RoyalMatchBot.apk` para o seu celular
2. Vá em **Configurações → Segurança** (ou Privacidade)
3. Ative **"Instalar apps desconhecidos"** (ou "Fontes desconhecidas")
4. Abra o arquivo APK pelo gerenciador de arquivos
5. Toque em **Instalar**

### Método 2 — Via ADB (para desenvolvedores)

```bash
# Instalar com ADB
adb install RoyalMatchBot.apk

# Ou usar o script incluso
./scripts/instalar.sh
```

---

## ⚙️ Configuração Obrigatória

Após instalar, é necessário conceder **duas permissões especiais**:

### 1. Serviço de Acessibilidade

> Esta é a permissão principal que permite o bot controlar o jogo

**Como ativar:**
1. Abra o app **Royal Match Bot**
2. Toque no botão vermelho **"Ativar"** ao lado de "Serviço de Acessibilidade"
3. Você será redirecionado para **Configurações → Acessibilidade**
4. Encontre **"Royal Match Bot"** na lista
5. Ative o serviço e confirme

### 2. Exibir sobre outros apps (Overlay)

> Permite que o bot mostre informações sobre a tela do jogo

**Como ativar:**
1. Toque em **"Permitir"** ao lado de "Exibir sobre outros apps"
2. Encontre **Royal Match Bot** na lista
3. Ative a permissão

---

## 🎮 Como Usar

1. **Abra o app** Royal Match Bot
2. **Configure** velocidade e estratégia (opcional)
3. Toque em **"Iniciar Bot"** (botão verde)
4. **Abra o Royal Match** normalmente
5. **Deixe o celular** — o bot vai jogar sozinho!

### Para parar:
- Toque em **"Parar Bot"** no app
- **Ou** desative o Serviço de Acessibilidade

---

## 🧠 Estratégias de IA Disponíveis

| Estratégia | Descrição | Melhor Para |
|------------|-----------|-------------|
| **IA Avançada** | Análise multi-critério com lookahead | Melhor taxa de sucesso |
| **Agressiva** | Prioriza combos e peças especiais | Fases difíceis |
| **Conservadora** | Eficiência máxima por movimento | Fases com poucos movimentos |
| **Velocidade Máxima** | Execução mais rápida possível | Farm rápido |

---

## ⚡ Velocidades Disponíveis

| Velocidade | Delay entre Jogadas | Uso |
|------------|---------------------|-----|
| Muito Lenta | ~2000ms | Parece totalmente humano |
| Lenta | ~1000ms | Seguro e natural |
| Normal | ~500ms | Equilíbrio perfeito |
| Rápida | ~250ms | Farming rápido |
| Turbo | ~125ms | Máxima velocidade |

---

## 🛡️ Modo Anti-Detecção

Quando ativado, o bot:
- Adiciona variações aleatórias no timing das jogadas
- Aplica micro-variações na posição dos toques
- Simula curvas naturais nos movimentos (não são retos)
- Às vezes escolhe a 2ª ou 3ª melhor jogada (comportamento humano)

---

## 📊 Estatísticas e Logs

O bot registra automaticamente:
- ✅ Total de fases completadas
- ❌ Total de fases que falharam
- 📈 Taxa de sucesso geral
- ⏱️ Tempo total jogado
- 🔧 Histórico detalhado de cada fase

Acesse pela tela principal → **"Estatísticas"** ou **"Logs"**

---

## 🗂️ Estrutura do Projeto

```
RoyalMatchBot/
├── app/src/main/
│   ├── java/com/royalmatchbot/
│   │   ├── ai/
│   │   │   └── MotorIA.kt              # Algoritmos de IA
│   │   ├── controller/
│   │   │   └── ControladorGestos.kt   # Controle de toques
│   │   ├── models/
│   │   │   └── Modelos.kt              # Modelos de dados
│   │   ├── service/
│   │   │   ├── BotAcessibilidadeService.kt  # Motor principal
│   │   │   ├── BotForegroundService.kt      # Serviço em background
│   │   │   └── BootReceiver.kt              # Auto-início
│   │   ├── ui/
│   │   │   ├── MainActivity.kt         # Painel principal
│   │   │   ├── EstatisticasActivity.kt # Tela de stats
│   │   │   ├── LogsActivity.kt         # Visualizador de logs
│   │   │   └── ConfiguracoesActivity.kt # Configurações
│   │   ├── utils/
│   │   │   ├── GerenciadorConfiguracoes.kt
│   │   │   ├── GerenciadorEstatisticas.kt
│   │   │   ├── GerenciadorLogs.kt
│   │   │   └── VerificadorPermissoes.kt
│   │   └── vision/
│   │       └── AnalisadorTela.kt       # Visão computacional
│   └── res/                            # Recursos de UI
├── scripts/
│   ├── compilar.sh                     # Script de compilação
│   └── instalar.sh                     # Script de instalação
└── docs/                               # Documentação
```

---

## 🔧 Compilar do Código Fonte

### Pré-requisitos
- Android Studio (versão Arctic Fox ou superior)
- JDK 17
- Android SDK (API 26-34)

### Compilação

```bash
# Clonar o repositório
git clone <url-do-repositorio>
cd RoyalMatchBot

# Compilar via script
./scripts/compilar.sh

# Ou manualmente
./gradlew assembleDebug

# APK gerado em:
# app/build/outputs/apk/debug/app-debug.apk
```

---

## ❓ Perguntas Frequentes

**O bot não inicia após apertar "Iniciar Bot"**
> Verifique se o Serviço de Acessibilidade está ativado nas configurações do Android.

**O bot para de funcionar quando a tela apaga**
> Ative a permissão "Acessibilidade" novamente e verifique as configurações de economia de bateria do app.

**O bot está clicando no lugar errado**
> A resolução da tela pode ser diferente. O bot se adapta automaticamente, mas em alguns aparelhos pode precisar de calibração.

**O jogo foi atualizado e o bot parou de funcionar**
> Atualizações do Royal Match podem mudar a posição dos elementos. Uma nova versão do bot pode ser necessária.

**Como saber se o bot está funcionando?**
> Verifique a notificação persistente na barra de status e os logs no app.

---

## ⚠️ Aviso Legal

Este software é para uso educacional e de pesquisa sobre automação Android.
O uso de bots pode violar os Termos de Serviço do Royal Match.
Use com responsabilidade e por sua conta e risco.

---

<div align="center">

**Royal Match Bot v1.0.0** | Feito com ❤️ em Kotlin para Android

</div>
