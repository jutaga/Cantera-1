package Taller1;
import java.util.Scanner;

public class Punto2 {
    public static void main(String[] args) {
        String nombre, apellidos;
        int edad;
        double estatura;

        System.out.println("CUAL ES TU NOMBRE");
        Scanner input = new Scanner(System.in);
        nombre = input.nextLine();
        System.out.println("CUALES SON SUS APELLIDOS");
        apellidos = input.nextLine();
        System.out.println("CUAL ES TU EDAD");
        edad = input.nextInt();
        System.out.println("CUAL ES TU ESTATURA EN CM");
        estatura = input.nextDouble();

        System.out.println("Su nombre es: " + nombre + " " + apellidos + " Tienes una edad de " + edad + " años");
        System.out.println("Mides: " + estatura + " CMs");
    }
}
