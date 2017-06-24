class Asustable {
	method teVaAAsustar(asustador)
	
}

class Ninio inherits Asustable {
	var edad = 0 //Object-Numero
	
	constructor(e) { edad = e }
	method setEdad(e) { edad = e }
	method getEdad() = edad
	
	override method teVaAAsustar(asustador) { // que entienda asustar (Asustador)
		return asustador.asustar(self)
		// lo que retorna asustar (Numero)
	}
}

class Piyamada inherits Asustable {
	var ninios = [] 
	// //Coleccion de  lo que reciba asustar 
	// (que entienda getEdad (Ninio,Asustador))
	method agregarNinio(n) { ninios.add(n) } 
	override method teVaAAsustar(asustador) { //que entienda asustar (Asustador)
		return ninios.fold(0, {a, n=> 
			a + asustador.asustar(n)
	// return ninios.sum{n=> asustador.asustar(n)
		})
		//Return lo que retorne fold, => tipo del primer parametro de fold => Numero
		//Return lo que retorne sum => Numero
	}
}

class Adulto inherits Asustable {
}

class Adolescente inherits Asustable {
	override method teVaAAsustar(asustador) { //que entienda reducirMotivacion (Asustador)
		var factor = 0.10 //Lo que reciba reducirMotivacion => Numero - Numero
		asustador.reducirMotivacion(factor)
		return 0
		// Return Numero
	}
}
