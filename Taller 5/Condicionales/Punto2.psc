SubProceso capturar <- capturarEdad()
	Definir capturar Como Entero;
	Escribir "Digite su edad: " Sin Saltar;
	Leer capturar;
FinSubProceso

SubProceso mayoroMenor(num)
	Definir mayorMenor Como Entero;
	Si num < 18 Entonces
		Escribir "USTED ES UN NIÑO(A)";
	SiNo
		Escribir "ERES UN ADULTO";
	FinSi
FinSubProceso

Proceso punto2
	Definir edad Como Entero;
	
	edad <- capturarEdad();
	mayoroMenor(edad);
	
FinProceso