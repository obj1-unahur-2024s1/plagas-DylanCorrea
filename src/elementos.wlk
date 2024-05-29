import plagas.*

class Hogar{
	var nivelDeMugre
	var confort
	
	method nivelDeMugre() = nivelDeMugre
	method esBueno() = nivelDeMugre <= confort * 0.5 
	method recibeAtaqueDe(unaPlaga){
		nivelDeMugre += unaPlaga.nivelDeDanio()
		//unaPlaga.efectoDeAtaque()
	}
	
}

object nivelProduccion{
	var property nivelDeProduccion = 1000
}

class Huerta{
	var capacidadDeProduccion
	
	method recibeAtaqueDe(unaPlaga){
		capacidadDeProduccion = 0.max(capacidadDeProduccion - unaPlaga.nivelDeDanio() * 0.1) -
		if(unaPlaga.transmitenEnfermedades()) 10 else 0
		//unaPlaga.efectoDeAtaque()
	}
	method esBueno() = capacidadDeProduccion > nivelProduccion.nivelDeProduccion()
}

class Mascota{
	var nivelDeSalud
	
	method esBueno() = nivelDeSalud > 250
	method recibeAtaqueDe(unaPlaga){
	nivelDeSalud = if(unaPlaga.transmitenEnfermedades()) 0.max(nivelDeSalud - unaPlaga.nivelDeDanio()) else 0
	//unaPlaga.efectoDeAtaque()
	}
}
