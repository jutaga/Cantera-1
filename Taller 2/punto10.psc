//El banco "Su banco fiel" es un banco que inicia sus actividades financieras y necesita una aplicación para llevar las cuentas de sus usuarios;
//por lo tanto, se sugiere que la cuenta tenga los atributos titular y cantidad. Para cada cliente las cuentas permitirán realizar ingresos, retiros o consultas de valor.
//En los ingresos no se pueden insertar valores negativos y para los retiros el valor no puede ser mayor al valor que tiene en la cuenta.

Proceso punto10
	Definir titular1 , titular2, usuario Como Caracter;
	Definir saldo1 , saldo2 , retiro , ingreso Como Real;
	Definir operacion Como Entero;
	
	titular1 <- "juan";
	saldo1 <- 11000;
	
	titular2 <- "pablo";
	saldo2 <- 21000;
	
	Escribir "Bienvenido a su Banco fiel";
	Esperar 3 Segundos;
	Limpiar Pantalla;
	Escribir "¿Que operacion desea realizar?";
	Escribir  "1. Ingresar monto";
	Escribir  "2. Retirar monto";
	Escribir  "3. Consultar saldo";
	leer operacion;
	Limpiar Pantalla;
	
	Si operacion >= 1 Y operacion <= 3 Entonces
		
		Segun operacion Hacer
			1:
				Escribir "Cual es tu usuario";
				Leer usuario;
				Limpiar Pantalla;
				
				Si usuario = titular1 O usuario = titular2 Entonces
					
					Limpiar Pantalla;
					
					Si usuario = titular1 Entonces
						Escribir "DIGITE EL MONTO A CONSIGNAR: ";
						Leer ingreso;
						
						Si ingreso > 0 Entonces
							saldo1 <- saldo1 + ingreso;
							Escribir "Has consignado: ", ingreso , ", Tu Saldo actual es de: ", saldo1;
						Sino 
							Escribir "MONTO NO VALIDO";
						FinSi
					SiNo
						Escribir "DIGITE EL MONTO A CONSIGNAR: ";
						Leer ingreso;
						
						Si ingreso > 0 Entonces
							saldo2 <- saldo2 + ingreso;
							Escribir "Has consignado: ", ingreso , ", Tu Saldo actual es de: ", saldo2;
						Sino 
							Escribir "MONTO NO VALIDO";
						FinSi
					FinSi
				SiNo
					Escribir "USUARIO NO VALIDO";
				FinSi
							
			2:
				Escribir "Cual es tu usuario";
				Leer usuario;
				Limpiar Pantalla;
				
				Si usuario = titular1 O usuario = titular2 Entonces
					
					Si usuario = titular1 Entonces
						Escribir "DIGITE EL MONTO A RETIRAR: ";
						Leer retiro;
						Si retiro > 0 Y retiro <= saldo1 Entonces
							saldo1 <- saldo1 - retiro;
							Escribir "HAS RETIRADO: ", retiro , ", Tu saldo actual es de: ", saldo1;
						SiNo
							Escribir "MONTO A RETIRAR NO VALIDO";
						FinSi
						
					SiNo
						Escribir "DIGITE EL MONTO A RETIRAR: ";
						Leer retiro;
						Si retiro > 0 Y retiro <= saldo2 Entonces
							saldo2 <- saldo2 - retiro;
							Escribir "HAS RETIRADO: ", retiro , ", Tu saldo actual es de: ", saldo2;
						SiNo
							Escribir "MONTO A RETIRAR NO VALIDO";
						FinSi
					FinSi
				SiNo
					Escribir "USUARIO NO VALIDO";
				FinSi
			3:
				Escribir "Cual es tu usuario";
				Leer usuario;
				Limpiar Pantalla;
				
				Si usuario = titular1 O usuario = titular2 Entonces
					Si usuario = titular1 Entonces
						Escribir "TU SALDO ACTUAL ES DE: ", saldo1;
					SiNo
						Escribir "TU SALDO ACTUAL ES DE: ", saldo2;
					FinSi
				SiNo
					Escribir "USUARIO NO VALIDO";
				FinSi
				
		FinSegun
		
	FinSi
	
FinProceso	
