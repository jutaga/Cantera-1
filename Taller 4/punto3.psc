//imprimir los números primos del 1 al 1000, el resultado debe ser buscado de forma matemática.
Proceso punto3
	
	Definir primo, dividir, posicion, contador Como Entero;
	Dimension primo[1000];
	
	contador <- 0;
	
	Escribir Sin Saltar "LOS NUMEROS PRIMOS SON: ";
	Para posicion <- 0 hasta 999 Con Paso 1 Hacer
		primo[posicion] <- posicion + 1;
		Para dividir <- 1 Hasta posicion + 1 Hacer
			si primo[posicion] % dividir = 0 Entonces
				contador <- contador + 1;
			FinSi
		FinPara
		
		si contador = 2 Entonces
			Escribir primo[posicion] , " " Sin Saltar;
		FinSi
		
		si contador > 2 Entonces
			contador <- 0;
		FinSi
		
	FinPara
FinProceso

