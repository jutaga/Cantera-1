SubProceso tituloMatriz(numero1)
	Escribir "MATRIZ ",numero1;
FinSubProceso

SubProceso convertir <- volverTexto(avanza,variable)
	definir convertir Como Caracter;
	convertir <- ConvertirATexto(avanza + variable);
FinSubProceso

SubProceso concatena <- concatenarCero(valorNumero)
	Definir concatena Como Caracter;
	concatena <- Concatenar("0",valorNumero);
FinSubProceso

SubProceso imprimirNumero(matrizVariable)
	Escribir matrizVariable, " " Sin Saltar;
FinSubProceso

SubProceso llevar <- llevarAMatriz(llevarNumero)
	Definir llevar Como caracter;
	llevar <- llevarNumero;
FinSubProceso

Proceso punto4
	Definir fila, columna Como Entero;
	Definir matriz1, matriz2 Como caracter;
	Definir x,z Como Caracter;
	Dimension matriz1[4,5];
	Dimension matriz2[4,5];
	//[filas,columnas]
	

	tituloMatriz("1");
	
	Para fila <- 0 Hasta 3 Con Paso 1 Hacer
		Para columna <- 0 Hasta 4 Con Paso 1 Hacer
			Si fila = 0 Entonces
				x <- volverTexto(columna,1);
				matriz1[fila,columna] <- concatenarCero(x);
				imprimirNumero(matriz1[fila,columna]);
			FinSi
			Si fila = 1 Entonces
				x <- volverTexto(columna,6);
				Si columna = 4 Entonces
					matriz1[fila,columna] <- llevarAMatriz(x);
					imprimirNumero(matriz1[fila,columna]);
				SiNo
					matriz1[fila,columna] <- concatenarCero(x);
					imprimirNumero(matriz1[fila,columna]);
				FinSi
			FinSi
			
			Si fila = 2 Entonces
				x <- volverTexto(columna,11);
				matriz1[fila,columna] <- llevarAMatriz(x);
				imprimirNumero(matriz1[fila,columna]);
			FinSi
			
			Si fila = 3 Entonces
				x <- volverTexto(columna,16);
				matriz1[fila,columna] <- llevarAMatriz(x);
				imprimirNumero(matriz1[fila,columna]);
			FinSi
		FinPara
		Escribir "";
	FinPara
	
	Escribir "";
	
	tituloMatriz("2");	
	
	Para fila <- 0 Hasta 3 Con Paso 1 Hacer
		
		Para columna <- 0 Hasta 4 Con Paso 1 Hacer
			
			Si fila = 0 Entonces
				x <- volverTexto(columna,1);
				matriz1[fila,columna] <- concatenarCero(x);
				imprimirNumero(matriz1[fila,columna]);
			FinSi
			
			Si fila = 1 Y columna = 0 Entonces
				x <- volverTexto(columna,10);
				matriz1[fila,columna] <- llevarAMatriz(x);
				imprimirNumero(matriz1[fila,columna]);
			FinSi
			
			Si fila = 1 Y columna > 0 Entonces
				x <- volverTexto(-columna,10);
				matriz1[fila,columna] <- concatenarCero(x);
				imprimirNumero(matriz1[fila,columna]);
			FinSi
			
			Si fila = 2 Entonces
				x <- volverTexto(columna,11);
				matriz1[fila,columna] <- llevarAMatriz(x);
				imprimirNumero(matriz1[fila,columna]);
			FinSi
			
			Si fila = 3 Entonces
				x <- volverTexto(-columna,20);
				matriz1[fila,columna] <- llevarAMatriz(x);
				imprimirNumero(matriz1[fila,columna]);
			FinSi
		FinPara
		Escribir "";
	FinPara
FinProceso
