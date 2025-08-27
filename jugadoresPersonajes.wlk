import armas.*
import elementos.*


object luisa {

}

object floki {
    var arma = jabalina
    method encontrar(elemento) {
        if(arma.estaCargada()) {
            elemento.recibirAtaque(arma.potencia())
            arma.usar()
        }
    }
    method cambiarArma(unArma) {arma = unArma}
}

object mario {
    var ultimoElemento = ningunElemento
    var valorRecolectado = 0
    method encontrar(elemento) {
        elemento.recibirTrabajo()
        valorRecolectado = valorRecolectado + elemento.valorOtorgado()
        ultimoElemento = elemento 
    }
    method estaFeliz() {
        return valorRecolectado >= 50 || ultimoElemento.altura() >= 10
    }

}