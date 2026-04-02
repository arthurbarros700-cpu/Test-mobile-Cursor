# VX Mechanic Pro

Sistema de mecanica ultra realista e profissional para FiveM, com foco em danos por componentes, reparo tecnico, reposicao de estoque, historico de manutencao, painel NUI elegante e tunagem premium.

## Destaques

- Danos por componentes reais: motor, arrefecimento, ignicao, cambio, embreagem, freios, suspensao, diferencial, pneus, estrutura, combustivel, ECU e turbo.
- Telemetria de desgaste com leitura de velocidade, RPM, frenagem forte, burnout, off-road, impacto e temperatura do motor.
- Orcamentos dinamicos por oficina com mao de obra, pecas, markup e modo de servico.
- Estoque da oficina com reposicao, pedidos pendentes e historico tecnico.
- Tunagem por presets profissionais: OEM Plus, Street Sport, Circuit RS, Drift Master e Offroad Apex.
- Persistencia automatica via JSON ou oxmysql.
- Estrutura pronta para integracao com QBCore, ESX ou uso standalone.

## Estrutura

```text
vx_mechanic_pro/
├── fxmanifest.lua
├── client/main.lua
├── server/main.lua
├── shared/config.lua
├── shared/components.lua
├── shared/utils.lua
├── html/index.html
├── html/style.css
├── html/app.js
├── data/vehicles.json
├── data/stock.json
└── sql/vx_mechanic_pro.sql
```

## Instalacao

1. Coloque a pasta do resource em sua pasta `resources`.
2. Adicione ao `server.cfg`:

```cfg
ensure vx_mechanic_pro
```

3. Se usar banco de dados com `oxmysql`, importe `sql/vx_mechanic_pro.sql`.
4. Ajuste `shared/config.lua` para suas oficinas, jobs e economia.

## Comandos

- `/mecanica` abre a central quando houver um veiculo proximo.
- `F6` abre o painel rapidamente.
- `/mecanica_admin` imprime diagnostico interno no console do servidor.

## Integracao de framework

### Standalone
Funciona imediatamente sem framework para testes, cobranca simulada e persistencia local.

### QBCore
- Detecta `qb-core` automaticamente.
- Remove pagamento de `bank` e `cash`.
- Restringe uso por job se `Config.AllowSelfServiceWithoutJob = false`.

### ESX
- Detecta `es_extended` automaticamente.
- Remove pagamento da conta bancaria e dinheiro em maos.

## Persistencia

### JSON
- `data/vehicles.json`: estado dos veiculos.
- `data/stock.json`: estado do estoque/oficinas.

### oxmysql
- Tabelas `vx_mechanic_vehicles` e `vx_mechanic_workshops`.
- Ativada automaticamente quando `oxmysql` estiver iniciado, ou manualmente via `Config.StorageMode = 'oxmysql'`.

## Customizacao

### Oficinas
Edite `Config.Workshops` para mudar:
- coordenadas
- baias
- taxa de mao de obra
- markup de estoque
- especialidade

### Pecas e materiais
Edite `shared/components.lua`:
- `MechanicCatalog.Components`
- `MechanicCatalog.StockItems`
- `MechanicCatalog.TuningPresets`

## Fluxo do sistema

1. Jogador aproxima do veiculo.
2. Cliente envia telemetria periodica ao servidor.
3. Servidor atualiza desgaste por componente.
4. Painel mostra score geral, alertas, orcamentos e historico.
5. Mecanico executa reparo, troca ou tunagem.
6. Estoque e historico sao atualizados e persistidos.

## Observacoes tecnicas

- O resource foi escrito para ser elegante, modular e facil de expandir.
- A simulacao utiliza os natives do FiveM para refletir condicao do carro no mundo.
- O painel NUI foi mantido sem frameworks externos para facilitar deploy e manutencao.

## Ideias para proxima fase

- Integracao direta com `ox_inventory`
- Ordem de servico multi-mecanico
- Guincho e patio integrado
- Seguro veicular e garantia de pecas
- Modulos por tipo de veiculo (moto, aviao, barco)
- Restricoes por elevador/baia e lift animations
