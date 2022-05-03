SubProceso menu <- menuPrincipal()
	Definir menu Como Entero;
	Escribir "Bienvenido al sistema de la Escuela Automovilistica EL MAESTRO";
	Escribir "Menú";
	Escribir "1. REGISTRAR INGRESO AL CURSO";
	Escribir "2. Consultar usuarios En Curso";
	Escribir "3. Consultar aprobados";
	Escribir "4. Salir del sistema";
	Leer menu;
	Limpiar Pantalla;
FinSubProceso

SubProceso alertaNovalido()
	Escribir "ACCION NO VALIDA, VUELVA A INTENTAR";
	Esperar 2 segundos;
	Limpiar Pantalla;
FinSubProceso

SubProceso user <- capturarUsuario()
	Definir user Como Caracter;
	Escribir "ESCRIBE EL NOMBRE COMPLETO DEL USUARIO A REGISTRAR" Sin Saltar;
	Leer user;
	Escribir "REGISTRO EN CURSO COMPLETO";
	Esperar 2 Segundos;
	Limpiar Pantalla;
FinSubProceso

SubProceso mostrarRegistrados(clase,user1,user2,user3,user4,user5,user6,user7,user8)
	SI user1 = "NO REGISTRADO" Y user2 = "NO REGISTRADO" Y user3 = "NO REGISTRADO" Y user4 = "NO REGISTRADO" Y user5 = "NO REGISTRADO" Y user6 = "NO REGISTRADO" Y user7 = "NO REGISTRADO" Y user8 = "NO REGISTRADO" Entonces
		Escribir "CURSO VACIO";
	SiNo
		Escribir "LOS SIGUIENTES USUARIOS PERTENECEN AL CURSO: ", clase;
		Si user1 <> "NO REGISTRADO" Entonces
			Escribir user1;
		FinSi
		Si user2 <> "NO REGISTRADO" Entonces
			Escribir user2;
		FinSi
		Si user3 <> "NO REGISTRADO" Entonces
			Escribir user3;
		FinSi
		Si user4 <> "NO REGISTRADO" Entonces
			Escribir user4;
		FinSi
		Si user5 <> "NO REGISTRADO" Entonces
			Escribir user5;
		FinSi
		Si user6 <> "NO REGISTRADO" Entonces
			Escribir user6;
		FinSi
		Si user7 <> "NO REGISTRADO" Entonces
			Escribir user7;
		FinSi
		Si user8 <> "NO REGISTRADO" Entonces
			Escribir user8;
		FinSi
	FinSi
	Escribir "Presiona una tecla para continuar";
	Esperar Tecla;
	Limpiar Pantalla;
FinSubProceso

SubProceso mostrarAprobados(clase,user1,user2,user3,user4,user5,user6,user7,user8)
	SI user1 = "NO REGISTRADO" Y user2 = "NO REGISTRADO" Y user3 = "NO REGISTRADO" Y user4 = "NO REGISTRADO" Y user5 = "NO REGISTRADO" Y user6 = "NO REGISTRADO" Y user7 = "NO REGISTRADO" Y user8 = "NO REGISTRADO" Entonces
		Escribir "CURSO VACIO, NO HAY ESTUDIANTES";
		Esperar 3 segundos;
		Limpiar Pantalla;
	SiNo
		SI user2 = "NO REGISTRADO" Y user5 = "NO REGISTRADO" Y user6 = "NO REGISTRADO" Y user8 = "NO REGISTRADO" Entonces
			
			Escribir "NO HAY APROBADOS";
			Esperar 2 Segundos;
			Limpiar Pantalla;
		SiNo
			Escribir "LOS SIGUIENTES ESTUDIANTES HAN APROBADO EL CURSO: ",clase;
			Si user2 <> "NO REGISTRADO" Entonces
				Escribir user2;
			FinSi
			Si user5 <> "NO REGISTRADO" Entonces
				Escribir user5;
			FinSi
			Si user6 <> "NO REGISTRADO" Entonces
				Escribir user6;
			FinSi
			Si user8 <> "NO REGISTRADO" Entonces
				Escribir user8;
			FinSi
			Escribir "Pulsa una tecla para continuar";
			Esperar Tecla;
			Limpiar Pantalla;
		FinSi
	FinSi
FinSubProceso

Proceso punto8
	Definir usuario, curso Como Caracter;
	Definir user Como Caracter;
	Definir eleccion,index Como Entero;
	Definir continuar Como Logico;
	Dimension user[8];
	
	continuar <- Verdadero;
	curso <- "ENSEÑANZA AUTOMOVILISTICA";
	
	Para index <- 0 hasta 7 Con Paso 1 Hacer
		user[index] <- "NO REGISTRADO";
	FinPara
	
	
	Repetir
		eleccion <- menuPrincipal();
		Segun eleccion Hacer
			1:
				SI user[0] <> "NO REGISTRADO" Y user[1] <> "NO REGISTRADO" Y user[2] <> "NO REGISTRADO" Y user[3] <> "NO REGISTRADO" Y user[4] <> "NO REGISTRADO" Y user[5] <> "NO REGISTRADO" Y user[6] <> "NO REGISTRADO" Y user[7] <> "NO REGISTRADO" Entonces
					Escribir "CURSO LLENO , NO PUEDES REGISTRAR MAS USUARIOS";
					Esperar 2 Segundos;
					Limpiar Pantalla;
				SiNo
					si user[0] = "NO REGISTRADO" Entonces
						user[0] <- capturarUsuario();
					SiNo
						si user[1] = "NO REGISTRADO" Entonces
							user[1] <- capturarUsuario();
						SiNo
							si user[2] = "NO REGISTRADO" Entonces
								user[2] <- capturarUsuario();
							SiNo
								si user[3] = "NO REGISTRADO" Entonces
									user[3] <- capturarUsuario();;
								SiNo
									si user[4] = "NO REGISTRADO" Entonces
										user[4] <- capturarUsuario();
									SiNo
										si user[5] = "NO REGISTRADO" Entonces
											user[5] <- capturarUsuario();
										SiNo
											si user[6] = "NO REGISTRADO" Entonces
												user[6] <- capturarUsuario();
											SiNo
												si user[7] = "NO REGISTRADO" Entonces
													user[7] <- capturarUsuario();
												FinSi
											FinSi
										FinSi
									FinSi
								FinSi
							FinSi
						FinSi
					FinSi
				FinSi
			2:
				mostrarRegistrados(curso,user[0],user[1],user[2],user[3],user[4],user[5],user[6],user[7]);
			3:
				mostrarAprobados(curso,user[0],user[1],user[2],user[3],user[4],user[5],user[6],user[7]);
			4:
				Escribir "DESCONECTADO DEL SISTEMA";
				continuar <- Falso;
			De Otro Modo:
				alertaNovalido();
		FinSegun
	Hasta Que continuar = Falso
FinProceso
