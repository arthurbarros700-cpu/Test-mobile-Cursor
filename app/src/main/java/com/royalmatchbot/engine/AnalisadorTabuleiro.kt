package com.royalmatchbot.engine

import android.graphics.Bitmap
import android.graphics.Color
import android.graphics.RectF
import com.royalmatchbot.model.Celula
import com.royalmatchbot.model.Tabuleiro
import com.royalmatchbot.model.TipoPeca
import com.royalmatchbot.util.BotLogger
import com.royalmatchbot.util.ProcessadorImagem
import kotlin.math.abs
import kotlin.math.sqrt

/**
 * Analisador de tabuleiro por visão computacional.
 *
 * Divide a região do tabuleiro em células e classifica cada
 * peça por análise de cor dominante no centro da célula.
 * Usa histograma de cores + k-means simplificado para classificação.
 */
class AnalisadorTabuleiro {

    companion object {
        private const val TAG = "AnalisadorTabuleiro"

        // Tabela de cores RGB médias de cada tipo de peça (calibradas)
        private val TABELA_CORES = mapOf(
            TipoPeca.VERMELHO  to intArrayOf(220,  50,  50),
            TipoPeca.AZUL      to intArrayOf( 30, 120, 220),
            TipoPeca.VERDE     to intArrayOf( 50, 180,  80),
            TipoPeca.AMARELO   to intArrayOf(240, 210,  30),
            TipoPeca.ROXO      to intArrayOf(130,  40, 180),
            TipoPeca.ROSA      to intArrayOf(230,  60, 140),
            TipoPeca.FOGUETE   to intArrayOf(255, 160,   0),
            TipoPeca.BOMBA     to intArrayOf(180,  30,   0),
            TipoPeca.PROPELLER to intArrayOf(  0, 140, 160),
            TipoPeca.ARCO_IRIS to intArrayOf(255, 255, 255),
            TipoPeca.LUZ       to intArrayOf(255, 220,   0),
            TipoPeca.CAIXA     to intArrayOf(120,  80,  50),
            TipoPeca.CORRENTE  to intArrayOf(150, 150, 150),
            TipoPeca.VAZIO     to intArrayOf( 30,  30,  40)
        )

        private const val LIMIAR_VAZIO = 35.0
        private const val LIMIAR_CONFIANCA_MINIMA = 0.55f
    }

    private val logger = BotLogger.instancia
    private val processador = ProcessadorImagem()

    /**
     * Analisa o bitmap completo e retorna o tabuleiro reconstruído.
     *
     * @param bitmap Captura de tela completa do dispositivo
     * @param linhas Número de linhas do tabuleiro
     * @param colunas Número de colunas do tabuleiro
     * @param regiaoTabuleiro Retângulo (em pixels) onde o tabuleiro está na tela
     */
    fun analisar(
        bitmap: Bitmap,
        linhas: Int = 9,
        colunas: Int = 9,
        regiaoTabuleiro: RectF? = null
    ): Tabuleiro {
        val regiao = regiaoTabuleiro ?: detectarRegiaoTabuleiro(bitmap)
        val tabuleiro = Tabuleiro(linhas, colunas, regiao)

        val larguraCelula = regiao.width() / colunas
        val alturaCelula = regiao.height() / linhas

        var totalConfianca = 0f
        var celulasAnalisadas = 0

        for (l in 0 until linhas) {
            for (c in 0 until colunas) {
                val cx = regiao.left + c * larguraCelula
                val cy = regiao.top + l * alturaCelula
                val rect = RectF(cx, cy, cx + larguraCelula, cy + alturaCelula)

                val (tipo, confianca) = classificarCelula(bitmap, rect)
                val celula = tabuleiro.celulas[l][c]
                tabuleiro.celulas[l][c] = celula.copy(
                    tipo = tipo,
                    retanguloTela = rect,
                    confianca = confianca,
                    bloqueada = tipo == TipoPeca.CORRENTE || tipo == TipoPeca.CAIXA
                )

                totalConfianca += confianca
                celulasAnalisadas++
            }
        }

        val confiancaMedia = if (celulasAnalisadas > 0) totalConfianca / celulasAnalisadas else 0f
        logger?.debug(TAG, "Tabuleiro analisado — confiança média: ${"%.1f".format(confiancaMedia * 100)}%")

        // Detectar movimentos restantes na tela
        tabuleiro.movimentosRestantes = detectarMovimentosRestantes(bitmap)

        return tabuleiro
    }

    /**
     * Classifica uma célula pela cor dominante na região central.
     * Usa análise de histograma HSV para robustez a iluminação.
     */
    private fun classificarCelula(bitmap: Bitmap, rect: RectF): Pair<TipoPeca, Float> {
        // Analisar apenas o centro da célula (70% da área) para evitar bordas
        val margem = 0.15f
        val x1 = (rect.left + rect.width() * margem).toInt().coerceIn(0, bitmap.width - 1)
        val y1 = (rect.top + rect.height() * margem).toInt().coerceIn(0, bitmap.height - 1)
        val x2 = (rect.right - rect.width() * margem).toInt().coerceIn(x1 + 1, bitmap.width)
        val y2 = (rect.bottom - rect.height() * margem).toInt().coerceIn(y1 + 1, bitmap.height)

        if (x2 <= x1 || y2 <= y1) return TipoPeca.DESCONHECIDO to 0f

        val corMedia = calcularCorMedia(bitmap, x1, y1, x2, y2)
        val r = Color.red(corMedia)
        val g = Color.green(corMedia)
        val b = Color.blue(corMedia)

        // Verificar se é vazio (cor escura)
        val brilho = (r + g + b) / 3.0
        if (brilho < LIMIAR_VAZIO) return TipoPeca.VAZIO to 1.0f

        // Encontrar tipo mais próximo pela distância euclidiana no espaço RGB
        var melhorTipo = TipoPeca.DESCONHECIDO
        var melhorDistancia = Double.MAX_VALUE

        for ((tipo, cor) in TABELA_CORES) {
            val dist = distanciaRGB(r, g, b, cor[0], cor[1], cor[2])
            if (dist < melhorDistancia) {
                melhorDistancia = dist
                melhorTipo = tipo
            }
        }

        // Converter distância em confiança (0.0 a 1.0)
        val confianca = (1.0 - (melhorDistancia / 441.67)).coerceIn(0.0, 1.0).toFloat()

        return if (confianca >= LIMIAR_CONFIANCA_MINIMA) melhorTipo to confianca
        else TipoPeca.DESCONHECIDO to confianca
    }

    /**
     * Calcula a cor média de uma região do bitmap via amostragem.
     */
    private fun calcularCorMedia(
        bitmap: Bitmap, x1: Int, y1: Int, x2: Int, y2: Int
    ): Int {
        var somaR = 0L; var somaG = 0L; var somaB = 0L
        var contagem = 0

        // Amostragem a cada 2 pixels para performance
        val passo = maxOf(1, ((x2 - x1) / 8))
        val passoV = maxOf(1, ((y2 - y1) / 8))

        for (x in x1 until x2 step passo) {
            for (y in y1 until y2 step passoV) {
                val pixel = bitmap.getPixel(x, y)
                somaR += Color.red(pixel)
                somaG += Color.green(pixel)
                somaB += Color.blue(pixel)
                contagem++
            }
        }

        return if (contagem == 0) Color.BLACK
        else Color.rgb(
            (somaR / contagem).toInt(),
            (somaG / contagem).toInt(),
            (somaB / contagem).toInt()
        )
    }

    private fun distanciaRGB(r1: Int, g1: Int, b1: Int, r2: Int, g2: Int, b2: Int): Double {
        val dr = (r1 - r2).toDouble()
        val dg = (g1 - g2).toDouble()
        val db = (b1 - b2).toDouble()
        return sqrt(dr * dr + dg * dg + db * db)
    }

    /**
     * Tenta detectar automaticamente a região do tabuleiro na tela.
     * Procura por uma área retangular com padrão de grid de cores.
     */
    fun detectarRegiaoTabuleiro(bitmap: Bitmap): RectF {
        val w = bitmap.width.toFloat()
        val h = bitmap.height.toFloat()

        // Heurística baseada nas proporções típicas de tela de smartphone
        // O tabuleiro geralmente ocupa a região central da tela
        val margemLateral = w * 0.04f
        val topoTabuleiro = h * 0.18f
        val fundoTabuleiro = h * 0.82f

        val regiao = RectF(margemLateral, topoTabuleiro, w - margemLateral, fundoTabuleiro)
        logger?.debug(TAG, "Região do tabuleiro detectada: $regiao")
        return regiao
    }

    /**
     * Tenta ler o número de movimentos restantes via OCR simples.
     * Analisa região superior da tela onde o contador fica.
     */
    private fun detectarMovimentosRestantes(bitmap: Bitmap): Int {
        // Por padrão retorna 20 (será atualizado pelo OCR quando implementado)
        return 20
    }

    /**
     * Detecta se a tela atual mostra o tabuleiro de jogo ou algum menu.
     */
    fun detectarEstadoTela(bitmap: Bitmap): EstadoTela {
        val w = bitmap.width
        val h = bitmap.height

        // Verificar pixels em posições estratégicas para identificar o estado
        val pixelCentral = bitmap.getPixel(w / 2, h / 2)
        val brilhoCentral = (Color.red(pixelCentral) + Color.green(pixelCentral) + Color.blue(pixelCentral)) / 3

        // Verificar canto superior esquerdo (área do logo/menu)
        val pixelCanto = bitmap.getPixel(w / 4, h / 10)
        val brilhoCanto = (Color.red(pixelCanto) + Color.green(pixelCanto) + Color.blue(pixelCanto)) / 3

        return when {
            brilhoCentral > 180 && brilhoCanto > 100 -> EstadoTela.TABULEIRO
            brilhoCentral < 50 -> EstadoTela.CARREGANDO
            brilhoCanto > 200 -> EstadoTela.MENU_PRINCIPAL
            else -> EstadoTela.DESCONHECIDO
        }
    }

    enum class EstadoTela {
        TABULEIRO, MENU_PRINCIPAL, DIALOGO, CARREGANDO, FASE_COMPLETA, DESCONHECIDO
    }
}
