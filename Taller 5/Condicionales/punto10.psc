SubProceso menu <- menuPrincipal()
	Definir menu Como Entero;
	Escribir "Bienvenido a su Banco fiel";
	Escribir "¿Que operacion desea realizar?";
	Escribir  "1. Ingresar monto";
	Escribir  "2. Retirar monto";
	Escribir  "3. Consultar saldo";
	leer menu;
	Limpiar Pantalla;
FinSubProceso

SubProceso usuario <- leerUsuario()
	definir usuario Como Caracter;
	Escribir "Cual es tu usuario";
	Leer usuario;
	Limpiar Pantalla;
FinSubProceso

Subproceso deposito <- claveUsuario(saldo,consignado)
	definir deposito como real;
	Si consignado > 0 Entonces
		deposito <- saldo + consignado;
		Escribir "Has consignado: ", consignado , ", Tu Saldo actual es de: ", deposito;
	SiNo
		Escribir "MONTO NO VALIDO";
	FinSi
FinSubProceso

SubProceso deposito <- retirarDinero(saldo,retirado)
	Definir deposito Como Entero;
	Si retirado > 0 Y retirado <= saldo Entonces
		deposito <- saldo - retirado;
		Escribir "HAS RETIRADO: ", retirado , ", Tu saldo actual es de: ", deposito;
	SiNo
		Escribir "MONTO A RETIRAR NO VALIDO";
	FinSi
FinSubProceso

SubProceso consultarSaldo(user,saldo,saldo1,name1,name2)
	Si user = name1 O user = name2 Entonces
		Si user = name1 Entonces
			Escribir "TU SALDO ACTUAL ES DE: ", saldo;
		SiNo
			Escribir "TU SALDO ACTUAL ES DE: ", saldo1;
		FinSi
	SiNo
		Escribir "USUARIO NO VALIDO";
	FinSi
FinSubProceso

Proceso punto10
	Definir titular1 , titular2, usuario Como Caracter;
	Definir saldo1 , saldo2 , retiro , ingreso Como Real;
	Definir operacion Como Entero;
	
	titular1 <- "juan";
	saldo1 <- 11000;
	
	titular2 <- "pablo";
	saldo2 <- 21000;
	
	operacion <- menuPrincipal();
	Si operacion >= 1 Y operacion <= 3 Entonces
		Segun operacion hacer
			1:
				usuario <- leerUsuario();
				Si usuario = titular1 O usuario = titular2 Entonces
					Si usuario = titular1 Entonces
						Escribir "DIGITE EL MONTO A CONSIGNAR: ";
						Leer ingreso;
						saldo1 <- claveUsuario(saldo1,ingreso);
					SiNo
						Escribir "DIGITE EL MONTO A CONSIGNAR: ";
						Leer ingreso;
						saldo2 <- claveUsuario(saldo2,ingreso);
					FinSi
				SiNo
					Escribir "USUARIO NO VALIDO";
				FinSi
			2:
				usuario <- leerUsuario();
				Si usuario = titular1 O usuario = titular2 Entonces
					Si usuario = titular1 Entonces
						Escribir "DIGITE EL MONTO A RETIRAR: ";
						Leer retiro;
						saldo1 <- retirarDinero(saldo1,retiro);
					SiNo
						Escribir "DIGITE EL MONTO A RETIRAR: ";
						Leer retiro;
						saldo2 <- retirarDinero(saldo2,retiro);
					FinSi
					SiNo
						Escribir "USUARIO NO VALIDO";
					FinSi
			3:
				usuario <- leerUsuario();
				consultarSaldo(usuario,saldo1,saldo2,titular1,titular2);
			De Otro Modo:
				Escribir "ACCION NO VALIDA";
		FinSegun
	SiNo
		Escribir "OPERACION NO VALIDA";
	FinSi	
FinProceso
