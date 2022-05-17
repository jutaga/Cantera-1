package Taller2;
import java.util.Scanner;

public class Punto2 {
    public static void main(String[] args) {
        int edad;
        Scanner input = new Scanner(System.in);
        System.out.println("DIGITE SU EDAD");
        edad = input.nextInt();

        if (edad < 18){
            System.out.println("USTED ES AUN UN NINIO(A)");
        } else {
            System.out.println("ERES UN ADULTO");
        }
    }
}
