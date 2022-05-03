//La escuela automovilística "El Maestro" requiere una aplicación que permita registrar a sus clientes en los cursos de enseñanza automovilística y establecer quienes lo han aprobado para continuar con el trámite de adquirir la licencia de conducción.
//Para cada usuario se debe permitir registrar su ingreso al curso, consultar usuarios que hayan presentado el curso y resultados de la prueba del curso (si fueron aprobados o no). 
//Recuerde que el sistema debe terminar cuando el usuario así lo indique. Tenga presente que la escuela tiene capacidad máxima de gestionar 8 usuarios en su totalidad.
Proceso punto8
	
	Definir usuario, curso Como Caracter;
	Definir user1, user2, user3, user4, user5, user6, user7, user8 Como Caracter;
	Definir eleccion Como Entero;
	Definir continuar Como Logico;
	
	continuar <- Verdadero;
	
	curso <- "ENSEÑANZA AUTOMOVILISTICA";
	
	user1 <- "NO REGISTRADO";
	user2 <- "NO REGISTRADO";
	user3 <- "NO REGISTRADO";
	user4 <- "NO REGISTRADO";
	user5 <- "NO REGISTRADO";
	user6 <- "NO REGISTRADO";
	user7 <- "NO REGISTRADO";
	user8 <- "NO REGISTRADO";
	
	Repetir
		
		Escribir "Bienvenido al sistema de la Escuela Automovilistica EL MAESTRO";
		Escribir "Menú";
		Escribir "1. REGISTRAR INGRESO AL CURSO";
		Escribir "2. Consultar usuarios En Curso";
		Escribir "3. Consultar aprobados";
		Escribir "4. Salir del sistema";
		Leer eleccion;
		Limpiar Pantalla;
		
		Si eleccion >= 1 Y eleccion <= 4 Entonces
			
			Segun eleccion Hacer
				1:
					Escribir "ESCRIBE EL NOMBRE COMPLETO DEL USUARIO A REGISTRAR";
					Leer usuario;
					Limpiar Pantalla;
					Escribir "REGISTRO EN CURSO COMPLETO";
					Limpiar Pantalla;
					
					SI user1 <> "NO REGISTRADO" Y user2 <> "NO REGISTRADO" Y user3 <> "NO REGISTRADO" Y user4 <> "NO REGISTRADO" Y user5 <> "NO REGISTRADO" Y user6 <> "NO REGISTRADO" Y user7 <> "NO REGISTRADO" Y user8 <> "NO REGISTRADO" Entonces
						Escribir "CURSO LLENO , NO PUEDES REGISTRAR MAS USUARIOS";
						Esperar 2 Segundos;
						Limpiar Pantalla;
					SiNo
						si user1 = "NO REGISTRADO" Entonces
							user1 <- usuario;
						SiNo
							si user2 = "NO REGISTRADO" Entonces
								user2 <- usuario;
							SiNo
								si user3 = "NO REGISTRADO" Entonces
									user3 <- usuario;
								SiNo
									si user4 = "NO REGISTRADO" Entonces
										user4 <- usuario;
									SiNo
										si user5 = "NO REGISTRADO" Entonces
											user5 <- usuario;
										SiNo
											si user6 = "NO REGISTRADO" Entonces
												user6 <- usuario;
											SiNo
												si user7 = "NO REGISTRADO" Entonces
													user7 <- usuario;
												SiNo
													si user8 = "NO REGISTRADO" Entonces
														user8 <- usuario;
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
					SI user1 = "NO REGISTRADO" Y user2 = "NO REGISTRADO" Y user3 = "NO REGISTRADO" Y user4 = "NO REGISTRADO" Y user5 = "NO REGISTRADO" Y user6 = "NO REGISTRADO" Y user7 = "NO REGISTRADO" Y user8 = "NO REGISTRADO" Entonces
						Escribir "CURSO VACIO";
					SiNo
						Escribir "LOS SIGUIENTES USUARIOS PERTENECEN AL CURSO: ", curso;
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
				3:
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
							Escribir "LOS SIGUIENTES ESTUDIANTES HAN APROBADO EL CURSO: ",curso;
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
				4:
					Escribir "DESCONECTADO DEL SISTEMA";
					continuar <- Falso;
			FinSegun
		SiNo
			Escribir "ELECCION NO VALIDA";
			Esperar 2 segundos;
			Limpiar Pantalla;
		FinSi
	Hasta Que continuar = Falso; 
FinProceso
