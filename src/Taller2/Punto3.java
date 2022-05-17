package Taller2;
import java.util.Scanner;

public class Punto3 {
    public static void main(String[] args) {
        int edad;
        String nombre,apellidos;
        Scanner input = new Scanner(System.in);
        Scanner input1 = new Scanner(System.in);

        System.out.println("DIGITE SU NOMBRE");
        nombre = input.nextLine();
        System.out.println("DIGITE SUS APELLIDOS");
        apellidos = input.nextLine();
        System.out.println("DIGITE SU EDAD");
        edad = input1.nextInt();

        if (edad >= 18) {
            System.out.println(nombre + " " + apellidos + " USTED ES MAYOR DE EDAD, por lo tanto puede entrar a la fiesta, bienvenido(a)");
        } else {
            System.out.println(nombre + " " +apellidos + " Usted es menor de edad, no puede entrar a la fiesta , retirese porfavor" );
        }
    }
}
