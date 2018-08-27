import kotlinx.cinterop.ByteVar
import kotlinx.cinterop.allocArray
import kotlinx.cinterop.nativeHeap
import kotlinx.cinterop.toKString
import platform.posix.printf
import platform.posix.size_t
import platform.posix.snprintf

fun main(args: Array<String>) {
    val pedidos = arrayListOf<Pedido>()
    val comissoes: List<Comissao>

    println("Teste: ${0.115.toPrecision(2)}")

    println("Vamos fazer alguns cálculos sobre os pedidos.\n")
    print("Digite o número de pedidos a serem calculados: ")

    val number = readLine()!!.toInt()

    println()

    for(i in 1..number){
        print("Código: ")
        val codigo = readLine()!!.toInt()

        print("Quantidade: ")
        val quantidade = readLine()!!.toInt()

        print("Valor: ")
        val valor = readLine()!!.toDouble()

        pedidos.add(Pedido(codigo, quantidade, valor))

        println()
    }

    comissoes = pedidos.map { Comissao(it) }

    println("---------------------------------------")

    println("Pedidos e seus valores de comissão: \n")

    comissoes.forEach { println("$it\n") }

    println("---------------------------------------")

    println("Total de Venda dos pedidos: ${pedidos.map{ it.valor }.sum()}\n")

    println("---------------------------------------")

    println("Total de comissão paga por representante: ")

    comissoes.groupBy { it.pedido.codigo }
            .map { Pair(it.key, it.value.map { P -> P.valor }.sum()) }
            .forEach { P -> println("Vendedor: ${P.first} \nComissão Total: ${P.second.toPrecision(2)}\n") }

    println("---------------------------------------")

    print("Total pago de comissão: ${comissoes.map { it.valor }.sum().toPrecision(2)}")
}


fun Double.toPrecision(digits: Int) : String {
    val size: size_t = 50
    val alloc = nativeHeap.allocArray<ByteVar>(size)

    snprintf(alloc,size,"%.${digits}f", this)

    return alloc.toKString()
}

fun Float.toPrecision(digits: Int) : String {
    val size: size_t = 50
    val alloc = nativeHeap.allocArray<ByteVar>(size)

    snprintf(alloc,size,"%.${digits}f", this)

    return alloc.toKString()
}

fun Double.printFormated(digits: Int) = printf("%.${digits}f", this)