package Taller3;

import java.util.Scanner;

public class Punto4 {
    public static Integer multiplicar, resultado;
    private static final Scanner input = new Scanner(System.in);

    public static void main(String[] args) {

        System.out.print("Escriba el numero de la tabla de multiplicar que quieres conocer: ");
        multiplicar = input.nextInt();

        for(int i =1;  i <= 10 ; i++){
            resultado = multiplicar * i;
            System.out.println(multiplicar + " x " + i + " = " + resultado);
        }

        input.close();
        System.exit(0);
    }
}
