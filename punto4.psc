//Se requiere un programa que pueda crear la tabla de multiplicar del número que el usuario indique por medio del ciclo Para; 
//Esta debe ser impresa del 1 al 10. Ejemplo, si el usuario indica que desea crear la tabla del 5, entonces el resultado debería ser el siguiente:
Proceso punto4
	
	Definir multiplicar, resultado Como Entero;
	Definir i Como Entero;
	
	
	Escribir "Escribe el numero de la tabla de Multiplicar que quieres conocer  ";
	Leer multiplicar;
	
	Para i<- 0 Hasta 10 Con Paso 1 Hacer
		resultado <- multiplicar * i;
		Escribir multiplicar, " X ", i , " = ", resultado;
		
	FinPara
	
FinProceso
