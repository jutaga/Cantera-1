//La Droguería Mi Salud presta sus servicios en la localidad de Suba y requiere una aplicación para poder facturar los productos que vende a sus clientes y para ello, 
//los productos tienen unas características que deben indicársele al cliente para que pueda escoger el producto a comprar. 
//Para cada cliente, se tienen las opciones de compra de producto, consulta de precios por producto y devoluciones en caso de que se presenten.

Proceso Punto5
	Definir producto1 Como Caracter;
	Definir producto2 Como Caracter;
	Definir producto3 Como Caracter;
	Definir opcion Como Entero;
	Definir eleccion Como Entero;
	Definir devolucion Como Caracter;
	Definir comentario Como Caracter;
	Definir comprar Como Logico;
	Definir comprar1 Como Entero;
	
	producto1 <- "Acetaminofen";
	producto2 <- "Dolex Forte";
	producto3 <- "Loratadina";
	
	
	Escribir "Bienvenido(a) a la Drogueria Mi Salud";
	Escribir "Escoge que proceso deseas realizar con nosotros";
	Escribir "1. Para consultar los productos";
	Escribir "2. Para Devoluciones";
	Leer opcion;
	
	Limpiar Pantalla;
	
	Segun opcion Hacer
		1:
			Escribir "Contamos con los siguientes medicamentos: ";
			Escribir "1. ",producto1, " Caja de 14 tabletas";
			Escribir "2. ",producto2,  " Caja de 25 tabletas";
			Escribir "3. ", producto3, " Caja de 8 tabletas";
			Escribir "¿A cual productos deseas consultar su precio?";
			Leer eleccion;
			
			Limpiar Pantalla;
			
			Segun eleccion Hacer
				1:
					Escribir "Precio: 5000 $ de la caja de ",producto1 ;
				2:
					Escribir "Precio: 7500 $ de la caja de ", producto2;
				3:
					Escribir "Precio: 3500 $ de la caja de ",producto3;
			FinSegun
			
			Esperar 3 segundos;
			
			Limpiar Pantalla;
			
			Escribir "¿Desea realizar una compra? Si: Verdadero , No: Falso";
			Leer comprar;
			
			Limpiar Pantalla;			
			
			Si comprar = Verdadero Entonces
				Escribir "¿Que medicamento desea comprar?";
				Escribir "1. ",producto1, " Caja de 14 tabletas";
				Escribir "2. ",producto2,  " Caja de 25 tabletas";
				Escribir "3. ", producto3, " Caja de 8 tabletas";
				Leer comprar1;
				
				Limpiar Pantalla;
				
				Segun comprar1 Hacer
					1:
						Escribir "Has comprado: ",producto1, " Caja de 14 tabletas por 5000$";
					2:
						Escribir "Has comprado: ",producto2, " Caja de 25 tabletas por 7500$";
					3:
						Escribir "Has comprado: ",producto3, " Caja de 8 tabletas por 3500$";
				FinSegun
			SiNo
				Escribir "Gracias por visitarnos";
			FinSi
		2:
			Escribir "¿Que deseas devolver?";
			Leer devolucion;
			Escribir "¿Por que lo devueles?";
			Leer comentario;
			Escribir "Has devuelto " ,devolucion, " Por el motivo: ", comentario;
						
	FinSegun
	
FinProceso
