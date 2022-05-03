SubProceso random <- numeroRandom()
	definir random Como Entero;
	random <- azar(100)+1;
FinSubProceso

SubProceso par(array)
	Si array % 2 = 0 Entonces
		Escribir array, " " Sin Saltar;
	Finsi
FinSubProceso

SubProceso impar(array)
	si array % 2 <> 0 Entonces
		Escribir array, " " Sin Saltar;
	FinSi
FinSubProceso

SubProceso escribirTitulo(titulo)
	Escribir titulo Sin Saltar;
FinSubProceso

Proceso punto2
	Definir numero1, indice, random Como Entero;
	Definir titulo1,titulo2 Como Caracter;
	Dimension numero1[20];
	
	titulo1 <- "Numeros pares: ";
	titulo2 <- "Numeros impares: ";
	
	escribirTitulo(titulo1);
	Para indice <- 0 Hasta 19 Con Paso 1 Hacer
		numero1[indice] <- numeroRandom();
		par(numero1[indice]);
	FinPara
	
	Escribir "";
	
	escribirTitulo(titulo2);
	Para indice <- 0 Hasta 19 Con Paso 1 Hacer
		impar(numero1[indice]);
	FinPara
FinProceso
