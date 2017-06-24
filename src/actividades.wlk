class Actividad {
	method calcularMejora()
}

class EstudiarMateria inherits Actividad {
	var materia // Object
	var puntos = 0 // Object-Numero 
	
	constructor(m, p) {
		materia = m
		puntos = p
	}
	
	override method calcularMejora() = puntos
	// return Object-Numero
}

class EjercitarEnSimulador inherits Actividad {
	var horas = 0 // Numero
	constructor(h) { horas = h }
	override method calcularMejora() = 10 * horas
	// return Numero
}