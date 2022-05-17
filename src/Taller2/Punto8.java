package Taller2;
import java.util.Scanner;

public class Punto8 {
    static public String torta1, torta2, torta3;
    static public String sabor1, sabor2, sabor3;
    static public Integer porciones1, porciones2,porciones3;
    static public Integer ventas1, ventas2, ventas3, operacion;
    private static final Scanner input = new Scanner(System.in);

    public static void main(String[] args) {

        ventas1 = 15;
        ventas2 = 9;
        ventas3 = 35;

        torta1 = "Mousse";
        torta2 = "Fresas con crema";
        torta3 = "Cheesecake de Nutella";

        sabor1 = "Chocolate";
        sabor2 = "Vainilla";
        sabor3 = "Fresa";

        porciones1 = 8;
        porciones2 = 12;
        porciones3 = 6;

        operacion = menuPrincipal();
        switch (operacion) {
            case 1 -> {
                caracteristicasTortas(torta1, sabor1, porciones1);
                caracteristicasTortas(torta2, sabor2, porciones2);
                caracteristicasTortas(torta3, sabor3, porciones3);
            }
            case 2 -> {
                operacion = elegirTorta(torta1, torta2, torta3);
                comprarTorta(operacion, torta1, torta2, torta3);
            }
            case 3 -> {
                registroVentas(ventas1, torta1);
                registroVentas(ventas2, torta2);
                registroVentas(ventas3, torta3);
            }
            default -> System.out.println("NO VALIDO");
        }
    }

    private static Integer menuPrincipal(){
        System.out.println("Bienvenido a la Pasteleria");
        System.out.println("¿En que le podemos servir?");
        System.out.println("1. Consultar Tortas disponibles");
        System.out.println("2. Comprar Torta");
        System.out.println("3. Consultar Registro de ventas");
        return input.nextInt();
    }

    private static void caracteristicasTortas(String pastel, String sabor, Integer partes){
        System.out.println(pastel);
        System.out.println(pastel + " Tiene las siguientes caracteristicas: ");
        System.out.println("Sabor de: " + sabor);
        System.out.println("Porciones: " + partes);
        System.out.println(" ");
    }

    private static Integer elegirTorta(String pastel1, String pastel2, String pastel3){
        System.out.println("1. " + pastel1);
        System.out.println("2. " + pastel2);
        System.out.println("3. " + pastel3);
        return input.nextInt();
    }

    private static void comprarTorta(Integer comprar, String pastel1, String pastel2, String pastel3){
        switch (comprar) {
            case 1 -> {
                System.out.println(pastel1 + " Comprada");
                System.out.println("Gracias por su compra");
            }
            case 2 -> {
                System.out.println(pastel2 + " Comprada");
                System.out.println("Gracias por su compra");
            }
            case 3 -> {
                System.out.println(pastel3 + " Comprada");
                System.out.println("Gracias por su compra");
            }
            default -> System.out.println("Torta no valida");
        }
    }

    private static void registroVentas(Integer venta,String pastel){
        System.out.println(pastel + " Tiene un total de ventas de: " + venta + " Tortas por semana"  + "\n");
        System.out.println();
    }
}

