import categorias.*
import bonos.*

object pepe {
	var categoria = gerente
	var bonoPresentismo = bonoNulo
	var bonoResultado = bonoNulo
	var cantidadDeFaltas = 0
	
	method cantidadDeFaltas(empleado) { 
		return empleado.cantidadDeFaltas()
	}
	
	method sumarInasistencia(cantidad){
		cantidadDeFaltas = cantidadDeFaltas + cantidad
	}


	method categoria(empleado){
		return empleado.categoría() 
	}
	
	// faltan los métodos para poder cambiar la categoria, el bono por presentismo,
	// el bono por resultados y la cantidad de faltas de Pepe. 
    method cambiarCategoría(_categoría){
		categoria = _categoría
	}
 // VER SETTER 
	method cambiarBonoPorPresentismo_(_presentismo){
		bonoPresentismo = _presentismo
	}
	
   method cambiarBonoPorResultado_(_resultado){
	 bonoResultado = _resultado
   }

	method sueldoNeto() { 
		return categoria.sueldoNeto() 
    }

    

	method sueldo() {
		return self.sueldoNeto() + bonoPresentismo.monto(self) + bonoResultado.monto(self) 
			/* + el bono por presentismo */
			/* + el bono por resultado */
		
		/* notar que todos los bonos entienden el mensaje monto(empleado)
		 * en este caso ¿quién es el empleado?
		 */ 
	}
	
}
