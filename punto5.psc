//Utilizando el ciclo que usted desee, crear un menú de ejecución infinita hasta que el usuario desee terminar dicho ciclo.
//Menu usuario
// 1.captura nombre
// 2. Saludar persona
// 3. Salir sistema
Proceso punto5
	Definir nombre Como Caracter;
	Definir continuar, seguir Como Logico;
	Definir menu Como Entero;
	
	
	Repetir
		Escribir "ELIGE QUE DESEAS EJECUTAR";
		Escribir "1. Capturar tu nombre";
		Escribir "2. Saludar persona";
		Escribir "3. Salir de sistema";
		Leer menu;
		
		Limpiar Pantalla;
		
		Si menu >= 1 Y menu <= 3 Entonces
			Segun menu Hacer
				1:
					Escribir "Escribe tu nombre: ";
					Leer nombre;
					Limpiar Pantalla;
					Escribir "TU NOMBRE CAPTURADO ES: ", nombre;
					Esperar 2 segundos;
					Limpiar Pantalla;
					Escribir "¿Deseas continuar? Si: Verdadero(1) o No: Falso(0)";
					Leer continuar;
					Limpiar Pantalla;
					Si continuar = Verdadero Entonces
						seguir <- Verdadero;
					SiNo
						Escribir "DESCONECTADO";
						seguir <- Falso;
					FinSi
				2:
					Escribir "Escribe tu nombre: ";
					Leer nombre;
					Limpiar Pantalla;
					Escribir "HOLA: ", nombre , " Ten un buen dia";
					Esperar 2 segundos;
					Limpiar Pantalla;
					Escribir "¿Deseas continuar? Si: Verdadero(1) o No: Falso(0)";
					Leer continuar;
					Limpiar Pantalla;
					Si continuar = Verdadero Entonces
						seguir <- Verdadero;
					SiNo
						Escribir "DESCONECTADO";
						seguir <- Falso;
					FinSi
				3:
					Escribir "DESCONECTADO DEL SERVIDOR";
					seguir <- falso;
			FinSegun
		SiNo
			Escribir "Es un numero no valido";
			Esperar 2 Segundos;
			Limpiar Pantalla;
			Escribir "INTENTALO DE NUEVO";
			Esperar 2 Segundos;
			Limpiar Pantalla;
			seguir <- Verdadero;
			
		FinSi
		
	Hasta Que seguir = falso;
		
FinProceso
