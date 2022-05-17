package Taller2;
import java.util.Scanner;

public class Punto1 {
    public static void main(String[] args) {
        int edad;
        Scanner input = new Scanner(System.in);

        System.out.println("DIGITE SU EDAD");
        edad = input.nextInt();

        if (edad >=18){
            System.out.println("ERES MAYOR DE EDAD");
        } else {
           System.out.println("ERES MENOR DE EDAD");
        }
    }
}
