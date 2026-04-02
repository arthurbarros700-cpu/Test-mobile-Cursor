# Ultra Mechanic Pro (FiveM)

Sistema profissional de mecanica avancada para servidores FiveM, com:

- Dano ultra detalhado por componente (motor, transmissao, freios, suspensao, eletrica, estrutura, combustivel, arrefecimento, tubagem e turbo).
- Degradacao continua por quilometragem, RPM, velocidade e impacto de colisao.
- Painel NUI elegante para diagnostico, geracao de orcamento e inicio de reparo.
- Reparo por niveis (Rapido, Profissional, OEM Premium).
- Estoque de pecas por oficina com compra de reposicao.
- Persistencia completa em banco de dados (oxmysql): veiculos, estoque, orcamentos e historico de reparos.
- Integracao com QBCore, ESX ou standalone via ACE permission.

## Estrutura

```txt
ultra_mechanic/
  fxmanifest.lua
  config.lua
  locales/pt-br.lua
  client/main.lua
  server/main.lua
  web/index.html
  web/style.css
  web/app.js
  sql/ultra_mechanic.sql
```

## Requisitos

- FiveM build recente.
- oxmysql (recomendado para persistencia).
- Opcional: qb-core ou es_extended.

## Instalacao

1. Copie a pasta `ultra_mechanic` para `resources/[local]/ultra_mechanic`.
2. Importe o SQL:
   - Execute `ultra_mechanic/sql/ultra_mechanic.sql` no banco.
3. No `server.cfg`, adicione:
   - `ensure oxmysql`
   - `ensure ultra_mechanic`
4. Configure `config.lua` conforme sua economia e oficinas.

## Permissao / Jobs

### QBCore / ESX

- Defina `Config.Framework = "auto"` (ou `qb` / `esx`) e habilite:
  - `Config.RequireMechanicJob = true`
  - `Config.AllowedJobs = { mechanic = true, ... }`

### Standalone

- Use ACE:
  - `add_ace group.admin ultra_mechanic.use allow`
  - `add_principal identifier.license:SEU_IDENTIFIER group.admin`

## Uso

- Entre em uma oficina configurada.
- Pressione `E` no marker ou use `/mec`.
- Selecione componentes a reparar.
- Gere orcamento.
- Inicie reparo.
- Compre pecas no bloco de estoque quando necessario.

## Personalizacao importante

- Oficinas: `Config.Workshops`
- Pecas/precos: `Config.Parts`
- Componentes e item consumido: `Config.Components`
- Niveis de reparo: `Config.RepairTiers`
- Modelo de desgaste: `BaseWearPerKm`, `CollisionThreshold`, `CollisionScale`
- Economia: `StockSupplierMultiplier`, `EconomyMultiplier`

## Observacoes

- Sem oxmysql, o recurso funciona em modo sem persistencia (apenas memoria).
- O recurso nao substitui scripts de dano visual/cosmetico; ele controla mecanica funcional e estado tecnico.
- Para usar com inventario (qb-inventory, ox_inventory, etc.), voce pode acoplar hooks no `server/main.lua` nos pontos de consumo/compra.
