package Taller2;
import java.util.Scanner;

public class Punto5 {
    public static String producto1 , producto2, producto3;
    public static Integer opcion, elegir;
    public static Scanner input = new Scanner(System.in);
    public static Scanner String = new Scanner(System.in);


    public static void main(String[] args) {
        producto1 = "Acetaminofen";
        producto2 = "Dolex Forte";
        producto3 = "Loratadina";

       opcion = mostrarMenuPrincipal();

        switch (opcion) {
            case 1 -> {
                elegir = mostrarProductos(producto1, producto2, producto3);
                preciosProductos(elegir, producto1, producto2, producto3);
            }
            case 2 -> {
                elegir = mostrarProductos(producto1, producto2, producto3);
                productoComprado(elegir, producto1, producto2, producto3);
            }
            case 3 -> devolucionProducto();
            default -> System.out.println("NO VALIDA");
        }
    }

    private static Integer mostrarMenuPrincipal(){
        System.out.println("Bienvenido(a) a la Drogueria Mi Salud");
        System.out.println("Escoge que proceso deseas realizar con nosotros");
        System.out.println("1. Para consultar los productos");
        System.out.println("2. Para Comprar producto");
        System.out.println("3. Para Devoluciones");
        return input.nextInt();
    }

    private static Integer mostrarProductos(String droga1, String droga2, String droga3){
        System.out.println("Contamos con los siguientes medicamentos: ");
        System.out.println("1. " + droga1);
        System.out.println("2. " + droga2);
        System.out.println("3. " + droga3);
        System.out.println("¿Cual producto deseas?");
        return input.nextInt();
    }

    private static void preciosProductos(Integer escoger, String droga1, String droga2, String droga3){
        if(escoger == 1){
            System.out.println("Precio: 5000 $ de la caja de " + droga1);
        } else if (escoger == 2) {
            System.out.println("Precio: 7500 $ de la caja de " + droga2);
        }else if(escoger == 3){
            System.out.println("Precio: 3500 $ de la caja de " + droga3);
        }else {
            System.out.println("PRODUCTO NO VALIDO");
        }
    }

    private static void productoComprado(Integer escoger, String droga1, String droga2, String droga3){
        if(escoger == 1){
            System.out.println("Has comprado: " + droga1 + " Caja de 14 tabletas por 5000$");
        } else if (escoger == 2) {
            System.out.println("Has comprado: " + droga2 + " Caja de 25 tabletas por 7500$");
        }else if(escoger == 3){
            System.out.println("Has comprado: " + droga3 + " Caja de 8 tabletas por 3500$");
        }else {
            System.out.println("PRODUCTO NO VALIDO");
        }
    }

    private static void devolucionProducto(){
        System.out.print("¿QUE PRODUCTO DESEAS DEVOLVER?: ");
        String droga1 = String.nextLine();
        System.out.print("MOTIVO DE LA DEVOLUCION: ");
        String comentario = String.nextLine();
        System.out.println("Has devuelto " + droga1);
        System.out.println("Motivo: " + comentario);
    }
}
