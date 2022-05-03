SubProceso valor1 <- retornarValor1()
	Definir valor1 Como Entero;
	valor1 <- 55;
FinSubProceso

SubProceso valor2 <- retornarValor2()
	Definir valor2 Como Entero;
	valor2 <- 99;
FinSubProceso

SubProceso valor3 <- retornarValor3()
	Definir valor3 Como Entero;
	valor3 <- 11;
FinSubProceso

SubProceso valor4 <- retornarValor4()
	Definir valor4 Como Entero;
	valor4 <- 56;
FinSubProceso

SubProceso valor5 <- retornarValor5()
	Definir valor5 Como Entero;
	valor5 <- 69;
FinSubProceso

SubProceso imprimirNumeros(vector,indice)
	Escribir "[",indice,"] =" , " ",vector;
FinSubProceso

Proceso punto1
	Definir vector,indice Como entero;
	Dimension vector[5];
	
	vector[0] <- retornarValor1();
	vector[1] <- retornarValor2();
	vector[2] <- retornarValor3();
	vector[3] <- retornarValor4();
	vector[4] <- retornarValor5();
	
	Para indice <- 0 Hasta 4 Con Paso 1 Hacer
		imprimirNumeros(vector[indice],indice);
	FinPara
FinProceso
