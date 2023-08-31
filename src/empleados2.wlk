object galvan {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
	//	var property sueldo = 150000

	var sueldo = 150000
	var totalDinero = 0
	var totalDeuda = 0
	
	method sueldo() { return sueldo }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
	
	method cobrarSueldo() {
		totalDinero += sueldo
		self.pagarDeudas()
	}
	
	method pagarDeudas() {
		const dineroInicial = totalDinero
		totalDinero = 0.max(totalDinero - totalDeuda)
		totalDeuda = 0.max(totalDeuda - dineroInicial)
	}
	
	method gastar(cuanto) {
		totalDeuda += cuanto
	}
	
	method totalDeuda() = totalDeuda
	method totalDinero() = totalDinero
}

object baigorria {
	var cantidadEmpanadasVendidas = 1000
	const montoPorEmpanada = 150
	var totalCobrado = 0
	
	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}
 	
	method sueldo() = cantidadEmpanadasVendidas * montoPorEmpanada
	
	method totalCobrado() = totalCobrado
	
	method cobrarSueldo() {
		totalCobrado += self.sueldo()
	}
}

object gimenez {
	var dinero = 3000000
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo() }
}