object monstersInc {
	var equipos = [] 
	// coleccion de lo que entiende getEnergiaGenerada, visitar (Equipo)
	var puertas = [] 
	// coleccion de lo que recibe visitar => Lo que espera entrarAPuerta => que entienda entra (Puerta)

	method getEquipos() = equipos	
	method agregarPuerta(p) { puertas.add(p) }
	method agregarEquipo(e) { equipos.add(e) }
	method removerEquipo(e) { equipos.remove(e) }
	method getEnergiaTotalGenerada() {
		return equipos.sum({e=> e.getEnergiaGenerada()})
		// Return Numero
	}
	
	method cualquierPuerta() {
		if (puertas.size() > 1) return puertas.any()
		//Return Puerta
		else if (puertas.size() == 1) return puertas.get(0) // Walk around issue #199
		else throw "No hay puertas"
		
		//podria ser
		//if (puertas.isEmpty()) throw "No hay puertas" 
		//return puertas.any() 
		
	}
	
	method diaLaboral() {
		equipos.forEach({e=> e.visitar(self.cualquierPuerta())})
	}
	
	method equipoMasAsustador() {
		return equipos.max({e=> e.getEnergiaGenerada()})
	// Return Equipo
	} 
}

class Puerta {
	var contenido // que entienda teVaAAsustar (Asustable)
	constructor(c) { contenido = c }

	method entra(asustador) { // Lo que espera teVaAAsustar ( que entienda asustar (Asustador))
		return contenido.teVaAAsustar(asustador)
	// retorno de teVaAAsustar => Numero
	}
	
	
}

class Equipo {
	var asustador // que entienda entrarAPuerta (Asustador)
	var asistente // que entienda calcularEnergia  (Asistente)
	var energiaGenerada = 0 //Numero

	constructor(asus, asis) { 
		asustador = asus
		asistente = asis
	}

	method setAsistente(a) { 
		asistente = a
	}
	method visitar(puerta) { // Lo que espera entrarAPuerta (que entienda entra (Puerta))
		const energiaPorAsustar = energiaGenerada + asustador.entrarAPuerta(puerta)
		// Numero
		energiaGenerada = asistente.calcularEnergia(energiaPorAsustar)
	}
	method getEnergiaGenerada() = energiaGenerada
	method nuevoDia() { energiaGenerada = 0 }
}

