import kotlinx.cinterop.ByteVar
import kotlinx.cinterop.allocArray
import kotlinx.cinterop.nativeHeap
import kotlinx.cinterop.toKString
import platform.posix.printf
import platform.posix.size_t
import platform.posix.snprintf

data class Comissao(val pedido:Pedido) {
    val porcentagem: Float
    val valor: Double

    init {
        porcentagem = percentage(pedido.quantidade)
        valor = porcentagem * pedido.valor
    }

    companion object {
        fun percentage(quantidade: Int) : Float {
            when {
                quantidade < 20 -> return 0.1F
                quantidade in 20..49 -> return 0.15F
                quantidade in 50..74 -> return 0.2F
                quantidade >= 75 -> return 0.25F
            }
            return 0F
        }
    }

    override fun toString(): String {
        return "Codigo: ${pedido.codigo} \n" +
               "Comissão: ${valor.toPrecision(2)} \n" +
               "Quantidade: ${pedido.quantidade} \n" +
               "Porcentagem: ${(porcentagem*100).toPrecision(2)}"
    }

}