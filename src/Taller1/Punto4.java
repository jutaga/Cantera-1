package Taller1;
import java.util.Scanner;

public class Punto4 {
    public static void main(String[] args) {
        String ciudad , pais;
        Scanner input = new Scanner(System.in);

        System.out.println("ESCRIBA EL NOMBRE DE UNA PAIS");
        pais = input.nextLine();
        System.out.println("ESCRIBA LA CAPITAL DEL PAIS");
        ciudad = input.nextLine();
        System.out.println("LA CIUDAD " + ciudad + " ES LA CAPITAL DEL PAIS " + pais);
    }
}
