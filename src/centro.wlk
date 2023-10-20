import aparatos.*

object centro {
	const aparatosDelCentro= []
	const pacientes= #{}
	
	method agregarAparato(aparato) {aparatosDelCentro.add(aparato)}
	
	method quitarAparato(aparato) {aparatosDelCentro.remove(aparato)}
	
	method agregarPaciente(paciente) {pacientes.add(paciente)}
	
	method quitarPaciente(paciente) {aparatosDelCentro.remove(paciente)}
	
	method coloresDeLosAparatos()= aparatosDelCentro.map({aparato => aparato.color()}).asSet()
	
	method pacientesMenoresDe8()= pacientes.filter({paciente => paciente.edad() < 8})
	
	method pacientesQueNoPuedenCumplirSesion()= pacientes.count({paciente => !paciente.puedeHacerRutina()})
	
	method estaEnOptimasCondiciones()= aparatosDelCentro.all({aparato => !aparato.necesitaMantenimiento()})
	
	method estaComplicado()= self.aparatosParaMantenimiento().size() >= (aparatosDelCentro.size() / 2)
	
	method aparatosParaMantenimiento()= aparatosDelCentro.filter({aparato => aparato.necesitaMantenimiento()})

	method visitaDeTecnico() {self.aparatosParaMantenimiento().forEach({ aparato => aparato.recibirMantenimiento()})}
	
	
}
