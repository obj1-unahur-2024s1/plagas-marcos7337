class Plaga {
	var property poblacion
	
	method transmiteEnfermedades() = poblacion > 10 and self.condicionAdicional()
	method condicionAdicional()
	
	method atacarElemento(elemento) {
		elemento.recibirAtaqueDePlaga(self)
		self.efectoAdicional()
	}
	method efectoAdicional()
	
	
}

class PlagaDeCucarachas inherits Plaga {
	var property pesoPromedio
	
	method nivelDeDanio() = poblacion * 0.5
	override method condicionAdicional() = pesoPromedio >= 10
	override method efectoAdicional() {
		poblacion = poblacion * 1.1
		pesoPromedio += 2
	}
}

class PlagaDePulgas inherits Plaga {
	
	
	method nivelDeDanio() = poblacion * 2
	override method condicionAdicional() = true
	override method efectoAdicional() {
		poblacion = poblacion * 1.1
	}
}

class PlagaDeGarrapatas inherits Plaga {
	
	
	method nivelDeDanio() = poblacion * 2
	override method condicionAdicional() = true
	override method efectoAdicional() {
		poblacion = poblacion * 1.2
	}
}

class PlagaDeMosquitos inherits Plaga {
	
	
	method nivelDeDanio() = poblacion
	override method condicionAdicional() = poblacion % 3 == 0
	override method efectoAdicional() {
		poblacion = poblacion * 1.1
	}
}
















