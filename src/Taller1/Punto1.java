package Taller1;
import java.util.Scanner;

public class Punto1 {
    public static void main(String[] args) {
        String nombre;
        Scanner input = new Scanner(System.in);
        System.out.println("Escriba su nombre");
        nombre = input.nextLine();
        System.out.println("Su nombre es: " + nombre);
    }
}
