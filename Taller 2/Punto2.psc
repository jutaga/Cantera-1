//Realizar un programa en el cual se solicite la edad de una persona. Si la persona es menor a 18 años, deberá mostrar en pantalla: Usted aún es un niño(a).

Proceso Punto2
	Definir edad Como Entero;
	
	Escribir "Digite su edad";
	Leer edad;
	
	Si edad < 18 Entonces
		Escribir "Usted es aun un niño(a)";
	SiNo
		Escribir "Eres un adulto";
		
	FinSi
	
FinProceso
