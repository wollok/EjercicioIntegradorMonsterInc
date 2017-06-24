
class AsistenteNormal {
	method calcularEnergia(energia) = energia
}

class AsistenteIneficiente {
	var reduce = 0
	constructor(cuanto) { reduce = cuanto }
	method calcularEnergia(energia) = energia - reduce
}

class AsistenteSupereficiente {
	var factor
	constructor(f) { factor = f }
	method calcularEnergia(energia) = energia * (1 + factor)
}