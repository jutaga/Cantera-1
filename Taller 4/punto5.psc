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
	Escribir "                                              COLUMNAS ";
	Escribir "          [0]      [1]      [2]      [3]      [4]      [5]      [6]      [7]      [8]      [9]";

	Para fila <- 0 Hasta 9 Con Paso 1 Hacer
		
		Escribir w[fila],"  [", fila, "]   " Sin Saltar;
		
		Para columna <- 0 Hasta 9 Con Paso 1 Hacer
			x <- ConvertirATexto(fila+1);
			z <- ConvertirATexto(columna+1);
			matriz[fila,columna] <- (fila+1) * (columna+1);
			
			SI fila = 9 Entonces
				Escribir z, " X ", x , "   " Sin Saltar;
			SiNo
				Escribir z, " X ", x , "    " Sin Saltar;
			FinSi
		FinPara
		
		Escribir "";
	FinPara
	
	Escribir "";
	
Repetir
		Escribir "ESCRIBA LA FILA";
		Leer fila1;
		Escribir "ESCRIBA LA COLUMNA";
		Leer columna1;
		
		si fila1 < 10 Y columna1 < 10 Entonces
			Escribir "Resultado = ", matriz[fila1,columna1];
		SiNo
			Escribir "RANGO NO VALIDO, MATRIX DE 10X10";
		FinSi
	Hasta Que seguir = Falso
	
FinProceso
