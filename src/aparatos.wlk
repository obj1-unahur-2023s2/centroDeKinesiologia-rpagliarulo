import personas.* 

class Magneto {
	var property color= "blanco"
	var imantacion= 800
	
	method reduccionDeDolor(paciente)= paciente.nivelDeDolor() * 0.1
	method aumentoFortalezaMuscular(paciente)= 0
	method puedeSerUsadoPor(paciente)= true
	method necesitaMantenimiento()= imantacion < 100
	method recibirMantenimiento() {imantacion += 500}
	method consecuenciaDeUso(paciente) {imantacion -= 1}
	method imantacion()=imantacion

}

class Bicicleta {
	var property color= "rojo"
	var vecesQueSeDesajustaronLosTornillos= 0
	var vecesQuePerdioAceite= 0
	
	method reduccionDeDolor(paciente)= 4
	method aumentoFortalezaMuscular(paciente)= 3
	method puedeSerUsadoPor(paciente)= paciente.edad() > 8
	method necesitaMantenimiento()= vecesQueSeDesajustaronLosTornillos >= 10 or vecesQuePerdioAceite >= 5
	method recibirMantenimiento() {vecesQueSeDesajustaronLosTornillos= 0 vecesQuePerdioAceite= 0}
	method consecuenciaDeUso(paciente) {
		if (paciente.nivelDeDolor()> 30) {
			vecesQueSeDesajustaronLosTornillos += 1}
		if (paciente.edad()>= 30 && paciente.edad()<= 50) {
			vecesQuePerdioAceite +=1
		} 
	}
	method vecesQueSeDesajustaronLosTornillos()= vecesQueSeDesajustaronLosTornillos
	method vecesQuePerdioAceite()= vecesQuePerdioAceite

}

class Minitramp {
	var property color= "blanco"
	
	method reduccionDeDolor(paciente)= 4
	method aumentoFortalezaMuscular(paciente)= paciente.edad() * 0.1
	method puedeSerUsadoPor(paciente)= paciente.nivelDeDolor() < 20
	method necesitaMantenimiento()= false
	method recibirMantenimiento() {}
	method consecuenciaDeUso(paciente) {}

}

