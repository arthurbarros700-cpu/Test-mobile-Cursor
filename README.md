# 🤖 Royal Match Bot — Jogue Automático no Royal Match

Bot profissional e completo que **joga Royal Match sozinho** pelo seu celular.  
Basta instalar, ligar e deixar o celular de lado — o bot passa as fases por você.

---

## ✨ Funcionalidades

| Recurso | Descrição |
|---|---|
| 🧠 **IA Híbrida** | Combina Beam Search + Minimax + Monte Carlo (MCTS) |
| 👁️ **Visão Computacional** | Detecta e classifica todas as peças por análise de cor HSV |
| 📱 **ADB (USB/Wi-Fi)** | Controla o celular pelo PC com cabo ou via rede |
| 📲 **Termux** | Executa diretamente no celular, sem precisar de PC |
| 🎭 **Simulação Humana** | Movimentos naturais com curva de Bézier, delays variados |
| 💥 **Power-ups** | Detecta e combina power-ups para máxima eficiência |
| 📊 **Estatísticas** | Relatórios de vitórias, derrotas, tempo, pontuação |
| 🔔 **Telegram** | Notificações opcionais sobre progresso |
| ⚙️ **Configurável** | Arquivo YAML completo com mais de 30 opções |

---

## 🏗️ Arquitetura

```
royal_match_bot/
├── core/           # Lógica do jogo (tabuleiro, peças, estado)
├── device/         # Controle do dispositivo (ADB, Termux, gestos)
├── vision/         # Visão computacional (captura, detecção, classificação)
├── ai/             # Motor de IA (Beam Search, Minimax, MCTS)
├── utils/          # Logger, estatísticas, notificador
├── config/         # Gerenciador de configurações YAML
├── engine.py       # Engine principal (orquestra tudo)
└── cli.py          # Interface de linha de comando
```

---

## 📋 Requisitos

### Para usar via PC (modo ADB):
- Python 3.8 ou superior
- ADB (Android Debug Bridge) instalado
- Celular Android com **Depuração USB ativada**
- Cabo USB ou mesma rede Wi-Fi

### Para usar direto no celular (modo Termux):
- App **Termux** (instalar pela **F-Droid**, não Play Store)
- App **Termux:API** (também pelo F-Droid)
- Android 8.0 ou superior

---

## 🚀 Instalação

### Modo 1: PC com ADB (Recomendado para iniciantes)

```bash
# 1. Clonar o repositório
git clone https://github.com/SEU_USUARIO/royal-match-bot.git
cd royal-match-bot

# 2. Executar instalador
bash scripts/instalar_pc.sh

# 3. Ativar ambiente virtual
source venv/bin/activate   # Linux/Mac
# OU
venv\Scripts\activate      # Windows

# 4. Configurar
rmbot configurar

# 5. Iniciar
rmbot iniciar
```

### Modo 2: Direto no Celular (Termux)

```bash
# No Termux, execute:
curl -sL https://raw.githubusercontent.com/SEU_USUARIO/royal-match-bot/main/scripts/instalar_termux.sh | bash
```

Depois:
```bash
rmbot iniciar --modo termux
```

---

## ⚙️ Configuração

O arquivo `royal_match_bot/config/configuracoes.yaml` controla todo o comportamento:

```yaml
dispositivo:
  modo: "adb"              # "adb" ou "termux"
  endereco_adb: ""         # IP do celular (vazio = USB)

ia:
  algoritmo: "hibrido"     # beam_search, minimax, mcts, hibrido
  priorizar_objetivos: true

seguranca:
  simular_humano: true     # Movimentos naturais anti-detecção
  limite_horas_continuas: 6
```

Para personalizar interativamente:
```bash
rmbot configurar
```

---

## 🕹️ Uso

### Comandos disponíveis:

```bash
rmbot iniciar                          # Iniciar o bot (configuração padrão)
rmbot iniciar --modo termux            # Iniciar no modo Termux
rmbot iniciar --ip 192.168.1.100       # ADB via Wi-Fi
rmbot iniciar --ia minimax             # Forçar algoritmo específico
rmbot iniciar --debug                  # Logs detalhados

rmbot configurar                       # Assistente de configuração
rmbot testar                           # Testar conexão com dispositivo
rmbot calibrar                         # Calibrar posição do tabuleiro
rmbot estatisticas                     # Ver relatório de desempenho
```

---

## 🧠 Como o Bot Funciona

### 1. Captura e Detecção
O bot captura a tela do celular a cada ciclo e identifica:
- Qual tela está sendo exibida (jogo, vitória, derrota, popup...)
- A posição exata do tabuleiro
- O tipo de cada peça por **análise de cor HSV**

### 2. Análise com IA
Com o estado do tabuleiro mapeado, a IA escolhe o melhor movimento:

| Algoritmo | Quando é usado | Característica |
|---|---|---|
| **Beam Search** | Estado normal de jogo | Rápido, bom equilíbrio geral |
| **Minimax** | Fim de fase (≤5 movimentos) | Máxima precisão com poucos movimentos |
| **MCTS** | Início de fase ou situação complexa | Exploratório, bom para incerteza |
| **Híbrido** | Padrão — combina todos | Votação entre algoritmos |

### 3. Execução do Movimento
O movimento é executado com **simulação de comportamento humano**:
- Trajetória em **curva de Bézier** (não em linha reta)
- **Delays variados** (±150ms aleatórios)
- **Desvio leve** nas coordenadas de toque

### 4. Tratamento de Situações
O bot detecta e age automaticamente em:
- ✅ Vitória → clica em "Próxima fase"
- ❌ Derrota → tenta novamente (limite configurável)
- 💥 Power-ups adjacentes → combina automaticamente
- 💤 Sem vidas → aguarda regeneração
- 🔔 Popups → fecha automaticamente
- 🔋 Bateria baixa → pausa o bot

---

## 📊 Estatísticas

```
═══════════════════════════════════════════════════════
       ROYAL MATCH BOT - RELATÓRIO DE DESEMPENHO
═══════════════════════════════════════════════════════
  Fases jogadas:      87
  Vitórias:           79 (90.8%)
  Derrotas:           8
  Fase mais alta:     87
  Pontuação total:    2,847,500
  Tempo total:        4.2h
  Total movimentos:   1,853
  Boosters usados:    12
───────────────────────────────────────────────────────
```

---

## 🔔 Notificações Telegram (Opcional)

1. Crie um bot no Telegram via [@BotFather](https://t.me/botfather)
2. Obtenha o `token` e seu `chat_id`
3. Configure no YAML:
```yaml
estatisticas:
  telegram_token: "SEU_TOKEN"
  telegram_chat_id: "SEU_CHAT_ID"
```

O bot enviará notificações de vitória, derrota e bateria baixa.

---

## ❓ Perguntas Frequentes

**P: Precisa de root?**  
R: Não! Funciona com ADB padrão ou Termux sem root.

**P: Funciona com conexão Wi-Fi?**  
R: Sim! Use `rmbot iniciar --ip SEU_IP_CELULAR`.

**P: O bot pode ser detectado pelo jogo?**  
R: O modo `simular_humano: true` (padrão) usa movimentos naturais e delays variados para minimizar o risco.

**P: Funciona em todos os celulares?**  
R: Funciona em qualquer Android com Depuração USB ativada (modo ADB) ou Termux instalado.

**P: O bot passa TODAS as fases?**  
R: A taxa de vitória varia por fase. O bot usa a melhor estratégia disponível. Fases muito difíceis podem requerer mais tentativas.

**P: Posso usar enquanto o celular faz outras coisas?**  
R: Não — o bot precisa que o Royal Match esteja em primeiro plano.

---

## 🛠️ Desenvolvimento e Testes

```bash
# Instalar dependências de desenvolvimento
pip install -e ".[dev]"

# Executar testes
pytest tests/ -v

# Executar testes com cobertura
pytest tests/ --cov=royal_match_bot --cov-report=term-missing
```

---

## 📁 Estrutura de Arquivos Gerados

```
logs/
├── bot.log              # Log completo do bot
├── estatisticas.json    # Histórico de desempenho
└── screenshots/         # Screenshots opcionais de cada jogada

config/
└── configuracoes.yaml   # Suas configurações personalizadas
```

---

## ⚠️ Aviso Legal

Este bot é um **projeto educacional** de visão computacional e inteligência artificial aplicada a jogos móveis.  
O uso de bots pode violar os termos de serviço do Royal Match.  
Use por sua conta e risco.

---

*Royal Match Bot v2.0.0 — IA Híbrida + Visão Computacional*
