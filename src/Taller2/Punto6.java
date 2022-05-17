package Taller2;
import java.util.Scanner;

public class Punto6 {
    public static Integer menu,escogerMoto;
    public static String observacion1, observacion2,observacion3;
    public static String novedad1, novedad2,novedad3;
    public static String moto1, moto2, moto3;
    private static final Scanner input = new Scanner(System.in);

    public static void main(String[] args) {
        moto1 = "Victory";
        moto2 = "Yamaha";
        moto3 = "Boxer";

        observacion1 ="Reemplazo de caja de cambios";
        observacion2 = "Cambio de luces";
        observacion3 = "Revision tecnico mecanica";

        novedad1 = "PENDIENTE DEL REEMPLAZO DE LA CAJA DE CAMBIOS";
        novedad2 = "PENDIENTE DE CAMBIO DE LUCES";
        novedad3 = "PENDIENTE DE REVISION TECNICO MECANICA";

        menu = menuTaller();

        if (menu == 1){
            escogerMoto = elegirMoto(moto1,moto2,moto3);
            switch (escogerMoto){
                case 1 -> estadoMoto(moto1,novedad1,novedad3);
                case 2 -> estadoMoto(moto2,novedad2,novedad1);
                case 3 -> estadoMoto(moto3,novedad2,novedad3);
                default -> System.out.println("NO VALIDO");
            }
        }else if(menu == 2){
            escogerMoto = elegirMoto(moto1,moto2,moto3);
            switch (escogerMoto){
                case 1 -> retirarMoto(moto1,observacion1,observacion3);
                case 2 -> retirarMoto(moto2,observacion2,observacion1);
                case 3 -> retirarMoto(moto3,observacion2,observacion3);
                default -> System.out.println("MOTO NO VALIDA");
            }
        }else {
            System.out.println("NO VALIDO");
        }
    }
    private static int menuTaller(){
        System.out.println("Bienvenido a El taller de motos 'EL MAQUINISTA' ");
        System.out.println("1. CONSULTAR EL ESTADO DE SU MOTOCICLETA");
        System.out.println("2. RETIRAR SU MOTOCICLETA DEL TALLER");
        return input.nextInt();
    }

    private static int elegirMoto(String mot1, String mot2, String mot3){
        System.out.println("¿CUAL ES TU MOTOCICLETA?");
        System.out.println("1. " + mot1);
        System.out.println("2. " + mot2);
        System.out.println("3. " + mot3);
        return input.nextInt();
    }

    private static void estadoMoto(String mot, String nov1, String nov2){
        System.out.println(mot + " Esta pendiente de realizar las siguientes actividades: ");
        System.out.print(nov1 + " y " + nov2);
    }

    private static void retirarMoto(String mot, String nov1, String nov2){
        System.out.println("Tu moto " + mot + " ha sido retirada con exito");
        System.out.println("Se le realizarion las siguientes reparaciones: ");
        System.out.println(nov1 + " y " + nov2);
    }
}
