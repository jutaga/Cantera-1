SubProceso acumular <- acumularValor(algo) 
	Definir acumular como entero;
	acumular <- algo + 1;
FinSubProceso

SubProceso contadorPrimos <- primos(number,cero)
	Definir contadorPrimos Como Entero;
	contadorPrimos <- number + cero;
FinSubProceso

SubProceso imprimirValor(number)
	Escribir number , " " Sin Saltar;
FinSubProceso

SubAlgoritmo reset <- reiniciarContador()
	Definir reset Como Entero;
	reset <- 0;
FinSubAlgoritmo

Proceso punto3
	Definir primo, dividir, posicion, contador Como Entero;
	Dimension primo[1000];
	
	contador <- 0;
	Para posicion <- 0 hasta 999 Con Paso 1 Hacer
		primo[posicion] <- acumularValor(posicion);
		Para dividir <- 1 Hasta posicion + 1 Hacer
			si primo[posicion] % dividir = 0 Entonces
				contador <- primos(1,contador);
			FinSi
		FinPara
		si contador = 2 Entonces
		imprimirValor(primo[posicion]);
		FinSi
		si contador > 2 Entonces
		contador <- reiniciarContador();
		FinSi
	FinPara
FinProceso
