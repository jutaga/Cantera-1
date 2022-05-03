SubProceso menu <- menuPrincipal()
	Definir menu Como Entero;
	Escribir "QUE FUNCION DESEA HACER EN SU AGENDA";
	Escribir "1. Agregar Nuevo contacto, MAXIMO: 3 CONTACTOS";
	Escribir "2. Buscar Contacto";
	Escribir "3. Eliminar contactos";
	Escribir "4. Salir del sistema";
	Leer menu;
	Limpiar Pantalla;
FinSubProceso

SubProceso name <- pedirNombre()
	Definir name Como Caracter;
	Escribir "ESCRIBE EL NOMBRE DEL CONTACTO: " Sin Saltar;
	Leer name;
FinSubProceso

SubProceso contact <- pedirNumero()
	Definir contact Como Real;
	Escribir "INGRESE EL NUMERO DE TELEFONO: " Sin Saltar;
	Leer contact;
FinSubProceso

SubProceso company <- pedirEmpresa()
	Definir company Como Caracter;
	Escribir "INGRESE EL NOMBRE DE LA ORGANIZACION: " Sin Saltar;
	Leer company;
FinSubProceso

SubProceso mostrarContacto(name,contact,company)
		Escribir "Nombre: ", name;
		Escribir "Numero: ", contact;
		Escribir "Empresa: ", company;
FinSubProceso

SubProceso eliminar <- borrarDato()
	Definir eliminar Como Caracter;
	eliminar <- "";
FinSubProceso

Proceso punto6
	Definir contacto, guardado1, guardado2, guardado3 Como Real;
	Definir nombre, nombreG1, nombreG2, nombreG3 ,  organizacion , organizacionG1, organizacionG2, organizacionG3 Como Caracter;
	Definir accion Como Entero;
	Definir continuar Como Logico;
	
	continuar <- Verdadero;
	
	guardado1 <- 0;
	guardado2 <- 0;
	guardado3 <- 0;
	
	nombreG1 <- "";
	nombreG2 <- "";
	nombreG3 <- "";
	
	organizacionG1 <- "";
	organizacionG2 <- "";
	organizacionG3 <- "";
	
	Repetir
		
		accion <- menuPrincipal;
		Segun accion Hacer
			1:
				Si guardado1 <> 0 Y guardado2 <> 0 Y guardado3 <> 0 Entonces
					Escribir "AGENDA LLENA , PORFAVOR ELIMINE CONTACTOS";
					Escribir "PRESIONE UNA TECLA PARA CONTINUAR";
					Esperar Tecla;
				SiNo
					contacto <- pedirNumero();
					Si contacto = guardado1 O contacto = guardado2 O contacto = guardado3 Entonces
						Escribir "EL NUMERO YA EXISTE";
						Escribir "PRESIONE UNA TECLA PARA CONTINUAR";
						Esperar Tecla;
					SiNo
						Si guardado1 = 0 Entonces
							nombreG1 <- pedirNombre();
							guardado1 <- contacto;
							organizacionG1 <- pedirEmpresa();
						SiNo
							Si guardado2 = 0 Entonces
								nombreG2 <- pedirNombre();
								guardado2 <- contacto;
								organizacionG2 <- pedirEmpresa();
							SiNo
								Si guardado3 = 0 Entonces
									nombreG3 <- pedirNombre();
									guardado3 <- contacto;
									organizacionG3 <- pedirEmpresa();
								FinSi
							FinSi
						FinSi
					FinSi
				Finsi
					Limpiar Pantalla;
				2:
					nombre <- pedirNombre();
					Si nombre = nombreG1 Entonces
						mostrarContacto(nombreG1,guardado1,organizacionG1);
					SiNo
						Si nombre = nombreG2 Entonces
							mostrarContacto(nombreG2,guardado2,organizacionG2);
						SiNo
							Si nombre = nombreG3 Entonces
								mostrarContacto(nombreG3,guardado3,organizacionG3);
							SiNo
								Escribir "CONTACTO NO ESTA EN LA AGENDA";
							FinSi
						FinSi
					FinSi
					Escribir "PRESIONE UNA TECLA PARA CONTINUAR";
					Esperar Tecla;
					Limpiar Pantalla;
				3:
					nombre <- pedirNombre();
					Si nombre = nombreG1 Entonces
						Escribir nombre, " SE ELIMINÓ";
						guardado1 <- 0;
						nombreG1 <- borrarDato();
						organizacionG1 <- borrarDato();
						Escribir "PRESIONE UNA TECLA PARA CONTINUAR";
						Esperar Tecla;
						Limpiar Pantalla;
					SiNo
						Si nombre = nombreG2 Entonces
							Escribir nombre, " SE ELIMINÓ";
							guardado2 <- 0;
							nombreG2 <- borrarDato();
							organizacionG2 <- borrarDato();
							Escribir "PRESIONE UNA TECLA PARA CONTINUAR";
							Esperar Tecla;
							Limpiar Pantalla;
						SiNo
							Si nombre = nombreG3 Entonces
								Escribir nombre, " SE ELIMINÓ";
								guardado3 <- 0;
								nombreG3 <- borrarDato();
								organizacionG3 <- borrarDato();
								Escribir "PRESIONE UNA TECLA PARA CONTINUAR";
								Esperar Tecla;
								Limpiar Pantalla;
							FinSi
						FinSi
					Finsi
				4:	
					Escribir "DESCONECTADO DEL SISTEMA";
					continuar <- Falso;
				De Otro Modo:
					Escribir "ACCION NO VALIDA";
			FinSegun
		Hasta Que continuar = Falso
FinProceso
