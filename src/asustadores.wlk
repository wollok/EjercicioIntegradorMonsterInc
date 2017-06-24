class Asustador {
	var edad = 0  // Object - Numero
	var nivelMotivacion = 100 // Numero
	
	constructor(e) { edad = e }
	method getEdad() = edad  
	method setEdad(e) { edad = e }
	
	method getNivelMotivacion() = nivelMotivacion
	//Return Numero
	
	method entrarAPuerta(puerta) { // que entienda entra (Puerta)
		return puerta.entra(self)
	// lo que retorna entra
	}
	
	method asustar(ninio) { // que entienda getEdad (Ninio,Asustador) que retorne numero
		const a = self.getPorcentaje() //que retorne Numero
		//a Numero
		return a * self.puntosDeTerror() / ninio.getEdad() 
		//Return Numero
	}
	method getPorcentaje() {
		return nivelMotivacion / 100
	} // Return Numero
	
	method puntosDeTerror()
	
	method reducirMotivacion(cuantoPorciento) { //Numero
		nivelMotivacion -= cuantoPorciento * nivelMotivacion
	}
}

class AsustadorNato inherits Asustador {
	var puntosTerrorInnatos // Numero
	constructor(e, p) = super(e) { // e: Numero 
		puntosTerrorInnatos = p
	}
	override method puntosDeTerror() {
		return puntosTerrorInnatos * self.getEdad() 
		//return Numero
	}
}

class AsustadorPerseverante inherits Asustador {
	var puntosDeTerror = 0 // Numero
	
	constructor(e) = super(e)
	
	method mejora(actividad) { //que entienda calcularMejora (Actividad) que retorne numero
		puntosDeTerror += actividad.calcularMejora() 
	}
	override method puntosDeTerror() = puntosDeTerror
	// Return Numero
}

