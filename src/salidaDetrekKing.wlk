import mutual.*


class SalidaDeTrekKing inherits Viajes {
	var property kmsDeSendero
	var property diasDeSol
		
	override method dias(){
		return kmsDeSendero / 50
	}
	
	override method implicaEzfuerzo() {
		return kmsDeSendero > 80 //and self.broncearse() 
		
	}
	
	override method broncearse(){
		return diasDeSol > 200 or (diasDeSol > 99 and kmsDeSendero > 120) 
	}
	
	override method viajeInteresante(){
		return super() and diasDeSol >= 140
	}
	
	method agregarIdioma(cual){
		idiomas.add(cual)
	}
}
