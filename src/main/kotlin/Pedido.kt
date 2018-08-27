data class Pedido(val codigo: Int, val quantidade: Int, val valor:Double) {

    override fun toString(): String {
        return  "Codigo: $codigo \n" +
                "Quantidade: $quantidade \n" +
                "Valor: $valor"
    }
}