//El profesor de geometría está explicando a sus estudiantes las fórmulas para calcular el área de diferentes figuras geométricas, 
//para ello requiere una aplicación que le facilite el ejercicio solicitándole los valores al estudiante. 
//La aplicación debe permitir que el estudiante seleccione si desea calcular el área de un rectángulo, triángulo o trapecio.
//No olvide solicitar los datos necesarios para realizar cada cálculo y mostrar su respectivo resultado.
Proceso punto9
	Definir baseCorta , baseLarga , alturah , area Como Real;
	Definir tipoTriangulo Como entero;
	
	
	Escribir "Define el tipo de triangulo para calcular su Area: ";
	Escribir "1. Rectangulo";
	Escribir "2. Triangulo";
	Escribir "3. Trapecio";
	Leer tipoTriangulo;
	Limpiar Pantalla;
	
	Si tipoTriangulo >= 1 Y tipoTriangulo <= 3 Entonces
		Segun tipoTriangulo Hacer
			1:
				Escribir "Area de un Rectangulo";
				Escribir "Digite su base: ";
				Leer baseCorta;
				Escribir "Digite la Altura (h): ";
				Leer alturah;
				Limpiar Pantalla;
				Escribir "Rectangulo con base: ", baseCorta , " y altura: ", alturah;
				area <- baseCorta * alturah;
				Escribir "Su area es: ", area;
			2:
				Escribir "Area de un Triangulo";
				Escribir "Digite su base: ";
				Leer baseCorta;
				Escribir "Digite la Altura (h): ";
				Leer alturah;
				Limpiar Pantalla;
				Escribir "Triangulo con base: ", baseCorta , " y altura: ", alturah;
				area <- (baseCorta * alturah)/2;
				Escribir "Su area es: ", area;
			3:
				Escribir "Area de un Trapecio";
				Escribir "Digite su base mas corta: ";
				Leer baseCorta;
				Escribir "Digite su base mas larga: ";
				Leer baseLarga;
				Escribir "Digite la Altura (h): ";
				Leer alturah;
				Limpiar Pantalla;
				Escribir "Trapecio con base: ", baseCorta , " y altura: ", alturah;
				area <- ((baseLarga+baseCorta)*alturah)/2;
				Escribir "Su area es: ", area;
		FinSegun
	FinSi
	
FinProceso
