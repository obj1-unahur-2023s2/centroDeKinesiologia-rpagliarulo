import aparatos.*

object centro {
	const aparatosDelCentro= []
	const pacientes= []
	
	method agregarAparato(aparato) {aparatosDelCentro.add(aparato)}
	
	method quitarAparato(aparato) {aparatosDelCentro.remove(aparato)}
	
	method agregarPaciente(paciente) {pacientes.add(paciente)}
	
	method quitarPaciente(paciente) {aparatosDelCentro.remove(paciente)}
	
	method coloresDeLosAparatos()= aparatosDelCentro.map({aparato => aparato.color()}).asSet()
	
	method pacientesMenoresDe8()= pacientes.count({paciente => paciente.edad() < 8})
	
	method pacientesQueNoPuedenCumplirSesion()= pacientes.count({paciente => !paciente.puedeHacerRutina()})
	
	method estaEnOptimasCondiciones()= aparatosDelCentro.all({aparato => !aparato.necesitaMantenimiento()})
	
	method estaComplicado()= aparatosDelCentro.filter({aparato => aparato.necesitaMantenimiento()}) >= aparatosDelCentro.size() / 2

	method visitaDeTecnico() {aparatosDelCentro.forEach({ aparato => aparato.recibirMantenimiento()})}
	
	
}
