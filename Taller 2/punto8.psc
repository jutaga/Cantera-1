//El pastelero Don Carlos es el mejor pastelero de la ciudad y requiere una aplicación que le permita registrar los pedidos de los clientes en cuanto a las tortas que realiza. 
//Cada torta tiene unas características propias como sabor, cantidad (porciones) y decoraciones).
//Se requiere que la aplicación permita registrar los pedidos, las tortas disponibles y las ventas que se registren diariamente.

Proceso punto8
	Definir torta1, sabor1 Como Caracter;
	Definir torta2, sabor2 Como Caracter;
	Definir torta3, sabor3 Como Caracter;
	Definir porciones1 , porciones2 , porciones3 Como Entero;
	Definir ventas1 , ventas2 , ventas3 Como Entero;
	Definir operacion Como Entero;
	
	ventas1 <- 15;
	ventas2 <- 9;
	ventas3 <- 35;
	
	torta1 <- "Mousse";
	torta2 <- "Fresas con crema";
	torta3 <- "Cheesecake de Nutella";
	
	sabor1 <- "Chocolate";
	sabor2 <- "Vainilla";
	sabor3 <- "Fresa";
	
	porciones1 <- 8;
	porciones2 <- 12;
	porciones3 <- 6;
	
	
	Escribir "Bienvenido a la Pasteleria";
	Esperar 3 Segundos;
	Limpiar Pantalla;
	Escribir "¿En que le podemos servir?";
	Escribir "1. Consultar Tortas disponibles";
	Escribir "2. Comprar Torta";
	Escribir "3. Consultar Registro de ventas";
	Leer operacion;
	
	Limpiar Pantalla;
	
	Si operacion >=1 Y operacion <= 3 Entonces
		
		Segun operacion Hacer
			1:
				Escribir "Tenemos las siguientes tortas disponibles: ";
				Escribir torta1, ",", torta2 ,",",torta3;
				Escribir  "Presione Enter para continuar";
				Esperar Tecla;
				Limpiar Pantalla;
				Escribir "¿Desea consultar las caracteristicas de alguna torta?";
				Escribir "1. ", torta1;
				Escribir "2. ", torta2;
				Escribir "3. ", torta3;
				Leer operacion;
				
				Limpiar Pantalla;
				
				Si operacion >=1 Y operacion <= 3 Entonces
					
					Segun operacion Hacer
						1:
							Escribir torta1 , " Tiene las siguientes caracteristicas: ";
							Escribir "Sabor de: ", sabor1;
							Escribir "Porciones: ", porciones1;
						2:
							Escribir torta2 , " Tiene las siguientes caracteristicas: ";
							Escribir "Sabor de: ", sabor2;
							Escribir "Porciones: ", porciones2;
						3:
							Escribir torta3 , " Tiene las siguientes caracteristicas: ";
							Escribir "Sabor de: ", sabor3;
							Escribir "Porciones: ", porciones3;
					FinSegun
				SiNo
					Escribir "OPCION NO VALIDA";
				FinSi
				
			2:
				Escribir "¿Cual torta desea comprar?";
				Escribir "1. ", torta1;
				Escribir "2. ", torta2;
				Escribir "3. ", torta3;
				Leer operacion;
				Escribir "Presione ENTER para confirmar";
				Esperar Tecla;
				Limpiar Pantalla;
				
				Si operacion >=1 Y operacion <= 3 Entonces
					
					Segun operacion Hacer
						1:
							Escribir torta1 , " Comprada";
							Escribir "Gracias Por su compra";
						2:
							Escribir torta2 , " Comprada";
							Escribir "Gracias Por su compra";
						3:
							Escribir torta3 , " Comprada";
							Escribir "Gracias Por su compra";
					FinSegun
				SiNo
					Escribir "Operacion no valida";
				FinSi
							
			3:
				Escribir "¿Cual torta desea consultar las ventas?";
				Escribir "1. ", torta1;
				Escribir "2. ", torta2;
				Escribir "3. ", torta3;
				Leer operacion;
				Limpiar Pantalla;
				
				Si operacion >=1 Y operacion <= 3 Entonces
					Segun operacion Hacer
						1:
							Escribir "1. ", torta1, " Tiene un total de ventas de: ",ventas1, " Tortas por semana";
						2:
							Escribir "2. ", torta2, " Tiene un total de ventas de: ",ventas2, " Tortas por semana";
						3:
							Escribir "3. ", torta3, " Tiene un total de ventas de: ",ventas3, " Tortas por semana";
					FinSegun
				SiNo
					Escribir "Operacion no valida";
				FinSi
		FinSegun
	SiNo
		Escribir "OPERACION NO ES POSIBLE, VALOR ERRONEO";
	FinSi
	
FinProceso
