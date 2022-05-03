SubProceso imprimir()
	Escribir "                                              COLUMNAS ";
	Escribir "          [0]      [1]      [2]      [3]      [4]      [5]      [6]      [7]      [8]      [9]";
FinSubProceso

SubProceso convertir <- volverTexto(avanza)
	definir convertir Como Caracter;
	convertir <- ConvertirATexto(avanza + 1);
FinSubProceso

SubProceso llevar <- llevarAMatriz(numero1,numero2)
	Definir llevar Como entero;
	llevar <- (numero1+1) * (numero2+1);
FinSubProceso

SubAlgoritmo imprimirMatriz(fila,w)
	Escribir w,"  [", fila, "]   " Sin Saltar;
FinSubAlgoritmo

SubProceso imprimirMultiplicacion(valor1,valor2,valor3)
	Escribir valor1, " X ", valor2 , valor3 Sin Saltar;
FinSubProceso

SubProceso pedir <- pedirValor(texto1)
	Definir pedir Como Entero;
	Escribir "ESCRIBA LA ",texto1 Sin Saltar;
	Leer pedir;
FinSubProceso

SubProceso imprimirResultado(valor1)
	Escribir "Resultado = ", valor1;
FinSubProceso

SubProceso alerta()
	Escribir "RANGO NO VALIDO, MATRIX DE 10X10";
FinSubProceso

Proceso punto5
	Definir x,z,w Como Caracter;
	Definir matriz, fila , columna, fila1,columna1 Como Entero;
	Definir seguir Como Logico;
	Dimension w[10];
	Dimension  matriz[10,10];
	//[filas,columnas]
	
	w[0] <- " ";
	w[1] <- " ";
	w[2] <- "F";
	w[3] <- "I";
	w[4] <- "L";
	w[5] <- "A";
	w[6] <- "S";
	w[7] <- " ";
	w[8] <- " ";
	w[9] <- " ";
	
	seguir <- Verdadero;
	
	imprimir();
	Para fila <- 0 Hasta 9 Con Paso 1 Hacer
		imprimirMatriz(fila,w[fila]);
		Para columna <- 0 Hasta 9 Con Paso 1 Hacer
			x <- volverTexto(fila);
			z <- volverTexto(columna);
			matriz[fila,columna] <- llevarAMatriz(fila,columna);
			SI fila = 9 Entonces
				imprimirMultiplicacion(x,z,"   ");
			SiNo
				imprimirMultiplicacion(x,z,"    " );
			FinSi
		FinPara
		Escribir "";
	FinPara
	Escribir "";
	Repetir
		fila1 <- pedirValor("FILA");
		columna1 <- pedirValor("COLUMNA");
		si fila1 < 10 Y columna1 < 10 Entonces
			imprimirResultado(matriz[fila1,columna1]);
		SiNo
			alerta();
		FinSi
	Hasta Que seguir = Falso
FinProceso
