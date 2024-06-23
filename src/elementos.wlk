class Barrio {
	const elementos = []
	
	method cantidadDeElementosBuenos() = elementos.count{e => e.esBueno()}
	
	method cantidadDeElementosMalos() = elementos.count{e => !e.esBueno()}

	method esCopado() = self.cantidadDeElementosBuenos() > self.cantidadDeElementosMalos()

}

class Hogar {
	var property mugre
	var property confort
	
	method esBueno() = mugre <= (confort * 0.5)
	method recibirAtaqueDePlaga(plaga) {
		mugre += plaga.nivelDeDanio()
	}
}

class Huerta {
	var property capacidadDeProduccionPorMes
	var property umbralDeProduccion
	
	method esBuena() = capacidadDeProduccionPorMes > umbralDeProduccion
	method recibirAtaqueDePlaga(plaga) {
		const danioDeLaProduccion = (plaga.nivelDeDanio() * 0.1) + if(plaga.transmiteEnfermedades()) 10 else 0
		capacidadDeProduccionPorMes = (capacidadDeProduccionPorMes - danioDeLaProduccion).max(0)
	}
}

class Mascota {
	var property salud
	
	method esBuena() = salud > 250
	method recibirAtaqueDePlaga(plaga) {
		if(plaga.transmiteEnfermedades()) {
			salud = (salud - plaga.nivelDeDanio()).max(0)
		}
	}
}












