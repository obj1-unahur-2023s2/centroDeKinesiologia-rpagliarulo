import aparatos.*

class Paciente {
	var edad
	var fortalezaMuscular
	var nivelDeDolor
	const aparatos= []
	
	method puedeUsar(aparato)= aparato.puedeSerUsadoPor(self)
	
	method usar(aparato) {
		if (self.puedeUsar(aparato))
		 { aparato.consecuenciaDeUso(self)
		   nivelDeDolor -= 0.max(aparato.reduccionDeDolor(self)) 
		   fortalezaMuscular += 0.max(aparato.aumentoFortalezaMuscular(self))
		 }
	}
	
	method nivelDeDolor()= nivelDeDolor
	
	method fortalezaMuscular()= fortalezaMuscular
	
	method edad()= edad
	
	method puedeHacerRutina()= aparatos.all({aparato => self.puedeUsar(aparato)})
	
	method hacerRutina() {if (self.puedeHacerRutina()) {aparatos.forEach({aparato => self.usar(aparato)})}}
}

class PacienteResistente inherits Paciente {
	
	override method hacerRutina() {
		super()
		fortalezaMuscular += 1 * aparatos.size()
	} 
}

class PacienteCaprichoso inherits Paciente {
	
	override method puedeHacerRutina()= super() && aparatos.any({aparato => aparato.color() == "rojo"})
	override method hacerRutina() {
		super()
		super()
		}
}

class PacienteRapidaRecuperacion inherits Paciente {
	var property puntosDeDolorQueDecrementa= 3
	
	override method hacerRutina() {
		super()
		nivelDeDolor -= puntosDeDolorQueDecrementa
	}
}