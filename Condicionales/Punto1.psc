SubProceso capturar <- capturarEdad()
	Definir capturar Como Entero;
	Escribir "Digite su edad: " Sin Saltar;
	Leer capturar;
FinSubProceso

SubProceso mayoroMenor(num)
	Definir mayorMenor Como Entero;
	Si num >= 18 Entonces
		Escribir "ERES MAYOR DE EDAD";
	SiNo
		Escribir "ERES MENOR DE EDAD";
	FinSi
FinSubProceso

Proceso punto1
	Definir edad Como Entero;
	
	edad <- capturarEdad();
	mayoroMenor(edad);
	
FinProceso
