//El taller de motos "El Maquinista" recibe motocicletas de alto cilindraje para realizar las respectivas revisiones y requiere una aplicación que le permita registrar los servicios generados a sus clientes. 
//Para cada motocicleta se debe tener registro del ingreso al taller y las observaciones por parte del cliente. 
//También debe existir registro de salida del taller con las novedades y otra de arreglos hechos por el mecánico en caso de que se requiera inventariar cambios repuestos en la motocicleta al entregarla.


Proceso punto6
	
	Definir moto1 Como Caracter;
	Definir moto2 Como Caracter;
	Definir moto3 Como Caracter;
	Definir observacion1 Como Caracter;
	Definir observacion2 Como Caracter;
	Definir observacion3 Como Caracter;
	Definir novedad1 Como Caracter;
	Definir novedad2 Como Caracter;
	Definir novedad3 Como Caracter;
	Definir eleccion Como Entero;
	Definir retirar Como Logico;
		
	moto1 <- "VICTORY";
	moto2 <- "YAMAHA";
	moto3 <- "BOXER";
	
	observacion1 <- "REEMPLAZO DE CAJA DE CAMBIOS";
	observacion2 <- "CAMBIO DEL LUCES";
	observacion3 <- "REVISION TECNICO MECANICA";
	
	novedad1 <- "PENDIENTE DEL REEMPLAZO DE LA CAJA DE CAMBIOS";
	novedad2 <- "PENDIENTE DE CAMBIO DE LUCES";
	novedad3 <- "PENDIENTE DE REVISION TECNICO MECANICA";
	
	Escribir "Bienvenido a El taller de motos EL MAQUINISTA";
	Esperar 3 Segundos;
	Limpiar Pantalla;
	Escribir "1. CONSULTAR EL ESTADO DE SU MOTOCICLETA";
	Escribir "2. RETIRAR SU MOTOCICLETA DEL TALLER ";
	Leer eleccion;
	
	Limpiar Pantalla;
	
	Segun eleccion Hacer
		1:
			Escribir "¿Cual es tu motocicleta?";
			Escribir "1. ",moto1;
			Escribir "2. ",moto2;
			Escribir "3. ",moto3;
			Leer eleccion;
			
			Segun eleccion hacer
				1:
					Escribir "Tu moto seleccionada es: ", moto1;	
					Esperar 3 Segundos;
					Limpiar Pantalla;
					Escribir "Se le realizaron las siguientes reparaciones: ";
					Escribir observacion1 , " y " , observacion3;
					Esperar 3 Segundos;
					Escribir "¿Desea retirar La motocicleta? Si: Verdadero o No: Falso";
					Leer retirar;
					Limpiar Pantalla;
					Si retirar = Verdadero Entonces
						
						Escribir "Tu moto: ", moto1 , " ha sido retirada con las reparaciones de: ", observacion1, " y ", observacion3;
					SiNo
						Escribir "Guardaremos su moto hasta que decidas retirarla , gracias por su visita";
					FinSi
				2:
					Escribir "Tu moto seleccionada es: ", moto2;	
					Esperar 3 Segundos;
					Limpiar Pantalla;
					Escribir "Se le realizaron las siguientes reparaciones: ";
					Escribir observacion2 , " y " , observacion1;
					Esperar 3 Segundos;
					Escribir "¿Desea retirar La motocicleta? Si: Verdadero o No: Falso";
					Leer retirar;
					Limpiar Pantalla;
					Si retirar = Verdadero Entonces
						
						Escribir "Tu moto: ", moto2 , " ha sido retirada con las reparaciones de: ", observacion2, " y ", observacion1;
					SiNo
						Escribir "Guardaremos su moto hasta que decidas retirarla , gracias por su visita";
					FinSi
				3:
					Escribir "Tu moto seleccionada es: ", moto3;	
					Esperar 3 Segundos;
					Limpiar Pantalla;
					Escribir "Se le realizaron las siguientes reparaciones: ";
					Escribir observacion2 , " y " , observacion3;
					Esperar 3 Segundos;
					Escribir "¿Desea retirar La motocicleta? Si: Verdadero o No: Falso";
					Leer retirar;
					Limpiar Pantalla;
					Si retirar = Verdadero Entonces
						
						Escribir "Tu moto: ", moto3 , " ha sido retirada con las reparaciones de: ", observacion2, " y ", observacion3;
					SiNo
						Escribir "Guardaremos su moto hasta que decidas retirarla , gracias por su visita";
					FinSi
					
			FinSegun
		2:
			Escribir "¿Cual es tu motocicleta?";
			Escribir "1. ",moto1;
			Escribir "2. ",moto2;
			Escribir "3. ",moto3;
			Leer eleccion;
			Esperar 3 Segundos;
			Limpiar Pantalla;
			
			Segun eleccion Hacer
				1:
					Escribir moto1, " esta pendiente de realizar las siguientes actividades: ";
					Escribir novedad1, " y ", novedad3;
					Escribir "¿Esta seguro que quiere retirar su moto? si: verdadero o no: falso" ;
					leer retirar;
					Limpiar Pantalla;
					si retirar = Verdadero Entonces
						Escribir moto1 ," retirada del taller";
					SiNo
						Escribir "Continuaremos con las reparaciones a su moto , gracias por su visita";
					FinSi
				2:
					Escribir moto2, " esta pendiente de realizar las siguientes actividades: ";
					Escribir novedad3, " y ", novedad2;
					Escribir "¿Esta seguro que quiere retirar su moto? si: verdadero o no: falso" ;
					leer retirar;
					Limpiar Pantalla;
					si retirar = Verdadero Entonces
						Escribir moto2 ," retirada del taller";
					SiNo
						Escribir "Continuaremos con las reparaciones a su moto , gracias por su visita";
					FinSi
				3:
					Escribir moto3, " esta pendiente de realizar las siguientes actividades: ";
					Escribir novedad2, " y ", novedad1;
					Escribir "¿Esta seguro que quiere retirar su moto? si: verdadero o no: falso" ;
					leer retirar;
					Limpiar Pantalla;
					si retirar = Verdadero Entonces
						Escribir moto3 ," retirada del taller";
					SiNo
						Escribir "Continuaremos con las reparaciones a su moto , gracias por su visita";
					FinSi
			FinSegun
			
		FinSegun
	
	
	
	
	
FinProceso
