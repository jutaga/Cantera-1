SubProceso menu <- menuPrincipal()
	Definir menu Como Entero;
	Escribir "Bienvenido al Sistema de la Secretaria de Salud Municipal";
	Escribir  "¿Cuantas personas van a realizar su pesaje?, MAXIMO = 2";
	leer menu;
FinSubProceso

SubProceso name <- pedirNombre()
	definir name Como Caracter;
	Escribir "Digite el nombre de la persona: ";
	Leer name;
	Limpiar Pantalla;
FinSubProceso

SubProceso peso <- pesoPersona()
	Definir peso Como Real;
	Escribir "Digite su peso en Kg" Sin Saltar;
	Leer peso;
	Limpiar Pantalla;
FinSubProceso

SubProceso estatura <- estaturaPersona()
	Definir estatura Como Real;
	Escribir "Digite su estatura en Metros" Sin Saltar;
	Leer estatura;
	Limpiar Pantalla;
FinSubProceso

SubProceso indiceDeMasa(peso,estatura,name)
	
	si (peso/(estatura)^2) < 18.5 Entonces
		Escribir name," BAJO PESO , Peso inferior al normal";
	FinSi
	Si (peso/(estatura)^2) >= 18.5 Y (peso/(estatura)^2) < 25 Entonces
		Escribir name, " tu IMC es Normal";
		
	FinSi
	Si (peso/(estatura)^2) >= 25 Y (peso/(estatura)^2) < 30 Entonces
		Escribir name, " Peso superior al normal, SOBREPESO";
	FinSi
	Si (peso/(estatura)^2) >= 30 Entonces
		Escribir name, " Peso muy superior, Obesidad";
	FinSi
FinSubProceso

Proceso punto7
	Definir peso1,estatura1 Como Real;
	Definir peso2,estatura2 Como Real;
	Definir nombre1,nombre2 Como Caracter;
	Definir selector Como Entero;
	
	selector <- menuPrincipal();
	Limpiar Pantalla;
	
	Segun selector Hacer
		1:
			nombre1 <- pedirNombre();
			peso1 <- pesoPersona();
			estatura1 <- estaturaPersona();
			indiceDeMasa(peso1,estatura1,nombre1);
		2:
			nombre1 <- pedirNombre();
			peso1 <- pesoPersona();
			estatura1 <- estaturaPersona();
			nombre2 <- pedirNombre();
			peso2 <- pesoPersona();
			estatura2 <- estaturaPersona();
			Escribir "persona 1: " Sin Saltar;
			indiceDeMasa(peso1,estatura1,nombre1);
			Escribir "persona 2: " Sin Saltar ;
			indiceDeMasa(peso2,estatura2,nombre2);

		De Otro Modo:
			Escribir "NO VALIDO PARA MAS DE DOS PERSONAS";
	FinSegun
FinProceso
