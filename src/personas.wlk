import aparatos.*

class Paciente {
	var edad
	var fortalezaMuscular
	var nivelDeDolor
	const rutina= []
	
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
	
	method puedeHacerRutina()= rutina.all({aparato => self.puedeUsar(aparato)})
	
	method hacerRutina() {if (!self.puedeHacerRutina()) {self.error("El paciente no puede realizar la rutina.")} else {rutina.forEach({aparato => self.usar(aparato)})}}
}

class PacienteResistente inherits Paciente {
	
	override method hacerRutina() {
		super()
		fortalezaMuscular += rutina.size()
	} 
}

class PacienteCaprichoso inherits Paciente {
	
	override method puedeHacerRutina()= super() && self.hayAparatoRojo()
	method hayAparatoRojo()= rutina.any({aparato => aparato.color() == "rojo"})
	override method hacerRutina() {
		super()
		super()
		}
}

class PacienteRapidaRecuperacion inherits Paciente {
	
	override method hacerRutina() {
		super()
		nivelDeDolor -= 0.max(puntosDeDolorQueDecrementa.valor())
	}
}

object puntosDeDolorQueDecrementa {
	var property valor= 3
}