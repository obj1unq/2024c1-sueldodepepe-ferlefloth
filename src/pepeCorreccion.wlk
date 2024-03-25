object gerente{
	method neto(){
		return 2000
	}
}

object cadete{
	method neto(){
		return 15000
	}
}

//BONOS RESUTLADOS
object presentismoNulo{
	method valor(empleado){
		return 0 
	}
}

object resultadoNulo{
	method valor(empleado){
		return 0 
	}
}

object porcentual{

	method valor(empleado){
		return empleado.neto() * 0.10 // es elmensaje a alguien 
	}
}
object fijo{
	method valor(empleado){ // si bien, no lo use NO es un problema
		return 800 
	}
}

object ajuste{
	method valor(empleado){
		if(empleado.faltas() == 0 ){
			return 100
		}else{
			return 0 
		}
	}
}

object normal{
	method valor(empleado){
		return if(empleado.faltas() == 0 ){
			2000
		}else if (empleado.faltas() == 1 ) {
			1000 
		}else{
			0
		}
	}
}
object demagogico{
	method valor(empleado){
		return if(empleado.neto() < 18000 ){
			500
		}else{
			300
		}
	}
}

object pepe {
	var categoria = cadete //aca haces referencia al objeto directo
	var bonoResultado = resultadoNulo
	var bonoPresentismo = presentismoNulo
	var faltas = 0 
	
	method faltas(_faltas){
		faltas = _faltas
	}
	
	method faltas(){
		return faltas
	}
	
	method categoria(_categoria){ // Asi se usa un setter
		categoria = _categoria
	}
	
	method bonoResultado(_bonoResultado){
		bonoResultado = _bonoResultado
	}
	
	method neto(){
		return categoria.neto() // polimorfia
	}
	method sueldo(){
		return self.neto() + self.resultado()
	}
	
	method resultado(){
		return bonoResultado.valor(self) // el self hace referencia a pepe si mismo
	}
	
	method bonoPresentimo(){
		return bonoPresentismo.valor(self)
	}
}

/* 
   alarmas de que una solución no esta bien: If anidados que validen algo. Es mejor separar en objetos y orientarse a la polimorfía
	Está mal usar strings para modelar conceptos de negocio

	es calve saber que valor Se recuerda y que valor se CALCULA
	
	por cada objeto que se crea, se puse usar en cualquier otro objeto sin problmeas. El tema es cuales son los methods que usas para enviar mensajes y cuales calculas
	* 
	* las referencias cruzadas hay que evitarlas, poirque esto nos da inconsistencias. . hay usarlo coomo argumento del metodoo
	* 
	* SE PUEDE ENCARAR DE DOS FORMAS:
	* 	- Haciendo los tests primero, para ver como encarar las soluciones.
	* 	- Encarando por el enunciado y los objetos

*/