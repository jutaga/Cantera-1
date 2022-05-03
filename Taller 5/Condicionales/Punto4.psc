SubProceso usuario <- PedirUsuario()
	Definir usuario Como Caracter;
	Escribir "Bienvenido a nuestra tienta de alquiler de peliculas";
	Escribir "Ingrese el nombre de usuario registrado";
	Leer usuario;
	Limpiar Pantalla;
FinSubProceso

SubProceso menu <- menuPrincipal()
	Definir menu Como Entero;
	Escribir "Eliga una de las opcines a realizar";
	Escribir "1. Consultar peliculas disponibles";
	Escribir "2. Alquilar Pelicula";
	Escribir "3. Entregar pelicula";
	Leer menu;
	Limpiar Pantalla;
FinSubProceso


SubProceso opcionesPeliculas(peli1,peli2,peli3)
	Escribir "Peliculas";
	Escribir "1. ", peli1;
	Escribir "2. ", peli2;
	Escribir "3. ", peli3;
FinSubProceso

SubProceso alquilar<- alquilarPelicula(usuario,peli1,peli2,peli3)
	Definir alquilar Como Entero;
	Leer alquilar;
	Limpiar Pantalla;
	Segun alquilar Hacer
		1:
			Escribir usuario ," Has alquilado la pelicula: ", peli1;
		2:
			Escribir usuario ," Has alquilado la pelicula: ", peli2;
		3:
			Escribir usuario ," Has alquilado la pelicula: ", peli3;
		De Otro Modo:
			Escribir "OPCION NO VALIDA";
	FinSegun
FinSubProceso

SubProceso entregar <- entregaPelicula(peli1,peli2,peli3,nota1)
	Definir entregar Como Entero;
	Leer entregar;
	Segun entregar Hacer
		1:
			Escribir " Has entregado la pelicula: ", peli1;
			Escribir "Observacion: ",nota1;
		2:
			Escribir " Has entregado la pelicula: ", peli2;
			Escribir "Observacion: ",nota1;
		3:
			Escribir " Has entregado la pelicula: ", peli3;
			Escribir "Observacion: ",nota1;
		De Otro Modo:
			Escribir "OPCION NO VALIDA";
	FinSegun
FinSubProceso

Proceso Punto4
	Definir usuario,peliculas , nota Como Caracter;
	Definir opcion Como Entero;
	Dimension peliculas[3];
	
	peliculas[0] <- "300 el renacer de un imperio";
	peliculas[1] <- "La liga de la justicia";
	peliculas[2] <- "Piratas del caribe";
	
	usuario <- PedirUsuario();
	opcion <- menuPrincipal();
	
	Segun opcion Hacer
		1:
			opcionesPeliculas(peliculas[0],peliculas[1],peliculas[2]);
		2:
			opcionesPeliculas(peliculas[0],peliculas[1],peliculas[2]);
			opcion <- alquilarPelicula(usuario,peliculas[0],peliculas[1],peliculas[2]);
		3:
			Escribir "Deseas agregar una anotacion SI:1 o NO:0";
			Leer opcion;
			Limpiar Pantalla;
			Segun  opcion Hacer
				0:
					nota <- "NINGUNA";
				1:
					Escribir "ESCRIBE TU OBSERVACION" Sin Saltar;
					Leer nota;
					Limpiar Pantalla;
					
				De Otro Modo:
					nota <- "NINGUNA";
				
			FinSegun
			opcionesPeliculas(peliculas[0],peliculas[1],peliculas[2]);
			opcion <- entregaPelicula(peliculas[0],peliculas[1],peliculas[2],nota);
			De Otro Modo:
			Escribir "OPCION NO VALIDA";
			
	FinSegun
	
	
FinProceso
