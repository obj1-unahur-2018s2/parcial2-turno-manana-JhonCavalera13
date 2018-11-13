
class Taller {
	var libros =[]
	
	method agregarLibro(cual){
		libros.add(cual)
	}
	
	method idiomas(){
		return libros.filter({idio => idio.idioma()})
	}
		
	method dias(){
		return libros.size() + 1
	}
	
	method implicaEzfuerzo(){
		return libros.cantidadPaginas() > 500
	}
	
	method broncearse(){
		return false
	}
	
	method esReconmedable(para){
		return para.size({idio => idio.idiomas()}) > 1
	}
}

class Libro{
	var property idioma = []
	var property cantidadPaginas
	var property nombreAutor
}