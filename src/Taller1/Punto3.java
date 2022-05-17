package Taller1;
import java.util.Scanner;

public class Punto3 {
    public static void main(String[] args) {
        String nombre , apellidos;
        String nombreM , apellidosM;
        String nombreP, apellidosP;
        Scanner input = new Scanner(System.in);
        Scanner input1 = new Scanner(System.in);

        System.out.println("DATOS DEL HIJO");
        System.out.println("NOMBRE");
        nombre = input.nextLine();
        System.out.println("APELLIDOS");
        apellidos = input.nextLine();

        System.out.println("DATOS DE LA MADRE");
        System.out.println("NOMBRE");
        nombreM = input.nextLine();
        System.out.println("APELLIDOS");
        apellidosM = input.next();

        System.out.println("DATOS DEL PADRE");
        System.out.println("NOMBRE");
        nombreP = input1.nextLine();
        System.out.println("APELLIDOS");
        apellidosP = input1.nextLine();

        System.out.println("Yo: "+ nombre + " " + apellidos + " Soy hijo de " + nombreM + " " + apellidosM + " y " + nombreP + " " + apellidosP);
    }
}
