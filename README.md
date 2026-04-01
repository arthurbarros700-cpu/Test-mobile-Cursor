# 🎮 Royal Match Bot v2.0

Bot profissional e completamente automatizado para **Royal Match** no Android.
Deixe o celular e ele joga sozinho — passa fases, fecha popups, coleta recompensas e mantém estatísticas detalhadas.

---

## ✨ Funcionalidades

| Módulo | Descrição |
|---|---|
| **Controle ADB** | Conecta ao celular via USB ou Wi-Fi sem root |
| **Visão Computacional** | OpenCV detecta peças, tabuleiro e estado da tela |
| **Inteligência Artificial** | Motor de busca com pontuação ponderada e lookahead |
| **Máquina de Estados** | Navega menus, abre fases, trata popups automaticamente |
| **Interface Gráfica** | PyQt5 com tema escuro, preview ao vivo e dashboard |
| **Estatísticas** | Taxa de vitória, movimentos, tempo, histórico de sessões |
| **Configurações** | Delay, dificuldade, limites de sessão, tudo configurável |

---

## 📋 Pré-requisitos

### No computador
- Python 3.9 ou superior
- ADB (Android Debug Bridge) instalado e no PATH
- Git (opcional, para clonar o repositório)

### No celular Android
1. Vá em **Configurações → Sobre o telefone**
2. Toque em **Número da versão** 7 vezes para ativar o Modo Desenvolvedor
3. Vá em **Configurações → Opções do Desenvolvedor**
4. Ative **Depuração USB** (e opcionalmente **Depuração sem fio**)
5. Conecte o celular via USB e autorize a depuração

---

## 🚀 Instalação Rápida

### Linux / macOS
```bash
# Clone o repositório
git clone <url-do-repositorio> royalmatch_bot_proj
cd royalmatch_bot_proj

# Execute o instalador
chmod +x scripts/instalar.sh
./scripts/instalar.sh

# Inicie o bot
~/.royalmatch_bot/iniciar_bot.sh
```

### Windows
```bat
REM Clone ou baixe e extraia o repositório
REM Clique duas vezes em:
scripts\instalar_windows.bat
```
Um atalho **Royal Match Bot** será criado na Área de Trabalho.

### Instalação manual (qualquer SO)
```bash
# Crie e ative o ambiente virtual
python -m venv venv
source venv/bin/activate        # Linux/macOS
# OU
venv\Scripts\activate           # Windows

# Instale as dependências
pip install -r requirements.txt

# Inicie
python -m royalmatch_bot.ui.app
```

---

## 🎯 Como Usar

1. **Instale o bot** usando um dos métodos acima.
2. **Conecte o celular** via USB com Depuração USB ativada.
   - Ou abra o Royal Match no celular e ative a depuração sem fio:
     `adb tcpip 5555` → coloque o IP do celular nas configurações do bot.
3. **Abra o bot** — a interface gráfica será exibida.
4. Clique em **🔄** para listar os dispositivos conectados.
5. Selecione o dispositivo na lista.
6. Ajuste as configurações na aba **⚙️ Configurações** (opcional).
7. Clique em **▶ INICIAR BOT**.
8. Pronto! O bot vai:
   - Abrir o Royal Match automaticamente
   - Navegar pelo mapa
   - Jogar todas as fases
   - Fechar popups e notificações
   - Coletar recompensas
   - Reiniciar fases perdidas

---

## ⚙️ Configurações Disponíveis

| Parâmetro | Padrão | Descrição |
|---|---|---|
| Serial ADB | (auto) | Deixe vazio para conectar ao primeiro dispositivo |
| IP do dispositivo | (vazio) | Para conexão Wi-Fi (TCP/IP) |
| Porta ADB | 5555 | Porta padrão ADB via Wi-Fi |
| Modo de dificuldade | NORMAL | FACIL / NORMAL / EXPERT |
| Delay entre movimentos | 0.6s | Pausa entre cada jogada |
| Variação do delay | ±0.2s | Torna o comportamento mais humano |
| Máx. tentativas por fase | 5 | Pula a fase após N derrotas |
| Tempo máx. de sessão | 480 min | 0 = sem limite |
| Fases por sessão | 0 | 0 = sem limite |
| Parar com bateria abaixo | 20% | Protege a bateria |
| Usar boosters | Não | Usar itens especiais automaticamente |
| Aceitar vidas | Sim | Aceita vidas enviadas por amigos |
| Fechar popups | Sim | Descarta notificações e ofertas |

---

## 🧠 Modos de Inteligência

### FACIL
- Escolha aleatória entre os 3 melhores movimentos
- Parece mais humano, menor pontuação média
- Ideal para jogo casual

### NORMAL *(padrão)*
- Balanceia pontuação e naturalidade
- Lookahead de 1 nível (prevê combos em cascata)
- Detecta e usa peças especiais (bombas, foguetes, bola mágica)

### EXPERT
- Maximiza pontuação em cada jogada
- Lookahead profundo
- Prioriza combos de 4 e 5 para criar peças especiais
- Jogo mais rápido e eficiente

---

## 📊 Estatísticas

O bot registra automaticamente:
- Número de fases completadas e taxa de vitória
- Total de movimentos executados
- Tempo de cada fase e total de sessão
- Histórico completo salvo em `~/.royalmatch_bot/stats/`

---

## 🏗️ Arquitetura do Projeto

```
royalmatch_bot/
├── adb/
│   └── device_manager.py   ← Controle ADB (screenshot, toque, swipe)
├── vision/
│   └── detector.py         ← Visão computacional (OpenCV)
├── ai/
│   └── solver.py           ← Motor de IA e estratégia
├── core/
│   ├── bot_engine.py       ← Máquina de estados principal
│   ├── configuracao.py     ← Configurações persistentes (YAML)
│   └── estatisticas.py     ← Registro de sessões (JSON)
├── ui/
│   └── app.py              ← Interface gráfica PyQt5
└── assets/
    └── templates/          ← Imagens de referência (botões, popups)
scripts/
├── instalar.sh             ← Instalador Linux/macOS
└── instalar_windows.bat    ← Instalador Windows
```

---

## 🔧 Solução de Problemas

### "Nenhum dispositivo encontrado"
- Verifique se a Depuração USB está ativa no celular
- Execute `adb devices` no terminal — o dispositivo deve aparecer como `device`
- Tente outro cabo USB ou porta

### "Royal Match não está instalado"
- Abra a Play Store, instale o Royal Match e tente novamente

### O bot toca em lugares errados
- A detecção visual precisa dos templates. Para o seu celular, capture screenshots
  do botão "Jogar", "Continuar" etc. e salve em `royalmatch_bot/assets/templates/`
  com os nomes esperados (veja `DetectorVisao._template_match`)

### Conexão Wi-Fi (sem fio)
```bash
# Conecte o celular via USB primeiro, depois:
adb tcpip 5555
# Desconecte o USB e anote o IP do celular (Configurações → Wi-Fi → detalhes)
# No bot, coloque o IP na aba Configurações → "IP do dispositivo"
```

---

## ⚠️ Aviso Legal

Este software é para uso pessoal e educacional. O uso de bots pode violar os
Termos de Serviço do Royal Match. O autor não se responsabiliza por banimentos
ou qualquer consequência decorrente do uso desta ferramenta.

---

## 📄 Licença

MIT License — use, modifique e distribua livremente.
