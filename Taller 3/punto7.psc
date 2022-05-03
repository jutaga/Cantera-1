//El parqueadero "El guardián" presta sus servicios de parqueadero nocturno para los usuarios del barrio y requiere una aplicación que permita registrar los vehículos que se cuidan en estas instalaciones. 
//Se sugiere que el parqueadero tenga los atributos del vehículo como son, placa y marca, y los datos del cliente como son nombre completo y número de teléfono. 
//Para cada vehículo se debe permitir la opción de ingresar al parqueadero, retirar del parqueadero y consultar si un vehículo se encuentra en el parqueadero. 
//Recuerde que el sistema debe terminar cuando el usuario así lo indique. Tenga en presente que el parqueadero solo puede almacenar máximo 5 vehículos.

Proceso punto7
	
	Definir eleccion Como Entero;
	Definir nombre, placa, marca Como Caracter;
	Definir telefono Como Real;
	Definir continuar Como Logico;
	
	Definir nombre1, nombre2, nombre3, nombre4, nombre5 Como Caracter;
	Definir telefono1, telefono2, telefono3, telefono4, telefono5 Como Real;
	Definir placa1, placa2, placa3, placa4, placa5 Como Caracter;
	Definir marca1, marca2, marca3, marca4, marca5 Como Caracter;
	Definir lugar1, lugar2, lugar3, lugar4, lugar5 Como Entero;
	
	continuar <- Verdadero;
	
	nombre1 <- "NO ASIGNADO";
	telefono1 <- 0;
	placa1 <- "VACIO";
	marca1 <- "VACIO";
	lugar1 <- 0;
	
	nombre2 <- "NO ASIGNADO";
	telefono2 <- 0;
	placa2 <- "VACIO";
	marca2 <- "VACIO";
	lugar2 <- 0;
	
	nombre3 <- "NO ASIGNADO";
	telefono3 <- 0;
	placa3 <- "VACIO";
	marca3 <- "VACIO";
	lugar3 <- 0;
	
	nombre4 <- "NO ASIGNADO";
	telefono4 <- 0;
	placa4 <- "VACIO";
	marca4 <- "VACIO";
	lugar4 <- 0;
	
	nombre5 <- "NO ASIGNADO";
	telefono5 <- 0;
	placa5 <- "VACIO";
	marca5 <- "VACIO";
	lugar5 <- 0;
	
	
	
	Mientras continuar = Verdadero Hacer
		
		Esperar 2 segundos;
		Limpiar Pantalla;
		Escribir  "Bienvenido a El parquedero EL GUARDIAN";
		Escribir "QUE SERVICIO DESEAS REALIZAR";
		Escribir "1. Ingresar un vehiculo";
		Escribir "2. Retirar un vehiculo";
		Escribir "3. Consultar su vehiculo";
		Escribir "4. Salir del sistema";
		Leer eleccion;
		Limpiar Pantalla;
		
		Si eleccion >= 0 Y eleccion <= 4 Entonces
			
			Segun eleccion Hacer
				
				1:
					Escribir "Escribe los siguientes datos para Ingresar tu vehiculo";
					Esperar 2 segundos;
					Escribir "ESCRIBE TU NOMBRE COMPLETO";
					Leer nombre;
					Limpiar Pantalla;
					Escribir "Telefono del dueño";
					Leer telefono;
					Limpiar Pantalla;
					Escribir "PLACAS DEL VEHICULO";
					leer placa;
					Limpiar Pantalla;
					Escribir "MARCA DEL VEHICULO";
					leer marca;
					
					Si lugar1 = 1 Y lugar2 = 1 Y lugar3 = 1 Y lugar4 = 1 Y lugar5 = 1 Entonces
						Escribir "PARQUEADERO LLENO, NO TENEMOS LUGAR DISPONIBLE";
						Escribir "Gracias por su visita";
					SiNo
						Si lugar1 = 0 Entonces
							nombre1 <- nombre;
							telefono1 <- telefono;
							placa1 <- placa;
							marca1 <- marca;
							lugar1 <- 1;
							
						SiNo
							Si lugar2 = 0 Entonces
								nombre2 <- nombre;
								telefono2 <- telefono;
								placa2 <- placa;
								marca2 <- marca;
								lugar2 <- 1;
								
							SiNo
								Si lugar3 = 0 Entonces
									nombre3 <- nombre;
									telefono3 <- telefono;
									placa3 <- placa;
									marca3 <- marca;
									lugar3 <- 1;
								SiNo
									Si lugar4 = 0 Entonces
										nombre4 <- nombre;
										telefono4 <- telefono;
										placa4 <- placa;
										marca4 <- marca;
										lugar4 <- 1;
									Sino
										Si Lugar5 = 0 Entonces
											nombre5 <- nombre;
											telefono5 <- telefono;
											placa5 <- placa;
											marca5 <- marca;
											lugar5 <- 1;
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
					
					Limpiar Pantalla;
					Escribir "TU VEHICULO: ", marca;
					Escribir "PLACAS: ", placa;
					Escribir "DUEÑO: ", nombre;
					Escribir "HA SIDO GUARDADO";
					Esperar 2 Segundos;
					Limpiar Pantalla;
				2:
					
					Si lugar1 = 0 Y lugar2 = 0 Y lugar3 = 0 Y lugar4 = 0 Y lugar5 = 0 Entonces
						Escribir "EL PARQUEADERO ESTA VACIO";
						
					SiNo
						Escribir "VEHICULO DESEAS RETIRAR DE NUESTRO PARQUEARO: ";
						Escribir "1. ",marca1, " PLACA: ", placa1;
						Escribir "2. ",marca2, " PLACA: ", placa2;
						Escribir "3. ",marca3, " PLACA: ", placa3;
						Escribir "4. ",marca4, " PLACA: ", placa4;
						Escribir "5. ",marca5, " PLACA: ", placa5;
						Leer eleccion;
						Limpiar Pantalla;
						
						Si eleccion >= 1 Y eleccion <= 5 Entonces
							
							Segun eleccion Hacer
								1:
									Si nombre1 = "NO ASIGNADO" Y placa1 = "VACIO" Entonces
										Escribir "NO HAY VEHICULO PARA RETIRAR";
									SiNo
										Escribir "El Vehiculo de: ", nombre1 , " Placa: ", placa1, " HA SIDO RETIRADO DEL PARQUE";
										nombre1 <- "NO ASIGNADO";
										telefono1 <- 0;
										placa1 <- "VACIO";
										marca1 <- "VACIO";
										lugar1 <- 0;
									FinSi
									
								2:
									Si nombre2 = "NO ASIGNADO" Y placa2 = "VACIO" Entonces
										Escribir "NO HAY VEHICULO PARA RETIRAR";
									SiNo
										Escribir "El Vehiculo de: ", nombre2 , " Placa: ", placa2, " HA SIDO RETIRADO DEL PARQUEADERO";
										nombre2 <- "NO ASIGNADO";
										telefono2 <- 0;
										placa2 <- "VACIO";
										marca2 <- "VACIO";
										lugar2 <- 0;
									FinSi
								3:
									Si nombre3 = "NO ASIGNADO" Y placa3 = "VACIO" Entonces
										Escribir "NO HAY VEHICULO PARA RETIRAR";
									SiNo
										Escribir "El Vehiculo de: ", nombre3 , " Placa: ", placa3, " HA SIDO RETIRADO DEL PARQUEADERO";
										nombre3 <- "NO ASIGNADO";
										telefono3 <- 0;
										placa3 <- "VACIO";
										marca3 <- "VACIO";
										lugar3 <- 0;
									FinSi
								4:
									Si nombre4 = "NO ASIGNADO" Y placa4 = "VACIO" Entonces
										Escribir "NO HAY VEHICULO PARA RETIRAR";
									SiNo
										Escribir "El Vehiculo de: ", nombre4 , " Placa: ", placa4, " HA SIDO RETIRADO DEL PARQUEADERO";
										nombre4 <- "NO ASIGNADO";
										telefono4 <- 0;
										placa4 <- "VACIO";
										marca4 <- "VACIO";
										lugar4 <- 0;
									FinSi
								5:
									Si nombre5 = "NO ASIGNADO" Y placa5 = "VACIO" Entonces
										Escribir "NO HAY VEHICULO PARA RETIRAR";
									SiNo
										Escribir "El Vehiculo de: ", nombre5 , " Placa: ", placa5, " HA SIDO RETIRADO DEL PARQUEADERO";
										nombre5 <- "NO ASIGNADO";
										telefono5 <- 0;
										placa5 <- "VACIO";
										marca5 <- "VACIO";
										lugar5 <- 0;
									FinSi
							FinSegun
						FinSi
					FinSi
 					
				3:
					
					Escribir "ESCRIBE LA PLACA";
					Leer placa;
					
					Si placa = placa1 Entonces
						Escribir "TU VEHICULO: ", marca1, " SE ENCUENTRA EN NUESTRO TALLER";
					SiNo
						Si placa = placa2 Entonces
							Escribir "TU VEHICULO: ", marca2, " SE ENCUENTRA EN NUESTRO TALLER";
						SiNo
							Si placa = placa3 Entonces
								Escribir "TU VEHICULO: ", marca3, " SE ENCUENTRA EN NUESTRO TALLER";
							SiNo
								Si placa = placa4 Entonces
									Escribir "TU VEHICULO: ", marca4, " SE ENCUENTRA EN NUESTRO TALLER";
								SiNo
									Si placa = placa5 Entonces
										Escribir "TU VEHICULO: ", marca5, " SE ENCUENTRA EN NUESTRO TALLER";
									SiNo
										Escribir "LA PLACA: ", placa, " NO REGISTRA EN NUESTRO SISTEMA";
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
					
				4:
					Escribir "GRACIAS POR VISITARNOS";
					Esperar 3 segundos;
					continuar <- Falso;
			FinSegun
		SiNo
			Escribir "ELECCION NO VALIDA";
		FinSi
	FinMientras
FinProceso


