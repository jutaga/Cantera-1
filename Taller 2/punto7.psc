//La Secretaría de Salud Municipal requiere de una aplicación que le permita calcular el IMC (Índice de masa corporal) y requiere los datos peso en kilogramos y estatura en metros 
//Para cada persona encuestada adicional a los datos suministrados, debe mostrar el resultado para cada uno y establecer en qué rango se encuentra (bajo peso, normal, sobrepeso y obeso).

Proceso punto7
	
	Definir persona1 Como Caracter;
	Definir peso1 Como Real;
	Definir estatura1 Como Real;
	Definir persona2 Como Caracter;
	Definir peso2 Como Real;
	Definir estatura2 Como Real;
	Definir contador Como Entero;
	Definir imc Como Real;
	Definir imc2 Como Real;
	
	Escribir "Bienvenido al Sistema de la Secretaria de Salud Municipal";
	Escribir  "¿Cuantas personas van a realizar su pesaje?, MAXIMO = 2";
	leer contador;
	
	Limpiar Pantalla;
	
	Si contador >=1 Y contador <= 2 Entonces
		
		Segun contador Hacer
			1:
				Escribir "Digite el nombre de la persona: ";
				Leer persona1;
				Limpiar Pantalla;
				
				Escribir  "Digite su estatura en Metros:";
				Leer estatura1;
				Limpiar Pantalla;
				
				Escribir  "Digite su peso corporal en Kg";
				Leer peso1;
				Limpiar Pantalla;
				
				imc <- peso1/(estatura1)^2;
				
				Escribir persona1, " con una peso de: ", peso1, "kg y ", estatura1, "M de estatura";
				Escribir "Tiene un IMC de: ", imc;
				
				Si imc<18.5 Entonces
					Escribir "BAJO PESO , Peso inferior al normal";
					
				FinSi
				Si imc>=18.5 Y imc < 25 Entonces
					Escribir "tu IMC es Normal";
					
				FinSi
				Si imc>=25 Y imc < 30 Entonces
					Escribir "Peso superior al normal, SOBREPESO";
					
				FinSi
				Si imc>=30 Entonces
					Escribir "Peso muy superior, Obesidad";
					
				FinSi
				
			2:
				Escribir "Digite el nombre de la primera persona: ";
				Leer persona1;
				Limpiar Pantalla;
				
				Escribir  "Digite su estatura en Metros:";
				Leer estatura1;
				Limpiar Pantalla;
				
				Escribir  "Digite su peso corporal en Kg";
				Leer peso1;
				Limpiar Pantalla;
				
				Escribir "Digite el nombre de la segunda persona: ";
				Leer persona2;
				Limpiar Pantalla;
				
				Escribir  "Digite su estatura en Metros:";
				Leer estatura2;
				Limpiar Pantalla;
				
				Escribir  "Digite su peso corporal en Kg";
				Leer peso2;
				Limpiar Pantalla;
				
				imc <- peso1/(estatura1)^2;
				imc2 <- peso2/(estatura2)^2;
				
				Escribir persona1, " con una peso de: ", peso1, "kg y ", estatura1, "M de estatura";
				Escribir "Tiene un IMC de: ", imc;
				
				Si imc<18.5 Entonces
					Escribir "BAJO PESO , Peso inferior al normal";
					
				FinSi
				Si imc>=18.5 Y imc < 25 Entonces
					Escribir "tu IMC es Normal";
					
				FinSi
				Si imc>=25 Y imc < 30 Entonces
					Escribir "Peso superior al normal, SOBREPESO";
					
				FinSi
				Si imc>=30 Entonces
					Escribir "Peso muy superior, Obesidad";
					
				FinSi
				
				Escribir persona2, " con una peso de: ", peso2, "kg y ", estatura2, "M de estatura";
				Escribir "Tiene un IMC de: ", imc2;
				
				Si imc2<18.5 Entonces
					Escribir "BAJO PESO , Peso inferior al normal";
					
				FinSi
				Si imc2>=18.5 Y imc2 < 25 Entonces
					Escribir "tu IMC es Normal";
					
				FinSi
				Si imc2>=25 Y imc2 < 30 Entonces
					Escribir "Peso superior al normal, SOBREPESO";
					
				FinSi
				Si imc2>=30 Entonces
					Escribir "Peso muy superior, Obesidad";
					
				FinSi
				
		FinSegun
	SiNo
		Escribir "CANTIDAD NO VALDIDA";
	FinSi

FinProceso


