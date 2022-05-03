SubProceso menu <- menuTaller()
	Definir menu Como Entero;
		Escribir "Bienvenido a El taller de motos EL MAQUINISTA";
		Esperar 3 Segundos;
		Limpiar Pantalla;
		Escribir "1. CONSULTAR EL ESTADO DE SU MOTOCICLETA";
		Escribir "2. RETIRAR SU MOTOCICLETA DEL TALLER ";
		Leer menu;
FinSubProceso

SubProceso moto <- elegirMoto(mot1,mot2,mot3)
	Definir moto Como Entero;
	Escribir "¿Cual es tu motocicleta?";
	Escribir "1. ",mot1;
	Escribir "2. ",mot2;
	Escribir "3. ",mot3;
	Leer moto;
FinSubProceso

SubProceso estadoMoto(moto,nov1,nov2)
	Escribir moto, " esta pendiente de realizar las siguientes actividades: ";
	Escribir nov1, " y ", nov2;
FinSubProceso

SubProceso retirarMoto(moto,obs1,obs2)
	Escribir "Tu moto ", moto, " ha sido retirada";	
	Escribir "Se le realizaron las siguientes reparaciones: ";
	Escribir obs1 , " y " , obs2;
FinSubProceso

Proceso punto6
	Definir menu1 Como Entero;
	Definir observacion1,observacion2,observacion3 Como Caracter;
	Definir novedad1,novedad2,novedad3 Como Caracter;
	Definir moto1,moto2,moto3 Como Caracter;
	
	
	
	moto1 <- "VICTORY";
	moto2 <- "YAMAHA";
	moto3 <- "BOXER";
	
	observacion1 <- "REEMPLAZO DE CAJA DE CAMBIOS";
	observacion2 <- "CAMBIO DEL LUCES";
	observacion3 <- "REVISION TECNICO MECANICA";
	
	novedad1 <- "PENDIENTE DEL REEMPLAZO DE LA CAJA DE CAMBIOS";
	novedad2 <- "PENDIENTE DE CAMBIO DE LUCES";
	novedad3 <- "PENDIENTE DE REVISION TECNICO MECANICA";
	
	menu1 <- menuTaller();
	Limpiar Pantalla;
	
	Segun menu1 hacer
			1:
				menu1 <- elegirMoto(moto1,moto2,moto3);
				
				Segun menu1 Hacer
					1:
						estadoMoto(moto1,novedad1,novedad3);
					2:
						estadoMoto(moto2,novedad2,novedad1);
					3:
						estadoMoto(moto3,novedad2,novedad3);
					De Otro Modo:
						Escribir "NO VALIDO";
				FinSegun
				
			2:
				menu1 <- elegirMoto(moto1,moto2,moto3);
				
				Segun menu1 Hacer
					1:
						retirarMoto(moto1,observacion1,observacion3);
					2:
						retirarMoto(moto2,observacion2,observacion1);
					3:
						retirarMoto(moto3,observacion2,observacion3);
					De otro modo:
						Escribir "no valido"; 
					
				FinSegun
			
		De Otro Modo:
			escribir "no valido";
	FinSegun
	
FinProceso
