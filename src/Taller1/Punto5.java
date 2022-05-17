package Taller1;
import java.util.Scanner;

public class Punto5 {
    public static void main(String[] args) {
        String mascota , raza, nombre;
        int edad;
        Scanner input = new Scanner(System.in);
        Scanner input1 = new Scanner(System.in);

        System.out.println("CUAL ES SU NOMBRE");
        nombre = input.nextLine();
        System.out.println("COMO SE LLAMA SU MASCOTA");
        mascota = input.nextLine();
        System.out.println("CUAL ES LA EDAD DE SU MASCOTA");
        edad = input1.nextInt();
        System.out.println("CUAL ES LA RAZA DE LA MASCOTA");
        raza = input.nextLine();
        System.out.println(mascota + " es un(a) " + raza + " el/la cual tiene " + edad + " Anios de edad y " + nombre + " es su duenio");
    }
}
