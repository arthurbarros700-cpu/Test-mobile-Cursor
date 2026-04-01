"""
Interface de linha de comando (CLI) do Royal Match Bot.
Permite iniciar, configurar e monitorar o bot via terminal.
"""

import sys
import os
import argparse
import logging
from pathlib import Path

logger = logging.getLogger("royalmatch.cli")


def criar_parser() -> argparse.ArgumentParser:
    parser = argparse.ArgumentParser(
        prog="rmbot",
        description="Royal Match Bot - Joga automaticamente por você!",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Exemplos de uso:
  rmbot iniciar                          # Iniciar bot com configuração padrão
  rmbot iniciar --modo adb --ip 192.168.1.100  # ADB via Wi-Fi
  rmbot iniciar --modo termux            # Execução direta no celular (Termux)
  rmbot configurar                       # Abrir assistente de configuração
  rmbot estatisticas                     # Ver relatório de desempenho
  rmbot calibrar                         # Calibrar área do tabuleiro
  rmbot testar                           # Testar conexão com dispositivo
        """,
    )

    subparsers = parser.add_subparsers(dest="comando", help="Comando a executar")

    # ── Comando: iniciar ──────────────────────────────────────────────────────
    iniciar = subparsers.add_parser("iniciar", help="Iniciar o bot")
    iniciar.add_argument(
        "--config", "-c",
        default=None,
        metavar="ARQUIVO",
        help="Caminho para arquivo de configuração YAML personalizado",
    )
    iniciar.add_argument(
        "--modo", "-m",
        choices=["adb", "termux"],
        help="Modo de conexão: 'adb' (USB/Wi-Fi) ou 'termux' (direto no celular)",
    )
    iniciar.add_argument(
        "--ip",
        metavar="IP",
        help="Endereço IP do dispositivo para ADB Wi-Fi (ex: 192.168.1.100)",
    )
    iniciar.add_argument(
        "--porta",
        type=int,
        default=5555,
        help="Porta ADB (padrão: 5555)",
    )
    iniciar.add_argument(
        "--ia",
        choices=["beam_search", "minimax", "mcts", "hibrido"],
        help="Algoritmo de IA a usar",
    )
    iniciar.add_argument(
        "--sem-humano",
        action="store_true",
        help="Desativar simulação de comportamento humano (mais rápido, menos seguro)",
    )
    iniciar.add_argument(
        "--debug",
        action="store_true",
        help="Ativar logs de debug detalhados",
    )

    # ── Comando: configurar ───────────────────────────────────────────────────
    configurar = subparsers.add_parser("configurar", help="Assistente de configuração interativo")
    configurar.add_argument(
        "--saida", "-o",
        default=None,
        help="Arquivo de saída para as configurações",
    )

    # ── Comando: estatisticas ─────────────────────────────────────────────────
    subparsers.add_parser("estatisticas", help="Exibir relatório de desempenho")

    # ── Comando: calibrar ─────────────────────────────────────────────────────
    calibrar = subparsers.add_parser(
        "calibrar", help="Calibrar posição do tabuleiro na tela"
    )
    calibrar.add_argument("--config", default=None)

    # ── Comando: testar ───────────────────────────────────────────────────────
    testar = subparsers.add_parser("testar", help="Testar conexão com o dispositivo")
    testar.add_argument("--modo", choices=["adb", "termux"], default="adb")
    testar.add_argument("--ip", default="")
    testar.add_argument("--porta", type=int, default=5555)

    return parser


def cmd_iniciar(args) -> int:
    """Executa o comando 'iniciar'."""
    from .engine import RoyalMatchBot
    from .config.gerenciador_config import GerenciadorConfig

    bot = RoyalMatchBot(caminho_config=args.config)

    # Sobrescrever configurações com argumentos da CLI
    if args.modo:
        bot.cfg.dispositivo.modo = args.modo
    if args.ip:
        bot.cfg.dispositivo.endereco_adb = args.ip
    if args.porta:
        bot.cfg.dispositivo.porta_adb = args.porta
    if args.ia:
        bot.cfg.ia.algoritmo = args.ia
    if args.sem_humano:
        bot.cfg.seguranca.simular_humano = False
    if args.debug:
        from .utils.logger import configurar_logger
        configurar_logger("DEBUG", arquivo_log="logs/bot.log")

    try:
        bot.iniciar()
        return 0
    except Exception as e:
        logger.error(f"Erro fatal: {e}", exc_info=True)
        return 1


def cmd_configurar(args) -> int:
    """Assistente interativo de configuração."""
    print("\n╔══════════════════════════════════════════╗")
    print("║   Royal Match Bot - Configuração         ║")
    print("╚══════════════════════════════════════════╝\n")

    from .config.gerenciador_config import GerenciadorConfig, Configuracoes

    config_path = args.saida or "config/configuracoes_usuario.yaml"
    cfg = GerenciadorConfig().config

    print("Modo de conexão:")
    print("  1) ADB via USB (recomendado para PC)")
    print("  2) ADB via Wi-Fi")
    print("  3) Termux (direto no celular)")
    escolha = input("\nEscolha [1/2/3]: ").strip()

    if escolha == "2":
        cfg.dispositivo.modo = "adb"
        ip = input("Digite o IP do celular (ex: 192.168.1.100): ").strip()
        cfg.dispositivo.endereco_adb = ip
        print(f"  → ADB Wi-Fi configurado: {ip}:5555")
    elif escolha == "3":
        cfg.dispositivo.modo = "termux"
        print("  → Modo Termux selecionado")
    else:
        cfg.dispositivo.modo = "adb"
        print("  → ADB USB selecionado")

    print("\nAlgoritmo de IA:")
    print("  1) Híbrido (recomendado - melhor equilíbrio)")
    print("  2) Beam Search (rápido)")
    print("  3) Minimax (mais preciso, mais lento)")
    print("  4) MCTS (Monte Carlo - exploratório)")
    ia_escolha = input("\nEscolha [1/2/3/4]: ").strip()
    algoritmos = {"1": "hibrido", "2": "beam_search", "3": "minimax", "4": "mcts"}
    cfg.ia.algoritmo = algoritmos.get(ia_escolha, "hibrido")
    print(f"  → IA: {cfg.ia.algoritmo}")

    telegram = input("\nConfigura notificações Telegram? (s/N): ").strip().lower()
    if telegram == "s":
        token = input("Token do bot Telegram: ").strip()
        chat_id = input("Chat ID: ").strip()
        cfg.estatisticas.telegram_token = token
        cfg.estatisticas.telegram_chat_id = chat_id
        print("  → Telegram configurado!")

    GerenciadorConfig().salvar(config_path)
    print(f"\n✓ Configurações salvas em: {config_path}")
    print("  Use: rmbot iniciar --config", config_path)
    return 0


def cmd_estatisticas(args) -> int:
    """Exibe relatório de estatísticas."""
    from .utils.estatisticas import GerenciadorEstatisticas
    stats = GerenciadorEstatisticas()
    print(stats.relatorio_completo())
    return 0


def cmd_testar(args) -> int:
    """Testa conexão com o dispositivo."""
    print(f"\nTestando conexão via {args.modo.upper()}...")

    from .device.fabrica_dispositivo import criar_controlador
    controlador = criar_controlador(
        modo=args.modo,
        endereco_adb=args.ip,
        porta_adb=args.porta,
    )

    if not controlador.conectar():
        print("✗ Falha na conexão. Verifique:")
        if args.modo == "adb":
            print("  - ADB instalado e no PATH?")
            print("  - Cabo USB conectado ou IP correto?")
            print("  - Depuração USB ativada no celular?")
        else:
            print("  - Termux e termux-api instalados?")
            print("  - Permissões concedidas?")
        return 1

    largura, altura = controlador.resolucao
    bateria = controlador.obter_bateria()
    print(f"✓ Conectado com sucesso!")
    print(f"  Resolução: {largura}x{altura}")
    print(f"  Bateria: {bateria}%")

    # Testar captura de tela
    print("  Testando captura de tela...", end="", flush=True)
    from .vision.capturador import Capturador
    capturador = Capturador(controlador)
    frame = capturador.capturar()
    if frame is not None:
        print(f" ✓ ({frame.shape[1]}x{frame.shape[0]}px)")
    else:
        print(" ✗ Falha na captura")

    controlador.desconectar()
    return 0


def cmd_calibrar(args) -> int:
    """Calibra a posição do tabuleiro na tela."""
    print("\nCalibrando área do tabuleiro...")
    print("Certifique-se de que o Royal Match está aberto em uma fase.")

    from .engine import RoyalMatchBot
    bot = RoyalMatchBot(caminho_config=args.config)

    if not bot._conectar_dispositivo():
        print("✗ Falha ao conectar.")
        return 1

    frame = bot.capturador.capturar()
    if frame is None:
        print("✗ Não foi possível capturar a tela.")
        return 1

    _, rect = bot.detector_tabuleiro.detectar_tabuleiro(frame)
    if rect:
        print(f"✓ Tabuleiro detectado!")
        print(f"  Posição: ({rect.x_inicio},{rect.y_inicio}) → ({rect.x_fim},{rect.y_fim})")
        print(f"  Tamanho célula: {rect.largura_celula:.0f}x{rect.altura_celula:.0f}px")
    else:
        print("✗ Tabuleiro não detectado. Verifique se está em uma fase ativa.")

    bot.controlador.desconectar()
    return 0


def main() -> int:
    """Ponto de entrada principal do CLI."""
    parser = criar_parser()
    args = parser.parse_args()

    if args.comando is None:
        parser.print_help()
        return 0

    comandos = {
        "iniciar": cmd_iniciar,
        "configurar": cmd_configurar,
        "estatisticas": cmd_estatisticas,
        "testar": cmd_testar,
        "calibrar": cmd_calibrar,
    }

    func = comandos.get(args.comando)
    if func:
        return func(args)

    parser.print_help()
    return 0


if __name__ == "__main__":
    sys.exit(main())
