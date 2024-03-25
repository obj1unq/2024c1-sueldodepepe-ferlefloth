
object neto{
	
	method netoSegunCategoria(categoria){
		return categoria.neto()
	}
}

object gerente {
	method neto(){
		return 15000
	}
}

object cadete {
	method neto(){
		return 20000
	}
}

object bonoPorResultadoFijo{
	method bono(){
		return 800
	}
}

object bonoPorResultadoPorcentual{
	var netoPorCategoria = pepe.neto()
	
	method bono(){
		return  netoPorCategoria / 10
	}
}

object bonoPorResultadoNulo{
	method bono(){
		return 0
	}
}

object pepe {
		
	var categoria = gerente
	var neto = 0
	var bonoResultados = 0
	var sueldo = 0
	var bonoPresentismo = 0
	
	method neto(){
		return neto
	}
	
	method sueldo(){
		sueldo = neto + bonoResultados + bonoPresentismo
	}
	
	method setCategoria(tipoCategoria){
		categoria = tipoCategoria
	}
	
	method setNeto(tipoDeNeto){
		neto = tipoDeNeto.netoSegunCategoria(categoria)
	}
	
	method setBonoXresultados(tiposDeBono){
		bonoResultados = tiposDeBono.bono()
	}
	
	
	
}