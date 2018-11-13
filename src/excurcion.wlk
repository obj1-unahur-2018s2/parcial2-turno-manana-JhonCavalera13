import mutual.*

class ExcursionCiudad inherits Viajes{
	var property cantidadAtracciones
	
	override method dias(){
		return cantidadAtracciones / 2
	}
	
	override method implicaEzfuerzo(){
		return cantidadAtracciones > 4 and cantidadAtracciones < 9
	}
	
	override method broncearse(){
		return false 
	}
	method agregarIdioma(cual){
		idiomas.add(cual)
	}
	
	override method viajeInteresante(){
		return super() or cantidadAtracciones == 5
	}
}

class ExcurcionCiudadTropical inherits ExcursionCiudad{
	override method dias(){
		return super() + 1
	}
	
	override method broncearse(){
		return true
	}
	
}