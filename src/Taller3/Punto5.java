package Taller3;

import java.util.Scanner;

public class Punto5 {
    public static String nombre1;
    public static Boolean continuar;
    public static Integer menu;
    private static final Scanner input = new Scanner(System.in);

    public static void main(String[] args) {
        continuar = true;
        nombre1 = "";

        do {
            menu = menuPrincipal();
            if(menu == 1){
                nombre1 = pedirNombre();
            }else if (menu == 2){
                if(nombre1.equals("")){
                    System.out.println("CAPTURE PRIMERO SU NOMBRE");
                }else {
                    System.out.println("HOLA " + nombre1 + " ten un buen dia");
                }
            }else if (menu == 3){
                System.out.println("DESCONECTADO");
                continuar = false;
            }else {
                System.out.println("NO VALIDO");
            }
        }while(continuar);

        input.close();
        System.exit(0);
    }

    private static Integer menuPrincipal(){
        System.out.println("ELIGE QUE DESEAS EJECUTAR");
        System.out.println("1. Capturar tu nombre");
        System.out.println("2. Saludar persona");
        System.out.println("3. Salir de sistema");
        return input.nextInt();
    }

    private static String pedirNombre(){
        System.out.print("ESCRIBE TU NOMBRE: ");
        input.nextLine();
        return input.nextLine();
    }
}
