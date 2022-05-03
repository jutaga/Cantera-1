SubProceso menu <- menuPrincipal()
	Definir menu Como Entero;
	Escribir "Define el tipo de triangulo para calcular su Area: ";
	Escribir "1. Rectangulo";
	Escribir "2. Triangulo";
	Escribir "3. Trapecio";
	Leer menu;
	Limpiar Pantalla;
FinSubProceso

SubProceso  pedir <- pedirDato()
	Definir pedir Como Real;
	Leer pedir;
FinSubProceso

SubProceso rectangulo <- trianguloRectangulo(base,altura)
	Definir rectangulo Como Real;
	rectangulo <- base * altura;
	Escribir "SU AREA ES: ", rectangulo;
FinSubProceso

SubProceso triangulo <- trianguloNormal(base,altura)
	Definir triangulo Como Real;
	triangulo <- (base * altura)/2;
	Escribir "SU AREA ES: ", triangulo;
FinSubProceso

SubProceso trapecio <- trianguloTrapecio(base1,base2,altura)
	Definir trapecio Como Real;
	trapecio <- ((base1+base2)*altura)/2;
	Escribir "SU AREA ES: ", trapecio;
FinSubProceso

Proceso punto9
	Definir baseCorta , baseLarga , alturah , area Como Real;
	Definir tipoTriangulo Como entero;
	
	tipoTriangulo <- menuPrincipal();
	
	Segun tipoTriangulo Hacer
		1:
			Escribir "DIGITA LA BASE: " Sin Saltar;
			baseCorta <- pedirDato();
			Escribir "DIGITA LA ALTURA: " Sin Saltar;
			alturah <- pedirDato();
			area <- trianguloRectangulo(baseCorta,alturah);
		2:
			Escribir "DIGITA LA BASE: " Sin Saltar;
			baseCorta <- pedirDato();
			Escribir "DIGITA LA ALTURA: " Sin Saltar;
			alturah <- pedirDato();
			area <- trianguloNormal(baseCorta,alturah);
		3:
			Escribir "DIGITA LA BASE CORTA: " Sin Saltar;
			baseCorta <- pedirDato();
			Escribir "DIGITA LA BASE LARGA: " Sin Saltar;
			baseLarga <- pedirDato();
			Escribir "DIGITA LA ALTURA: " Sin Saltar;
			alturah <- pedirDato();
			area <- trianguloTrapecio(baseLarga,baseCorta,alturah);
		De Otro Modo:
			Escribir "NO VALIDO";
	FinSegun
	
FinProceso
