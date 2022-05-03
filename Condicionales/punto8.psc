SubProceso menu <- menuPrincipal()
	Definir menu Como Entero;
	Escribir "Bienvenido a la Pasteleria";
	Esperar 3 Segundos;
	Limpiar Pantalla;
	Escribir "¿En que le podemos servir?";
	Escribir "1. Consultar Tortas disponibles";
	Escribir "2. Comprar Torta";
	Escribir "3. Consultar Registro de ventas";
	Leer menu;
FinSubProceso

SubProceso elegir <- elegirTorta(pastel1,pastel2,pastel3)
	Definir elegir Como Entero;
	Escribir "1. ", pastel1;
	Escribir "2. ", pastel2;
	Escribir "3. ", pastel3;
	Leer elegir;
FinSubProceso

SubProceso tortasDisponibles(pastel,taste,partes)
	Escribir pastel;
	Escribir pastel , " Tiene las siguientes caracteristicas: ";
	Escribir "Sabor de: ", taste;
	Escribir "Porciones: ", partes;
	Escribir "";
FinSubProceso

SubProceso comprarTorta(comprar,pastel1,pastel2,pastel3)
	Si comprar = 1 Entonces
		Escribir pastel1 , " Comprada";
		Escribir "Gracias Por su compra";
	FinSi
	Si comprar = 2 Entonces
		Escribir pastel2 , " Comprada";
		Escribir "Gracias Por su compra";
	FinSi
	Si comprar = 3 Entonces
		Escribir pastel3 , " Comprada";
		Escribir "Gracias Por su compra";
	FinSi
	Si comprar > 3 Entonces
		Escribir "Compra no valida";
	FinSi
FinSubProceso

SubProceso registroVentas(venta,pastel)
	Escribir pastel, " Tiene un total de ventas de: ",venta, " Tortas por semana";
	Escribir "";
FinSubProceso

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
	
	operacion <- menuPrincipal();
	Limpiar Pantalla;
	
	Segun operacion Hacer
		1:
			tortasDisponibles(torta1,sabor1,porciones1);
			tortasDisponibles(torta2,sabor2,porciones2);
			tortasDisponibles(torta3,sabor3,porciones3);
		2:
			operacion <- elegirTorta(torta1,torta2,torta3);
			comprarTorta(operacion,torta1,torta2,torta3);
		3:
			registroVentas(ventas1,torta1);
			registroVentas(ventas2,torta2);
			registroVentas(ventas3,torta3);
		De Otro Modo:
			Escribir "OPERACION NO VALIDA";
	FinSegun
	
FinProceso
