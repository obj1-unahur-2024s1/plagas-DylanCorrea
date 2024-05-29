class Barrio {
	const elementos = []
	
	method agregarElementos(listaElementos){
		elementos.addAll(listaElementos)
	}
	method agregarElemento(elemento){
		elementos.add(elemento)
	}
	method eliminarElemento(elemento){
		elementos.remove(elemento)
	}
	method esCopado() = self.cantidadDeElementosBuenos() > self.cantidadDeElementosNoBuenos()
	
	method cantidadDeElementosBuenos() = elementos.count({e => e.esBueno()})
	method cantidadDeElementosNoBuenos() = elementos.count({e=> !e.esBueno()})
}
