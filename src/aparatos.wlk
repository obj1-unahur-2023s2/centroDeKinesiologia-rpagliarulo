import personas.* 

class Magneto {
	var property color= "blanco"
	
	method reduccionDeDolor(paciente)= paciente.nivelDeDolor() * 0.1
	method aumentoFortalezaMuscular(paciente)= 0
	method puedeSerUsadoPor(paciente)= true 

}

class Bicicleta {
	var property color= "rojo"
	
	method reduccionDeDolor(paciente)= 4
	method aumentoFortalezaMuscular(paciente)= 3
	method puedeSerUsadoPor(paciente)= paciente.edad() > 8


}

class Minitramp {
	var property color= "blanco"
	
	method reduccionDeDolor(paciente)= 4
	method aumentoFortalezaMuscular(paciente)= paciente.edad() * 0.1
	method puedeSerUsadoPor(paciente)= paciente.nivelDeDolor() < 20

}

