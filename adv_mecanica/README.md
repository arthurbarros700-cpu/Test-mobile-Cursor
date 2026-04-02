# ADV Mecânica – Sistema Avançado de Mecânica Veicular para FiveM

![FiveM](https://img.shields.io/badge/FiveM-Resource-blue) ![Framework](https://img.shields.io/badge/Framework-QBX%20%7C%20QBCore%20%7C%20ESX-orange) ![Lua](https://img.shields.io/badge/Lua-5.4-green)

## Visão Geral

Script de mecânica ultra-realista e profissional com mais de **50 peças individuais**, sistema de danos físicos persistentes, painel NUI elegante, gestão de estoque, sistema de XP/nível e muito mais.

---

## Funcionalidades

### Danos Realistas
- Rastreamento individual de **50+ componentes** (motor, câmbio, suspensão, freios, pneus, carroceria, fluidos, escapamento, iluminação)
- Consequências mecânicas em tempo real:
  - Queda de potência com motor danificado
  - Derrapagem com freios desgastados
  - Pneus furados rebentam fisicamente
  - Superaquecimento com coolant baixo
  - Dano progressivo com óleo crítico
  - Partículas de vapor e vazamento de óleo

### Oficina & Reparo
- Zonas de workshop configuráveis (tipo `full`, `basic`, `tuning`)
- Elevador animado com interpolação suave
- Fila de reparos sequencial com animações contextuais por peça
- Minigame de skillcheck (via `ox_lib`) por dificuldade de grupo
- Desconto por nível de habilidade do mecânico

### Painel NUI
- Interface dark industrial com tema laranja e glassmorph
- Abas por grupo de peça com badge de alertas
- Cards de peça com barra de saúde, condição e custo
- Painel de diagnóstico ao vivo (fluidos + carroceria)
- Diagrama de carroceria com código de cores
- Painel de estoque com busca e compra rápida
- Tela de estatísticas com gráfico de barras e XP

### Sistema de Estoque
- Estoque por item com limite configurável
- Alertas automáticos de estoque baixo
- Reabastecimento automático por timer
- Painel de pedido de restock (acesso boss)

### Sistema de XP / Níveis
| Nível | Nome | XP | Desconto |
|-------|------|-----|---------|
| 1 | Aprendiz | 0 | 0% |
| 2 | Auxiliar | 500 | 5% |
| 3 | Mecânico | 1.500 | 10% |
| 4 | Especialista | 4.000 | 15% |
| 5 | Mestre | 10.000 | 20% |

### Reboque (Tow)
- Corda de reboque física entre caminhão e veículo
- Conexão / desconexão com animação
- Custo de chamado configurável

---

## Dependências

| Recurso | Obrigatório |
|---------|-------------|
| [ox_lib](https://github.com/overextended/ox_lib) | ✅ |
| [oxmysql](https://github.com/overextended/oxmysql) | ✅ |
| [ox_inventory](https://github.com/overextended/ox_inventory) | ✅ |
| [qbx_core](https://github.com/Qbox-project/qbx_core) | ✅ (ou qb-core/ESX) |

---

## Instalação

1. Coloque a pasta `adv_mecanica` em `resources/[custom]/`
2. Execute o arquivo `sql/install.sql` no seu banco de dados
3. Adicione `ensure adv_mecanica` ao seu `server.cfg`
4. Configure `config.lua` com suas localizações e preferências
5. Adicione os itens ao `ox_inventory` (veja lista abaixo)

### Itens necessários no ox_inventory

```lua
-- ox_inventory/data/items.lua
['motor_kit']        = { label = 'Kit de Motor',          weight = 5000 },
['engine_mount']     = { label = 'Coxim de Motor',        weight = 800  },
['radiator']         = { label = 'Radiador',              weight = 3000 },
['alternator']       = { label = 'Alternador',            weight = 2000 },
['car_battery']      = { label = 'Bateria Automotiva',    weight = 1500 },
['serpentine_belt']  = { label = 'Correia Dentada',       weight = 200  },
['turbo_kit']        = { label = 'Kit Turbo',             weight = 4000 },
['gearbox']          = { label = 'Caixa de Câmbio',       weight = 8000 },
['clutch_plate']     = { label = 'Disco de Embreagem',    weight = 1200 },
['driveshaft']       = { label = 'Semi-Eixo',             weight = 4000 },
['suspension_kit']   = { label = 'Kit de Suspensão',      weight = 3000 },
['brake_disc']       = { label = 'Disco de Freio',        weight = 2000 },
['brake_fluid']      = { label = 'Fluido de Freio',       weight = 500  },
['tyre']             = { label = 'Pneu',                  weight = 8000 },
['alloy_rim']        = { label = 'Roda em Liga Leve',     weight = 9000 },
['body_panel']       = { label = 'Painel de Carroceria',  weight = 5000 },
['bumper']           = { label = 'Para-choque',           weight = 3000 },
['windshield_glass'] = { label = 'Para-brisa',            weight = 4000 },
['window_glass']     = { label = 'Vidro Lateral',         weight = 1500 },
['engine_oil']       = { label = 'Óleo de Motor',         weight = 1000 },
['coolant']          = { label = 'Fluido de Arrefecimento', weight = 500 },
['fuel_filter']      = { label = 'Filtro de Combustível', weight = 200  },
['exhaust_pipe']     = { label = 'Tubo de Escape',        weight = 4000 },
['cat_converter']    = { label = 'Catalisador',           weight = 3000 },
['headlight_assy']   = { label = 'Farol Dianteiro',       weight = 2000 },
['taillight_assy']   = { label = 'Lanterna Traseira',     weight = 1500 },
```

---

## Estrutura de Arquivos

```
adv_mecanica/
├── fxmanifest.lua
├── config.lua
├── client/
│   ├── main.lua          # Workshop, tow, contexto, blips
│   ├── damage.lua        # Motor de danos realistas
│   ├── animations.lua    # Animações contextuais por peça
│   ├── minigame.lua      # Skillcheck e pattern game
│   └── ui.lua            # Ponte NUI, HUD overlay, comandos
├── server/
│   ├── main.lua          # Workflow de reparo, pagamentos
│   ├── database.lua      # Persistência oxmysql, XP, histórico
│   └── stock.lua         # Gerenciamento de estoque e restock
├── ui/
│   ├── index.html
│   ├── css/style.css
│   └── js/
│       ├── app.js        # Aplicação NUI completa
│       └── particles.js  # Partículas de fundo (brasas)
├── locales/
│   └── pt-BR.lua
└── sql/
    └── install.sql
```

---

## Comandos

| Comando | Descrição |
|---------|-----------|
| `/mecanica` | Abre o painel da oficina (requer estar em zona) |
| `/inspecionar` | Gera laudo de inspeção do veículo próximo |

---

## Configuração Rápida

```lua
-- Trocar framework
Config.Framework = 'qbx'   -- 'qbx' | 'qb' | 'esx'

-- Localização da oficina
Config.Workshops[1].coords = vector3(360.0, -163.7, 39.2)

-- Habilitar/desabilitar minigame
Config.Minigame.enabled = true
Config.Minigame.type    = 'skillcheck'  -- 'skillcheck' | 'none'

-- Drenagem de fluidos
Config.Fluids.oilDrainRate = 0.00008  -- menor = drena mais devagar
```
