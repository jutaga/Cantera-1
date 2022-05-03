SubProceso nombre <- pedirNombre()
	Definir nombre Como Caracter;
	Escribir "DIGITE SU NOMBRE " Sin Saltar;
	Leer nombre;
FinSubProceso

SubProceso apellidos <- pedirApellidos()
	Definir apellidos Como Caracter;
	Escribir "DIGITE SUS APELLIDOS " Sin Saltar;
	Leer apellidos;
FinSubProceso

SubProceso capturar <- capturarEdad()
	Definir capturar Como Entero;
	Escribir "Digite su edad: " Sin Saltar;
	Leer capturar;
FinSubProceso

SubProceso mayoroMenor(num,nom,apel)
	Si num >= 18 Entonces
		Escribir nom, " ", apel, " USTED ES MAYOR DE EDAD, POR LO TANTO PUEDE ENTRAR A LA FIESTA, BIENVENIDO(A)";
	SiNo
		Escribir nom, " ", apel, " USTED ES MENOR DE EDAD, POR LO TANTO NO PUEDE ENTRAR A LA FIESTA";
	FinSi
FinSubProceso

Proceso punto3
	Definir edad Como Entero;
	Definir nombre, apellidos Como Caracter;
	nombre <- pedirNombre();
	apellidos <- pedirApellidos();
	edad <- capturarEdad();
	mayoroMenor(edad,nombre,apellidos);
FinProceso
