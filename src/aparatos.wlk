import personas.* 

class Aparato {
	const property color= "blanco"
	
	method reduccionDeDolor(paciente)= 4
	method aumentoFortalezaMuscular(paciente)= 0
	method puedeSerUsadoPor(paciente)= true
	method necesitaMantenimiento()= false
	method recibirMantenimiento() {}
	method consecuenciaDeUso(paciente) 
}

class Magneto inherits Aparato {
	var imantacion= 800
	
	override method reduccionDeDolor(paciente)= paciente.nivelDeDolor() * 0.1
	override method necesitaMantenimiento()= imantacion < 100
	override method recibirMantenimiento() {imantacion= 800.min(imantacion += 500)}
	override method consecuenciaDeUso(paciente) {imantacion= 0.max(imantacion -= 1)}
	method imantacion()=imantacion

}

class Bicicleta inherits Aparato {
	var vecesQueSeDesajustaronLosTornillos= 0
	var vecesQuePerdioAceite= 0
	
	override method aumentoFortalezaMuscular(paciente)= 3
	override method puedeSerUsadoPor(paciente)= paciente.edad() > 8
	override method necesitaMantenimiento()= vecesQueSeDesajustaronLosTornillos >= 10 or vecesQuePerdioAceite >= 5
	override method recibirMantenimiento() {vecesQueSeDesajustaronLosTornillos= 0 vecesQuePerdioAceite= 0}
	override method consecuenciaDeUso(paciente) {
		if (paciente.nivelDeDolor()> 30) {
			vecesQueSeDesajustaronLosTornillos++}
		if (paciente.edad().between(30,50)) {
			vecesQuePerdioAceite++
		} 
	}
	method vecesQueSeDesajustaronLosTornillos()= vecesQueSeDesajustaronLosTornillos
	method vecesQuePerdioAceite()= vecesQuePerdioAceite

}

class Minitramp inherits Aparato {
	
	override method aumentoFortalezaMuscular(paciente)= paciente.edad() * 0.1
	override method puedeSerUsadoPor(paciente)= paciente.nivelDeDolor() < 20
	override method consecuenciaDeUso(paciente) {}

}

