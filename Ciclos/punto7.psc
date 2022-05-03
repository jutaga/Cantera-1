SubProceso menu <- menuPrincipal()
	Definir menu Como Entero;
	Escribir  "Bienvenido a El parquedero EL GUARDIAN";
	Escribir "QUE SERVICIO DESEAS REALIZAR";
	Escribir "1. Ingresar un vehiculo";
	Escribir "2. Retirar un vehiculo";
	Escribir "3. Consultar su vehiculo";
	Escribir "4. Salir del sistema";
	Leer menu;
	Limpiar Pantalla;
FinSubProceso

SubProceso pedir <- pedirNombre()
	Definir pedir Como Caracter;
	Escribir "ESCRIBE TU NOMBRE COMPLETO" Sin Saltar;
	Leer pedir;
FinSubProceso

SubProceso telefono <- pedirTelefono()
	Definir telefono Como Real;
	Escribir "Telefono del dueño" Sin Saltar;
	Leer telefono;
FinSubProceso

SubProceso placas <- placaVehiculo()
	Definir placas Como Caracter;
	Escribir "Digita la placa: "Sin Saltar;
	Leer placas;
FinSubProceso

SubProceso marcas <- marcaVehiculo()
	Definir marcas Como Caracter;
	Escribir "Escribe la marca del auto: "Sin Saltar;
	Leer marcas;
	Limpiar Pantalla;
FinSubProceso

SubProceso mostrarVehiculo(marcas,placas,nombres)
	Escribir "TU VEHICULO: ", marcas;
	Escribir "PLACAS: ", placas;
	Escribir "DUEÑO: ", nombres;
	Escribir "HA SIDO REGISTRADO";
	Escribir "PRESIONA UNA TECLA PARA CONTINUAR";
	Esperar Tecla;
	Limpiar Pantalla;
FinSubProceso

SubProceso vacio <- asignarVacio()
	Definir vacio Como Caracter;
	vacio <- "VACIO";
FinSubProceso

SubProceso asignado <- noAsignar()
	Definir asignado Como Caracter;
	asignado <- "NO ASIGNADO";
FinSubProceso

SubProceso retirarCoche(nombres,placas)
	Escribir "El Vehiculo de: ", nombres , " Placa: ", placas, " HA SIDO RETIRADO DEL PARQUEADERO";
	Escribir "PRESIONA UNA TECLA PARA CONTINUAR";
	Esperar Tecla;
	Limpiar Pantalla;
FinSubProceso

SubProceso menuCarro <- menuVehiculos(marcas1,marcas2,marcas3,marcas4,marcas5,placas1,placas2,placas3,placas4,placas5)
	Definir menuCarro Como Entero;
	Escribir "VEHICULO DESEAS RETIRAR DE NUESTRO PARQUEARO: ";
	Escribir "1. ",marcas1, " PLACA: ", placas1;
	Escribir "2. ",marcas2, " PLACA: ", placas2;
	Escribir "3. ",marcas3, " PLACA: ", placas3;
	Escribir "4. ",marcas4, " PLACA: ", placas4;
	Escribir "5. ",marcas5, " PLACA: ", placas5;
	Leer menuCarro;
FinSubProceso

SubProceso alerta()
	Escribir "EL PARQUEADERO ESTA VACIO";
	Escribir "PRESIONA UNA TECLA PARA CONTINUAR";
	Esperar Tecla;
	Limpiar Pantalla;
FinSubProceso

SubAlgoritmo alerta1()
	Escribir "PARQUEADERO LLENO, NO TENEMOS LUGAR DISPONIBLE";
	Escribir "Gracias por su visita";
	Esperar 2 segundos;
	Limpiar Pantalla;
FinSubAlgoritmo

SubProceso alerta2()
	Escribir "Operacion No valida";
	Esperar 2 segundos;
	Limpiar Pantalla;
FinSubProceso

SubProceso vehiculo(marcas)
	Escribir "TU VEHICULO: ", marcas, " SE ENCUENTRA EN NUESTRO TALLER";
FinSubProceso

Proceso punto7
	Definir eleccion,lugar Como Entero;
	Definir nombre, placa, marca,buscador Como Caracter;
	Definir telefono Como Real;
	Definir continuar Como Logico;
	
	Dimension nombre[5], placa[5], marca[5], telefono[5], lugar[5];
	
	continuar <- Verdadero;
	
	nombre[0] <- "NO ASIGNADO";
	telefono[0] <- 0;
	placa[0] <- "VACIO";
	marca[0] <- "VACIO";
	lugar[0] <- 0;
	
	nombre[1] <- "NO ASIGNADO";
	telefono[1] <- 0;
	placa[1] <- "VACIO";
	marca[1] <- "VACIO";
	lugar[1] <- 0;
	
	nombre[2] <- "NO ASIGNADO";
	telefono[2] <- 0;
	placa[2] <- "VACIO";
	marca[2] <- "VACIO";
	lugar[2] <- 0;
	
	nombre[3] <- "NO ASIGNADO";
	telefono[3] <- 0;
	placa[3] <- "VACIO";
	marca[3] <- "VACIO";
	lugar[3] <- 0;
	
	nombre[4] <- "NO ASIGNADO";
	telefono[4] <- 0;
	placa[4] <- "VACIO";
	marca[4] <- "VACIO";
	lugar[4] <- 0;
	
	Mientras continuar = Verdadero Hacer
		eleccion <- menuPrincipal();
		
		Segun eleccion Hacer
			1:
				Si lugar[0] = 1 Y lugar[1]  = 1 Y lugar[2]  = 1 Y lugar[3]  = 1 Y lugar[4]  = 1 Entonces
					alerta1();
				SiNo
					Si lugar[0] = 0 Entonces
						nombre[0] <- pedirNombre();
						telefono[0] <- pedirTelefono();
						placa[0] <- placaVehiculo();
						marca[0] <- MarcaVehiculo();
						lugar[0] <- 1;
						mostrarVehiculo(marca[0],placa[0],nombre[0]);
					SiNo
						Si lugar[1] = 0 Entonces
							nombre[1] <- pedirNombre();
							telefono[1] <- pedirTelefono();
							placa[1] <- placaVehiculo();
							marca[1] <- MarcaVehiculo();
							lugar[1] <- 1;
							mostrarVehiculo(marca[1],placa[1],nombre[1]);
						SiNo
							Si lugar[2] = 0 Entonces
								nombre[2] <- pedirNombre();
								telefono[2] <- pedirTelefono();
								placa[2] <- placaVehiculo();
								marca[2] <- MarcaVehiculo();
								lugar[2] <- 1;
								mostrarVehiculo(marca[2],placa[2],nombre[2]);
							SiNo
								Si lugar[3] = 0 Entonces
									nombre[3] <- pedirNombre();
									telefono[3] <- pedirTelefono();
									placa[3] <- placaVehiculo();
									marca[3] <- MarcaVehiculo();
									lugar[3] <- 1;
									mostrarVehiculo(marca[3],placa[3],nombre[3]);
								Sino
									Si Lugar[4] = 0 Entonces
										nombre[4] <- pedirNombre();
										telefono[4] <- pedirTelefono();
										placa[4] <- placaVehiculo();
										marca[4] <- MarcaVehiculo();
										lugar[4] <- 1;
										mostrarVehiculo(marca[4],placa[4],nombre[4]);
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			2:
				Si lugar[0] = 0 Y lugar[1]  = 0 Y lugar[2]  = 0 Y lugar[3]  = 0 Y lugar[4]  = 0 Entonces
					alerta();
				SiNo
					eleccion <- menuVehiculos(marca[0],marca[1],marca[2],marca[3],marca[4], placa[0],placa[1],placa[2],placa[3],placa[4]);
					Segun eleccion Hacer
						1:
							Si nombre[0] = "NO ASIGNADO" Y placa[0] = "VACIO" Entonces
								Escribir "NO HAY VEHICULO PARA RETIRAR";
							SiNo
								retirarCoche(nombre[0],placa[0]);
								nombre[0] <- noAsignar();
								telefono[0] <- 0;
								placa[0] <- asignarVacio();
								marca[0] <- asignarVacio();
								lugar[0] <- 0;
							FinSi
						2:
							Si nombre[1] = "NO ASIGNADO" Y placa[1] = "VACIO" Entonces
								Escribir "NO HAY VEHICULO PARA RETIRAR";
							SiNo
								retirarCoche(nombre[1],placa[1]);
								nombre[1] <- noAsignar();
								telefono[1] <- 0;
								placa[1] <- asignarVacio();
								marca[1] <- asignarVacio();
								lugar[1] <- 0;
							FinSi
						3:
							Si nombre[2] = "NO ASIGNADO" Y placa[2] = "VACIO" Entonces
								Escribir "NO HAY VEHICULO PARA RETIRAR";
							SiNo
								retirarCoche(nombre[2],placa[2]);
								nombre[2] <- noAsignar();
								telefono[2] <- 0;
								placa[2] <- asignarVacio();
								marca[2] <- asignarVacio();
								lugar[2] <- 0;
							FinSi
						4:
							Si nombre[3] = "NO ASIGNADO" Y placa[3] = "VACIO" Entonces
								Escribir "NO HAY VEHICULO PARA RETIRAR";
							SiNo
								retirarCoche(nombre[3],placa[3]);
								nombre[3] <- noAsignar();
								telefono[3] <- 0;
								placa[3] <- asignarVacio();
								marca[3] <- asignarVacio();
								lugar[3] <- 0;
							FinSi
						5:
							Si nombre[4] = "NO ASIGNADO" Y placa[4] = "VACIO" Entonces
								Escribir "NO HAY VEHICULO PARA RETIRAR";
							SiNo
								retirarCoche(nombre[4],placa[4]);
								nombre[4] <- noAsignar();
								telefono[4] <- 0;
								placa[4] <- asignarVacio();
								marca[4] <- asignarVacio();
								lugar[4] <- 0;
							FinSi
						De Otro Modo:
					FinSegun
				FinSi
			3:
				Escribir "ESCRIBE LA PLACA" Sin Saltar;
				Leer buscador;
				
				Si buscador = placa[0] Entonces
					vehiculo(marca[0]);
				SiNo
					Si buscador = placa[1] Entonces
						vehiculo(marca[1]);
					SiNo
						Si buscador = placa[2] Entonces
							vehiculo(marca[2]);
						SiNo
						Si	buscador = placa[3] Entonces
							vehiculo(marca[3]);
							SiNo
								Si buscador = placa[4] Entonces
									vehiculo(marca[4]);
								SiNo
									Escribir "LA PLACA: ", buscador, " NO REGISTRA EN NUESTRO SISTEMA";
									Escribir "PRESIONA UNA TECLA PARA CONTINUAR";
									Esperar Tecla;
									Limpiar Pantalla;
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			4:
				Escribir "GRACIAS POR VISITARNOS";
				Esperar 2 segundos;
				continuar <- Falso;
			De Otro Modo:
				alerta2();
		FinSegun
	FinMientras
FinProceso
