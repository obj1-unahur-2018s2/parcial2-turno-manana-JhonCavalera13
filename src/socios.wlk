import mutual.*
import salidaDetrekKing.*
import excurcion.*

class Socios {
	var property actividad = []
	var property maximoActividades
	var property edad
	var property idiomas = []
	
	method agregarActividad(cual){ 
		if(self.actividad() < maximoActividades){
			actividad.add(cual)
			}
		else {
			self.error("Error")
		}
	}
	
	method actividades(){
		actividad.size()
	}
	
	method adoradorDelSol(){
		return actividad.all({cual => cual.broncearse()})
	}
	
	method actividadesForsozas(){
		return actividad.filter({cuales => cuales.implicaEzfuerzo()})
	}
	
	method realizoActividad(cual){
		actividad.contains(cual)
	}
	
}


class SocioTranquilo inherits Socios{
	method leAtrae(actividad){
		return actividad.dias() >= 4		
	}
}

class SocioCoherente inherits Socios{
	method leAtre(actividad){
	 if (self.adoradorDelSol()){
			return actividad.broncearse()
		}
	 else{
	 	return actividad.implicaEzfuerzo()
	 }	
	}	
}

class SocioRelajado{
	method leAtrae(){
				
	}	
	
}






