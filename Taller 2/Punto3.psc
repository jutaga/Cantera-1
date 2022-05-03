//Realizar un programa en el cual se solicite el nombre, apellidos y edad de la persona. 
//Si la persona es mayor o igual a 18 años, entonce se deberá imprimir en pantalla [Nombre completo] usted es mayor de edad, por lo tanto puede entrar a la fiesta. 
//Si la edad de la persona es menor que 18 años, entonces, deberá imprimirse el siguiente mensaje: [Nombre completo] usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuélvase a su casa.

Proceso Punto3
	Definir nombre Como Caracter;
	Definir apellidos Como Caracter;
	Definir edad Como Entero;
	
	Escribir "Digite su nombre";
	Leer nombre;
	Escribir "Digite sus apelldos";
	Leer apellidos;
	Escribir "Digite su edad";
	Leer edad;
	
	Si edad >= 18 Entonces
		Escribir nombre ," " , apellidos , " Usted es mayor de edad, por lo tanto puede entrar al la fiesta, bienvenido(a)";
	SiNo
		Escribir nombre," ",apellidos, " usted es menor de edad, por lo tanto, no puede entrar a la fiesta, por favor devuelvase a su casa ";
		FinSi
	
FinProceso
