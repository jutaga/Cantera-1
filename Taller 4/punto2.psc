//Crear un arreglo de n�meros enteros de 20 posiciones, el cual, debe ser llenado con n�meros aleatorios entre 1 y 100; 
//despu�s de haber llenado dicho arreglo, se debe volver a recorrer utilizando un ciclo diferente al que se us� para llenarse e imprimir los n�meros pares e impares. Ejemplo
//N�meros pares: 2, 4, 6, 8, 10
//N�meros impares: 1, 3, 5, 7, 9

Proceso punto2
	Definir numero1, indice, random Como Entero;
	Dimension numero1[20];
	
	random <- azar(100)+1;
	
	Escribir Sin Saltar "Numeros pares ";
	Para indice <- 0 Hasta 19 Con Paso 1 Hacer
		numero1[indice] <- azar(100)+1;
		Si numero1[indice] % 2 = 0 Entonces
			
			Escribir numero1[indice], " " Sin Saltar;
		Finsi
	FinPara
		
	Escribir "";
	
	Escribir Sin Saltar "Numeros impares ";
	Para indice <- 0 Hasta 19 Con Paso 1 Hacer
		Si numero1[indice] % 2 <> 0 Entonces
			Escribir numero1[indice], " " Sin Saltar;
		Finsi
	FinPara
FinProceso

