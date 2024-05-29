import elementos.*

class Plaga{
	var poblacion
	
	method transmitenEnfermedades() = poblacion >= 10
	method atacarUnElemento(unElemento){
		unElemento.recibirAtaque(self)
		self.efectoAtaque()
	}
	method efectoAtaque(){
		poblacion *= 1.1
	}
}


class Cucarachas inherits Plaga{
	var pesoPromedioBicho = poblacion
	
	
	method nivelDeDanio() = poblacion * 0.5 
	override method transmitenEnfermedades() = super() and pesoPromedioBicho >= 10
	override method efectoAtaque(){
		super()
		pesoPromedioBicho += 2
	}
	
}

class Mosquitos inherits Plaga{
	
	method nivelDeDanio() = poblacion
	override method transmitenEnfermedades() = super() and poblacion % 3 == 0
	
}

class Pulgas inherits Plaga {
	
	method nivelDeDanio() = poblacion * 2
	
	
}

class Garrapatas inherits Pulgas {
	
	override method efectoAtaque(){poblacion *= 1.2}
}