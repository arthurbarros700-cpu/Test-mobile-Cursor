package com.royalmatchbot.vision

import android.graphics.Bitmap
import android.graphics.Color
import android.graphics.Rect
import com.royalmatchbot.models.*
import timber.log.Timber
import kotlin.math.abs
import kotlin.math.sqrt

/**
 * Motor de visão computacional para análise da tela do Royal Match.
 *
 * Responsável por:
 * - Detectar o estado atual da tela do jogo
 * - Identificar as peças no tabuleiro
 * - Localizar botões e elementos de UI
 * - Extrair informações de movimentos restantes
 */
class AnalisadorTela {

    companion object {
        // Proporções relativas ao tamanho da tela (ajuste conforme resolução)
        private const val PROPORCAO_TABULEIRO_X = 0.03f
        private const val PROPORCAO_TABULEIRO_Y = 0.25f
        private const val PROPORCAO_TABULEIRO_LARGURA = 0.94f
        private const val PROPORCAO_TABULEIRO_ALTURA = 0.55f

        // Tolerância de cor para identificação de peças
        private const val TOLERANCIA_COR = 45

        // Cores de referência de cada tipo de peça (RGB médio)
        private val CORES_PECAS = mapOf(
            TipoPeca.VERMELHO to intArrayOf(210, 50, 50),
            TipoPeca.AZUL to intArrayOf(50, 100, 210),
            TipoPeca.VERDE to intArrayOf(50, 180, 70),
            TipoPeca.AMARELO to intArrayOf(230, 200, 50),
            TipoPeca.ROXO to intArrayOf(140, 50, 200),
            TipoPeca.LARANJA to intArrayOf(230, 130, 30)
        )

        // Cores para peças especiais
        private val CORES_ESPECIAIS = mapOf(
            TipoPeca.ESPECIAL_FOGUETE_H to intArrayOf(255, 255, 100),
            TipoPeca.ESPECIAL_FOGUETE_V to intArrayOf(100, 255, 255),
            TipoPeca.ESPECIAL_TNT to intArrayOf(255, 100, 20),
            TipoPeca.ESPECIAL_ARCO_IRIS to intArrayOf(200, 200, 200),
            TipoPeca.ESPECIAL_PROPELLER to intArrayOf(100, 200, 255)
        )
    }

    private var larguraTela: Int = 1080
    private var alturaTela: Int = 2340
    private var regiaoTabuleiroCache: RegiaoTela? = null

    fun atualizarResolucao(largura: Int, altura: Int) {
        larguraTela = largura
        alturaTela = altura
        regiaoTabuleiroCache = null
    }

    /**
     * Analisa um screenshot da tela e detecta o estado atual do jogo.
     */
    fun analisarTela(screenshot: Bitmap): DeteccaoTela {
        return try {
            val estaNoJogo = detectarJogoAtivo(screenshot)
            val faseAtiva = if (estaNoJogo) detectarFaseAtiva(screenshot) else false
            val movimentos = if (faseAtiva) extrairMovimentosRestantes(screenshot) else null
            val numeroFase = if (estaNoJogo) extrairNumeroFase(screenshot) else null
            val temBotaoJogar = detectarBotaoJogar(screenshot)
            val temColetarRecompensa = detectarBotaoColetarRecompensa(screenshot)
            val temPopupVidas = detectarPopupVidas(screenshot)
            val temPopupDerrota = detectarPopupDerrota(screenshot)
            val temPopupVitoria = detectarPopupVitoria(screenshot)

            DeteccaoTela(
                estaNoJogo = estaNoJogo,
                faseAtiva = faseAtiva,
                numeroFase = numeroFase,
                movimentosRestantes = movimentos,
                temBotaoJogar = temBotaoJogar,
                temBotaoColetarRecompensa = temColetarRecompensa,
                temPopupVidas = temPopupVidas,
                temPopupDerrota = temPopupDerrota,
                temPopupVitoria = temPopupVitoria,
                regiaoBotaoJogar = if (temBotaoJogar) calcularRegiaoBotaoJogar() else null,
                regiaoTabuleiro = if (faseAtiva) calcularRegiaoTabuleiro() else null
            )
        } catch (e: Exception) {
            Timber.e(e, "Erro ao analisar tela")
            DeteccaoTela(
                estaNoJogo = false,
                faseAtiva = false,
                numeroFase = null,
                movimentosRestantes = null,
                temBotaoJogar = false,
                temBotaoColetarRecompensa = false,
                temPopupVidas = false,
                temPopupDerrota = false,
                temPopupVitoria = false
            )
        }
    }

    /**
     * Analisa o tabuleiro e retorna a matriz de peças.
     */
    fun analisarTabuleiro(screenshot: Bitmap): Tabuleiro {
        val regiao = calcularRegiaoTabuleiro()
        val celulas = Array(8) { linha ->
            Array(8) { coluna ->
                val celula = extrairCelula(screenshot, regiao, linha, coluna)
                celula
            }
        }

        val movimentos = extrairMovimentosRestantes(screenshot) ?: 0
        val pontuacao = extrairPontuacao(screenshot)

        return Tabuleiro(
            celulas = celulas,
            movimentosRestantes = movimentos,
            pontuacaoAtual = pontuacao
        )
    }

    private fun extrairCelula(
        screenshot: Bitmap,
        regiao: RegiaoTela,
        linha: Int,
        coluna: Int
    ): Celula {
        val larguraCelula = regiao.largura / 8
        val alturaCelula = regiao.altura / 8

        val inicioX = regiao.x + (coluna * larguraCelula) + (larguraCelula * 0.2).toInt()
        val inicioY = regiao.y + (linha * alturaCelula) + (alturaCelula * 0.2).toInt()
        val fimX = regiao.x + (coluna * larguraCelula) + (larguraCelula * 0.8).toInt()
        val fimY = regiao.y + (linha * alturaCelula) + (alturaCelula * 0.8).toInt()

        val corMedia = calcularCorMedia(screenshot, inicioX, inicioY, fimX, fimY)
        val tipo = identificarTipoPeca(corMedia)
        val especial = verificarPecaEspecial(corMedia)
        val travada = verificarCelulaTravada(screenshot, inicioX, inicioY, fimX, fimY)
        val cobertaGelo = verificarGelo(screenshot, inicioX, inicioY, fimX, fimY)

        return Celula(
            linha = linha,
            coluna = coluna,
            tipo = tipo,
            especial = especial,
            travada = travada,
            cobertaGelo = cobertaGelo
        )
    }

    private fun calcularCorMedia(
        bitmap: Bitmap,
        x1: Int,
        y1: Int,
        x2: Int,
        y2: Int
    ): IntArray {
        var somaR = 0L
        var somaG = 0L
        var somaB = 0L
        var contador = 0

        val x1Safe = x1.coerceIn(0, bitmap.width - 1)
        val y1Safe = y1.coerceIn(0, bitmap.height - 1)
        val x2Safe = x2.coerceIn(0, bitmap.width - 1)
        val y2Safe = y2.coerceIn(0, bitmap.height - 1)

        var y = y1Safe
        while (y <= y2Safe) {
            var x = x1Safe
            while (x <= x2Safe) {
                val pixel = bitmap.getPixel(x, y)
                somaR += Color.red(pixel)
                somaG += Color.green(pixel)
                somaB += Color.blue(pixel)
                contador++
                x += 3
            }
            y += 3
        }

        if (contador == 0) return intArrayOf(0, 0, 0)
        return intArrayOf(
            (somaR / contador).toInt(),
            (somaG / contador).toInt(),
            (somaB / contador).toInt()
        )
    }

    private fun identificarTipoPeca(cor: IntArray): TipoPeca {
        var melhorTipo = TipoPeca.VAZIO
        var menorDistancia = Double.MAX_VALUE

        for ((tipo, corRef) in CORES_PECAS) {
            val distancia = distanciaEuclidiana(cor, corRef)
            if (distancia < menorDistancia) {
                menorDistancia = distancia
                melhorTipo = tipo
            }
        }

        if (menorDistancia > TOLERANCIA_COR * 2.5) {
            for ((tipo, corRef) in CORES_ESPECIAIS) {
                val distancia = distanciaEuclidiana(cor, corRef)
                if (distancia < menorDistancia) {
                    menorDistancia = distancia
                    melhorTipo = tipo
                }
            }
        }

        return if (menorDistancia > TOLERANCIA_COR * 3) TipoPeca.VAZIO else melhorTipo
    }

    private fun distanciaEuclidiana(cor1: IntArray, cor2: IntArray): Double {
        val dr = (cor1[0] - cor2[0]).toDouble()
        val dg = (cor1[1] - cor2[1]).toDouble()
        val db = (cor1[2] - cor2[2]).toDouble()
        return sqrt(dr * dr + dg * dg + db * db)
    }

    private fun verificarPecaEspecial(cor: IntArray): Boolean {
        return CORES_ESPECIAIS.any { (_, corRef) ->
            distanciaEuclidiana(cor, corRef) < TOLERANCIA_COR
        }
    }

    private fun verificarCelulaTravada(
        bitmap: Bitmap, x1: Int, y1: Int, x2: Int, y2: Int
    ): Boolean {
        val corMedia = calcularCorMedia(bitmap, x1, y1, x2, y2)
        val brilho = (corMedia[0] + corMedia[1] + corMedia[2]) / 3
        return brilho < 30
    }

    private fun verificarGelo(
        bitmap: Bitmap, x1: Int, y1: Int, x2: Int, y2: Int
    ): Boolean {
        val corMedia = calcularCorMedia(bitmap, x1, y1, x2, y2)
        return corMedia[0] > 180 && corMedia[1] > 200 && corMedia[2] > 220 &&
                abs(corMedia[0] - corMedia[2]) < 30
    }

    private fun detectarJogoAtivo(bitmap: Bitmap): Boolean {
        val centroX = larguraTela / 2
        val centroY = alturaTela / 2
        val corCentro = calcularCorMedia(
            bitmap,
            centroX - 50,
            centroY - 50,
            centroX + 50,
            centroY + 50
        )
        val brilho = (corCentro[0] + corCentro[1] + corCentro[2]) / 3
        return brilho > 20
    }

    private fun detectarFaseAtiva(bitmap: Bitmap): Boolean {
        val regiaoTabuleiro = calcularRegiaoTabuleiro()
        val amostras = listOf(
            Pair(regiaoTabuleiro.x + regiaoTabuleiro.largura / 4, regiaoTabuleiro.y + regiaoTabuleiro.altura / 4),
            Pair(regiaoTabuleiro.x + 3 * regiaoTabuleiro.largura / 4, regiaoTabuleiro.y + regiaoTabuleiro.altura / 4),
            Pair(regiaoTabuleiro.x + regiaoTabuleiro.largura / 2, regiaoTabuleiro.y + regiaoTabuleiro.altura / 2)
        )

        var varianciaTotal = 0.0
        for ((x, y) in amostras) {
            val cor = calcularCorMedia(bitmap, x - 10, y - 10, x + 10, y + 10)
            varianciaTotal += cor[0] + cor[1] + cor[2]
        }

        return varianciaTotal / (amostras.size * 3) > 40
    }

    private fun extrairMovimentosRestantes(bitmap: Bitmap): Int? {
        // Região onde o contador de movimentos aparece (ajustável por resolução)
        val regiaoX = (larguraTela * 0.38f).toInt()
        val regiaoY = (alturaTela * 0.12f).toInt()
        val regiaoLargura = (larguraTela * 0.24f).toInt()
        val regiaoAltura = (alturaTela * 0.07f).toInt()

        val corMedia = calcularCorMedia(
            bitmap,
            regiaoX,
            regiaoY,
            regiaoX + regiaoLargura,
            regiaoY + regiaoAltura
        )

        // Detecção simplificada baseada em análise de cor
        // Em produção, usar OCR (ML Kit Text Recognition)
        return if (corMedia[0] > 150 || corMedia[1] > 150 || corMedia[2] > 150) {
            estimarMovimentos(bitmap, regiaoX, regiaoY, regiaoLargura, regiaoAltura)
        } else null
    }

    private fun estimarMovimentos(
        bitmap: Bitmap, x: Int, y: Int, largura: Int, altura: Int
    ): Int {
        // Contagem aproximada de pixels brancos/claros (representam dígitos)
        var pixelsClaros = 0
        var y2 = y
        while (y2 < y + altura) {
            var x2 = x
            while (x2 < x + largura) {
                val pixel = bitmap.getPixel(
                    x2.coerceIn(0, bitmap.width - 1),
                    y2.coerceIn(0, bitmap.height - 1)
                )
                val brilho = (Color.red(pixel) + Color.green(pixel) + Color.blue(pixel)) / 3
                if (brilho > 200) pixelsClaros++
                x2 += 2
            }
            y2 += 2
        }

        return when {
            pixelsClaros > 500 -> (pixelsClaros / 200).coerceIn(1, 99)
            pixelsClaros > 200 -> (pixelsClaros / 100).coerceIn(1, 50)
            else -> 10
        }
    }

    private fun extrairNumeroFase(bitmap: Bitmap): Int? {
        // Região do número da fase (topo da tela)
        val regiaoY = (alturaTela * 0.05f).toInt()
        val corMedia = calcularCorMedia(
            bitmap,
            larguraTela / 3,
            regiaoY,
            2 * larguraTela / 3,
            regiaoY + (alturaTela * 0.05f).toInt()
        )
        val brilho = (corMedia[0] + corMedia[1] + corMedia[2]) / 3
        return if (brilho > 100) 1 else null
    }

    private fun extrairPontuacao(bitmap: Bitmap): Int {
        return 0
    }

    private fun detectarBotaoJogar(bitmap: Bitmap): Boolean {
        val regiaoX = (larguraTela * 0.15f).toInt()
        val regiaoY = (alturaTela * 0.75f).toInt()
        val corMedia = calcularCorMedia(
            bitmap,
            regiaoX,
            regiaoY,
            regiaoX + (larguraTela * 0.70f).toInt(),
            regiaoY + (alturaTela * 0.08f).toInt()
        )
        // Botão de jogar tem cor azul/verde brilhante
        return corMedia[1] > 150 && corMedia[1] > corMedia[0] && corMedia[1] > corMedia[2]
    }

    private fun detectarBotaoColetarRecompensa(bitmap: Bitmap): Boolean {
        val regiaoX = (larguraTela * 0.15f).toInt()
        val regiaoY = (alturaTela * 0.80f).toInt()
        val corMedia = calcularCorMedia(
            bitmap,
            regiaoX,
            regiaoY,
            regiaoX + (larguraTela * 0.70f).toInt(),
            regiaoY + (alturaTela * 0.06f).toInt()
        )
        // Botão de coletar recompensa tem cor dourada/laranja
        return corMedia[0] > 200 && corMedia[1] > 150 && corMedia[2] < 100
    }

    private fun detectarPopupVidas(bitmap: Bitmap): Boolean {
        val centroX = larguraTela / 2
        val centroY = alturaTela / 2
        val corCentro = calcularCorMedia(
            bitmap,
            centroX - 100,
            centroY - 200,
            centroX + 100,
            centroY + 200
        )
        // Popup de vidas tem fundo azul claro ou verde
        return corCentro[2] > 150 && corCentro[2] > corCentro[0]
    }

    private fun detectarPopupDerrota(bitmap: Bitmap): Boolean {
        val corTopo = calcularCorMedia(
            bitmap,
            larguraTela / 4,
            (alturaTela * 0.2f).toInt(),
            3 * larguraTela / 4,
            (alturaTela * 0.4f).toInt()
        )
        // Popup de derrota tem tons vermelhos escuros
        return corTopo[0] > 150 && corTopo[0] > corTopo[1] * 1.5 && corTopo[0] > corTopo[2] * 1.5
    }

    private fun detectarPopupVitoria(bitmap: Bitmap): Boolean {
        val corTopo = calcularCorMedia(
            bitmap,
            larguraTela / 4,
            (alturaTela * 0.15f).toInt(),
            3 * larguraTela / 4,
            (alturaTela * 0.35f).toInt()
        )
        // Popup de vitória tem dourado/amarelo brilhante
        return corTopo[0] > 200 && corTopo[1] > 180 && corTopo[2] < 100
    }

    private fun calcularRegiaoTabuleiro(): RegiaoTela {
        return regiaoTabuleiroCache ?: RegiaoTela(
            x = (larguraTela * PROPORCAO_TABULEIRO_X).toInt(),
            y = (alturaTela * PROPORCAO_TABULEIRO_Y).toInt(),
            largura = (larguraTela * PROPORCAO_TABULEIRO_LARGURA).toInt(),
            altura = (alturaTela * PROPORCAO_TABULEIRO_ALTURA).toInt()
        ).also { regiaoTabuleiroCache = it }
    }

    private fun calcularRegiaoBotaoJogar(): RegiaoTela {
        return RegiaoTela(
            x = (larguraTela * 0.15f).toInt(),
            y = (alturaTela * 0.75f).toInt(),
            largura = (larguraTela * 0.70f).toInt(),
            altura = (alturaTela * 0.08f).toInt()
        )
    }

    fun calcularPosicaoCelula(linha: Int, coluna: Int): Pair<Int, Int> {
        val regiao = calcularRegiaoTabuleiro()
        val larguraCelula = regiao.largura / 8
        val alturaCelula = regiao.altura / 8

        val x = regiao.x + (coluna * larguraCelula) + larguraCelula / 2
        val y = regiao.y + (linha * alturaCelula) + alturaCelula / 2

        return Pair(x, y)
    }
}
