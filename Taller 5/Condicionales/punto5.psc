SubProceso menu <- menuPrincipal()
	Definir menu Como Entero;
	Escribir "Bienvenido(a) a la Drogueria Mi Salud";
	Escribir "Escoge que proceso deseas realizar con nosotros";
	Escribir "1. Para consultar los productos";
	Escribir "2. Para Compra de productos";
	Escribir "3. Para Devolucion de productos";
	Leer menu;
	Limpiar Pantalla;
FinSubProceso

SubProceso medicamentos <- mostrarMedicamentos(pro1,pro2,pro3)
	Definir medicamentos Como Entero;
	Escribir "Contamos con los siguientes medicamentos: ";
	Escribir "1. ",pro1, " Caja de 14 tabletas";
	Escribir "2. ",pro2,  " Caja de 25 tabletas";
	Escribir "3. ", pro3, " Caja de 8 tabletas";
	Escribir "¿Cual productos deseas?";
	Leer medicamentos;
FinSubProceso

SubProceso preciosProductos(pastilla,pro1,pro2,pro3)
	Si pastilla = 1 Entonces
		Escribir "Precio: 5000 $ de la caja de ",pro1 ;
	FinSi
	Si pastilla = 2 Entonces
		Escribir "Precio: 7500 $ de la caja de ", pro2;
	FinSi
	Si pastilla = 3 Entonces
		Escribir "Precio: 3500 $ de la caja de ",pro3;
	FinSi
FinSubProceso

SubProceso productoComprado(comprar,pro1,pro2,pro3)
	Si comprar = 1 Entonces
		Escribir "Has comprado: ",pro1, " Caja de 14 tabletas por 5000$";
	FinSi
	Si comprar = 2 Entonces
		Escribir "Has comprado: ",pro2, " Caja de 25 tabletas por 7500$";
	FinSi
	Si comprar = 3 Entonces
		Escribir "Has comprado: ",pro3, " Caja de 8 tabletas por 3500$";
	FinSi
	Si comprar > 3 Entonces
		Escribir "NO HAS SELECCIONADO NINGUN PRODUCTO";
	FinSi
FinSubProceso

SubProceso devolver <- devolucionProducto(pro1,pro2,pro3)
	Definir devolver como Entero;
	Escribir "¿QUE PRODUCTO DESEAS DEVOLVER?";
	Escribir "1. ",pro1, " Caja de 14 tabletas";
	Escribir "2. ",pro2,  " Caja de 25 tabletas";
	Escribir "3. ", pro3, " Caja de 8 tabletas";
	Leer devolver;
FinSubProceso

SubProceso comentario <- comentarioAnotacion()
	Definir comentario Como Caracter;
	Escribir "RAZON DE LA DEVOLCION: " Sin Saltar;
	Leer comentario;
FinSubProceso

SubProceso imprimirDevolucion(devolucion,comentario,pro1,pro2,pro3)
	Si devolucion = 1 Entonces
		Escribir "Has devuelto: ",pro1, " Caja de 14 tabletas";
		Escribir "RAZON: ", comentario;
	FinSi
	Si devolucion = 2 Entonces
		Escribir "Has devuelto: ",pro2, " Caja de 25 tabletas";
		Escribir "RAZON: ", comentario;
	FinSi
	Si devolucion = 3 Entonces
		Escribir "Has devuelto: ",pro3, " Caja de 8 tabletas";
		Escribir "RAZON: ", comentario;
	FinSi
	Si devolucion > 3 Entonces
		Escribir "NO HAS SELECCIONADO NINGUN PRODUCTO";
	FinSi
FinSubProceso

Proceso punto5
	Definir opcion como entero;
	Definir producto1, producto2,producto3,devolucion Como Caracter;
	
	producto1 <- "Acetaminofen";
	producto2 <- "Dolex Forte";
	producto3 <- "Loratadina";
	
	opcion <- menuPrincipal();
	
	Si opcion = 1 O opcion = 2 O opcion = 3 Entonces
		Segun opcion Hacer
			1:
				opcion <- mostrarMedicamentos(producto1,producto2,producto3);
				preciosProductos(opcion,producto1,producto2,producto3);
			2:	
				opcion <- mostrarMedicamentos(producto1,producto2,producto3);
				productoComprado(opcion,producto1,producto2,producto3);
			3:
				opcion <- devolucionProducto(producto1,producto2,producto3);
				Limpiar Pantalla;
				devolucion <- comentarioAnotacion();
				imprimirDevolucion(opcion,devolucion,producto1,producto2,producto3);
		FinSegun
	SiNo
		Escribir "OPCION NO VALIDA";
	FinSi
	
	
	
FinProceso
