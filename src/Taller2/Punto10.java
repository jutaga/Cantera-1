package Taller2;
import java.util.Scanner;

public class Punto10 {

    static public String titular1,titular2,usuario;
    static public Integer saldo1, saldo2,retiro,ingreso, operacion;
    private static final Scanner input = new Scanner(System.in);
    private static final Scanner string = new Scanner(System.in);

    public static void main(String[] args) {

        titular1 = "juan";
        saldo1 = 11000;

        titular2 = "pablo";
        saldo2 = 21000;

        operacion = menuPrincipal();

        switch (operacion) {
            case 1 -> {
                System.out.println("CUAL ES TU USUAIRO");
                usuario = string.nextLine();
                if (usuario.equals(titular1) || usuario.equals(titular2)) {
                    if (usuario.equals(titular1)) {
                        System.out.print("Digite el monto a consignar: ");
                        ingreso = input.nextInt();
                        saldo1 = depositarDinero(saldo1, ingreso);
                    } else {
                        System.out.print("Digite el monto a consignar: ");
                        ingreso = input.nextInt();
                        saldo2 = depositarDinero(saldo2, ingreso);
                    }
                } else {
                    System.out.println("USUARIO NO VALIDO");
                }
            }
            case 2 -> {
                System.out.println("CUAL ES TU USUAIRO");
                usuario = string.nextLine();
                if (usuario.equals(titular1) || usuario.equals(titular2)) {
                    if (usuario.equals(titular1)) {
                        System.out.print("Digite el monto a retirar: ");
                        retiro = input.nextInt();
                        saldo1 = retirarDinero(saldo1, retiro);
                    } else {
                        System.out.print("Digite el monto a retirar: ");
                        retiro = input.nextInt();
                        saldo2 = retirarDinero(saldo2, retiro);
                    }
                } else {
                    System.out.println("USUARIO NO VALIDO");
                }
            }
            case 3 -> {
                System.out.println("CUAL ES TU USUAIRO");
                usuario = string.nextLine();
                consultarSaldo(usuario, saldo1, saldo2, titular1, titular2);
            }
        }
    }

    private static Integer menuPrincipal(){
        System.out.println("Bienvenido a su Banco Fiel");
        System.out.println("¿Que operacion desea realizar?");
        System.out.println("1. Ingresar monto");
        System.out.println("2. Retirar monto");
        System.out.println("3. Consultar saldo");
        return input.nextInt();
    }

    private static Integer depositarDinero(Integer saldo,Integer consignado){
        if(consignado >0){
            System.out.println("HAS CONSIGNADO: " + consignado + " Tu saldo actual es: "+ (saldo + consignado) );
        }else {
            System.out.println("MONTO NO VALIDO");
        }
        return saldo + consignado;
      }

    private static Integer retirarDinero(Integer saldo, Integer retirado){
        if(retirado > 0 && retirado <= saldo){
            System.out.println("HAS RETIRADO: " + retirado + " Tu saldo actual es: " + (saldo - retirado));
        }else {
            System.out.println("MONTO A RETIRAR NO VALIDO");
        }
        return saldo - retirado;
    }

    private static void consultarSaldo(String user, Integer saldo, Integer saldo1, String name1, String name2){
        if(user.equals(name1) ||user.equals(name2)){
            if(user.equals(name1)){
                System.out.println("TU SALDO ES DE: "+ saldo);
            }else {
                System.out.println("TU SALDO ES DE: "+ saldo1);
            }
        }else {
            System.out.println("USUARIO NO VALIDO");
        }
    }
}
