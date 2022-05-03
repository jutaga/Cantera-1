//Se está creando una aplicación que va a estar conectada con un prototipo que permita almacenar contactos telefónicos en el dispositivo. 
//Para ello cada contacto debe contener nombre completo, teléfono y organización. 
//Se requiere que la aplicación permita añadir 3 contactos verificando que el número no esté almacenado, buscar contactos almacenados y eliminar contactos si el usuario lo requiere.
// Recuerde que el sistema debe terminar cuando el usuario así lo indique.
Proceso punto6
	
	Definir contacto, guardado1, guardado2, guardado3 Como Real;
	Definir nombre, nombreG1, nombreG2, nombreG3 ,  organizacion , organizacionG1, organizacionG2, organizacionG3 Como Caracter;
	Definir accion, seguir Como Entero;
	Definir continuar Como Logico;
	
	continuar <- Falso;
	guardado1 <- 0;
	guardado2 <- 0;
	guardado3 <- 0;
	
	nombreG1 <- "NO ASIGNADO";
	nombreG2 <- "NO ASIGNADO";
	nombreG3 <- "NO ASIGNADO";
	
	organizacionG1 <- "NO ASIGNADO";
	organizacionG2 <- "NO ASIGNADO";
	organizacionG3 <- "NO ASIGNADO";
	
	
	Repetir
		
		Escribir "QUE FUNCION DESEA HACER EN SU AGENDA";
		Escribir "1. Agregar Nuevo contacto, MAXIMO: 3 CONTACTOS";
		Escribir "2. Buscar Contacto";
		Escribir "3. Eliminar contactos";
		Leer accion;
		Limpiar Pantalla;
		
		
		
		Si accion >= 1 Y accion <= 3 Entonces
			Segun accion hacer
				1:
					Escribir "ESCRIBE EL NOMBRE DEL CONTACTO A AGREGAR: ";
					leer nombre;
					Limpiar Pantalla;
					Escribir "INGRESE EL NUMERO DE TELEFONO: ";
					Leer contacto;
					Limpiar Pantalla;
					Escribir "INGRESE EL NOMBRE DE LA ORGANIZACION: ";
					Leer organizacion;
					Limpiar Pantalla;
					
						Si contacto = guardado1 O contacto = guardado2 O contacto = guardado3 Entonces
							Escribir "EL NUMERO YA EXISTE";
						SiNo
							Si guardado1 = 0 Entonces
								nombreG1 <- nombre;
								guardado1 <- contacto;
								organizacionG1 <- organizacion;
							SiNo
								Si guardado2 = 0 Entonces
									nombreG2 <- nombre;
									guardado2 <- contacto;
									organizacionG2 <- organizacion;
								SiNo
									Si guardado3 = 0 Entonces
										nombreG3 <- nombre;
										guardado3 <- contacto;
										organizacionG3 <- organizacion;
									SiNo
										Escribir "AGENDA LLENA , PORFAVOR ELIMINA CONTACTO";
									FinSi
									
								FinSi
							FinSi
						FinSi

				2:
					Escribir "QUE CONTACTO DESEAS CONSULTAR: ";
					Escribir "1. PRIMER CONTACTO";
					Escribir "2. SEGUNDO CONTACTO";
					Escribir "3. TERCER CONTACTO";
					Leer accion;
					Limpiar Pantalla;
					
					Segun accion Hacer
						1:
							Escribir "TU PRIMER CONTACTO ES: Numero: ", guardado1, " NOMBRE: ", nombreG1 , " ORGANIZACION: ", organizacionG1;
						2:
							Escribir "TU SEGUNDO CONTACTO ES: Numero: ", guardado2, " NOMBRE: ", nombreG2 , " ORGANIZACION: ", organizacionG2;
						3:
							Escribir "TU TERCER CONTACTO ES: Numero: ", guardado3, " NOMBRE: ", nombreG3 , " ORGANIZACION: ", organizacionG3;
					FinSegun
					
					
				3:
					Escribir "QUE CONTACTO DESEAS ELIMINAR: ";
					Escribir "1. PRIMER CONTACTO";
					Escribir "2. SEGUNDO CONTACTO";
					Escribir "3. TERCER CONTACTO";
					Leer accion;
					Limpiar Pantalla;
					
					Segun accion Hacer
						1:
							Escribir "ELIMINADO PRIMER CONTACTO";
							guardado1 <- 0;
							nombreG1 <- "NO ASIGADO";
							organizacionG1 <- "NO ASIGNADO";
						2:
							Escribir "ELIMINADO SEGUNDO CONTACTO";
							guardado2 <- 0;
							nombreG2 <- "NO ASIGADO";
							organizacionG2 <- "NO ASIGNADO";
						3:
							Escribir "ELIMINADO TERCER CONTACTO";
							guardado3 <- 0;
							nombreG3 <- "NO ASIGADO";
							organizacionG3 <- "NO ASIGNADO";
					FinSegun
			FinSegun
			Escribir "¿DESEAS CONTINUAR? 1:Si , 0: No ";
			Leer seguir;
			
			Si seguir = 0  O seguir = 1 Entonces
				Si seguir = 0 Entonces
					continuar <- Verdadero;
				FinSi
			SiNo
				
				Escribir "ACCION NO VALIDA";
				Escribir "DESCONECTADO";
				Esperar 3 Segundos;
				continuar <- Verdadero;
				
			FinSi
			Limpiar Pantalla;
		SiNo
			Escribir "ACCION NO VALIDA";
		FinSi
	Hasta Que continuar = Verdadero
FinProceso
