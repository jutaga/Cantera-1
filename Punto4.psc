//La video tienda que presta sus servicios de alquiler de películas a los usuarios del barrio el Porvenir, requiere de una aplicación que permita registrar el alquiler de las películas que adquieren sus usuarios. 
//Para cada usuario se debe permitir la opción de alquilar película, consultar películas disponibles y recibir película en la video tienda con la opción de realizar anotaciones sobre estas si se llegan a presentar 
//daños u otra novedad sobre la película.

Proceso Punto4
	Definir usuario Como Caracter;
	Definir anotacion Como Logico;
	Definir anotacion1 Como Caracter;
	Definir opcion Como Entero;
	Definir eleccion Como Entero;
	
	
	Escribir "Bienvenido a nuestra tienta de alquiler de peliculas";
	Escribir "Ingrese el nombre de usuario registrado";
	Leer usuario;
	
	Escribir "Eliga una de las opcines a realizar";
	Escribir "1. Consultar peliculas disponibles";
	Escribir "2. Alquilar Pelicula";
	Escribir  "3. Entregar pelicula";
	Leer opcion;
	
	Limpiar Pantalla;
	
	Segun opcion Hacer
			1:
				Escribir "Tenemos las siguientes peliculas disponibles";
				Escribir "1. 300 el renacer de un imperio";
				Escribir "2. La liga de la justicia";
				Escribir "3. Piratas del caribe";
				
				
			2:
				Escribir "Tenemos las siguientes peliculas disponibles";
				Escribir "1. 300 el renacer de un imperio";
				Escribir "2. La liga de la justicia";
				Escribir "3. Piratas del caribe";
				Escribir "CUAL PELICULA DESEAS ALQUILAR";
				leer eleccion;
				
				Segun eleccion Hacer
						1:
							Escribir usuario ," Has alquilado la pelicula: 300 el renacer de un imperio";
						2:
							Escribir usuario ," Has alquilado la pelicula: La liga de la justicia";
						3:
							Escribir usuario ," Has alquilado la pelicula: Piratas del caribe";
				FinSegun
				
			3:
				Escribir "¿Que pelicula deseas entregar?";
				Escribir "1. 300 el renacer de un imperio";
				Escribir "2. La liga de la justicia";
				Escribir "3. Piratas del caribe";
				Leer eleccion;
				Escribir "¿Tienes alguna anotacion para dejar sobre la pelicula? si:Verdadero , No: Falso";
				Leer anotacion;
				Si anotacion = Verdadero Entonces
					Escribir "Que anotacion tienes sobre la pelicula?";
					Leer anotacion1;
					Escribir "Hemos almacenado tu comentario";
				FinSi
				
				Segun eleccion Hacer
					1:
						Escribir usuario ," Has entregado la pelicula: 300 el renacer de un imperio";
					2:
						Escribir usuario ," Has entregado la pelicula: La liga de la justicia";
					3:
						Escribir usuario ," Has entregado la pelicula: Piratas del caribe";
				FinSegun
				
				
			De Otro Modo:
				Escribir "No es valida tu eleccion";
	FinSegun
	
FinProceso
