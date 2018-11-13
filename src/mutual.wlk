class Viajes {
	var idiomas = []
	var property implicaEzfuerzo
	var property broncearse	
	var property dias	
	
	method viajeInteresante(){
		return idiomas.size() > 1 
	}
	
	method esReconmedable(para){
		return self.viajeInteresante() and para.leAtrae(self) and para.realizoActividad(self)  
	}
}

class ViajesDePlaya inherits Viajes{
	var property largo
	
	override method dias(){
		return largo / 500
	}
	
	override method implicaEzfuerzo(){
		return largo > 1200
	}
	
	override method broncearse(){
		return true
	}
}

class ClasesDeGym{
	var idiomas = ["Español"]
	
	method idiomas(){
		return idiomas
	}
	
	method dias(){
		return 1
	}
	
	method implicaEzfuerzo(){
		return true
	}
	
	method broncearse(){
		return false
		}
		
	method esReconmedable(para){
		return para.edad() >= 20 and para.edad() <= 30
	}	
}


