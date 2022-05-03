Proceso punto4
	Definir fila, columna Como Entero;
	Definir matriz1, matriz2 Como caracter;
	Definir x,z Como Caracter;
	Dimension matriz1[4,5];
	Dimension matriz2[4,5];
	//[filas,columnas]
	
	
	Escribir "MATRIZ 1 ";
	Para fila <- 0 Hasta 3 Con Paso 1 Hacer
		
		Para columna <- 0 Hasta 4 Con Paso 1 Hacer
			
			Si fila = 0 Entonces
				x <- ConvertirATexto(columna+1);
				matriz1[fila,columna] <-  Concatenar("0",x);
				Escribir matriz1[fila,columna] , " " Sin Saltar;
			FinSi
			
			Si fila = 1 Entonces
				x <- ConvertirATexto(columna+6);
				
				Si columna = 4 Entonces
					matriz1[fila,columna] <- x;
					Escribir matriz1[fila,columna] , " " Sin Saltar;
				SiNo
					matriz1[fila,columna] <-  Concatenar("0",x);
					Escribir matriz1[fila,columna] , " " Sin Saltar;
				FinSi
				
			FinSi
			
			Si fila = 2 Entonces
				x <- ConvertirATexto(columna+11);
				matriz1[fila,columna] <- x;
				Escribir matriz1[fila,columna] , " " Sin Saltar;
			FinSi
			
			Si fila = 3 Entonces
				x <- ConvertirATexto(columna+16);
				matriz1[fila,columna] <- x;
				Escribir matriz1[fila,columna] , " " Sin Saltar;
			FinSi
		FinPara
		
		Escribir "";
		
	FinPara
	
	Escribir "";
	
	Escribir "MATRIZ 2 ";
	Para fila <- 0 Hasta 3 Con Paso 1 Hacer
		
		Para columna <- 0 Hasta 4 Con Paso 1 Hacer
			
			Si fila = 0 Entonces
				x <- ConvertirATexto(columna+1);
				matriz1[fila,columna] <-  Concatenar("0",x);
				Escribir matriz1[fila,columna] , " " Sin Saltar;
			FinSi
			
			Si fila = 1 Y columna = 0 Entonces
				x <- ConvertirATexto(columna+10);
					matriz1[fila,columna] <- x;
					Escribir matriz1[fila,columna] , " " Sin Saltar;
			FinSi
			
			Si fila = 1 Y columna > 0 Entonces
				x <- ConvertirATexto(10-columna);
				matriz1[fila,columna] <-  Concatenar("0",x);
				Escribir matriz1[fila,columna] , " " Sin Saltar;
			Finsi	
			
			Si fila = 2 Entonces
				x <- ConvertirATexto(columna+11);
				matriz1[fila,columna] <- x;
				Escribir matriz1[fila,columna] , " " Sin Saltar;
			FinSi
			Si fila = 3 Entonces
				x <- ConvertirATexto(20-columna);
				matriz1[fila,columna] <-  x;
				Escribir matriz1[fila,columna] , " " Sin Saltar;
			Finsi
	
		FinPara
		
		Escribir "";
		
	FinPara
FinProceso

