package Taller2;
import java.util.Scanner;

public class Punto9 {
    public static Float baseCorta, baseLarga, alturah;
    public static Integer opciones;
    private static final Scanner input = new Scanner(System.in);


    public static void main(String[] args) {

        opciones = menuPrincipal();
        if(opciones == 1){
            System.out.print("Digite la base: ");
            baseCorta = input.nextFloat();
            System.out.print("Digite la altura: ");
            alturah = input.nextFloat();
            rectangulo(baseCorta,alturah);
        }else if (opciones == 2){
            System.out.print("Digite la base: ");
            baseCorta = input.nextFloat();
            System.out.print("Digite la altura: ");
            alturah = input.nextFloat();
            trianguloNormal(baseCorta,alturah);
        }else if (opciones == 3){
            System.out.print("Digite la base corta: ");
            baseCorta = input.nextFloat();
            System.out.print("Digite la base larga: ");
            baseLarga = input.nextFloat();
            System.out.print("Digite la altura: ");
            alturah = input.nextFloat();
            trapecio(baseLarga,baseCorta,alturah);
        }else {
            System.out.println("TRIANGULO NO VALIDO");
        }
    }

    private static Integer menuPrincipal(){
        System.out.println("Define el tipo de triangulo para calcular su AREA");
        System.out.println("1. Rectangulo");
        System.out.println("2. Triangulo");
        System.out.println("3. Trapecio");
        return input.nextInt();
    }

    private static void rectangulo(Float base, Float altura){
        float resultado = base * altura;
        System.out.println("SU AREA ES: " + resultado);

    }

    private static void trianguloNormal(Float base, Float altura){
        float resultado = (base * altura) / 2;
        System.out.println("SU AREA ES: " + resultado);
    }

    private static void trapecio(Float base1, Float base2, Float altura){
        float resultado = ((base1 + base2)* altura)/2;
        System.out.println("SU AREA ES: " + resultado);
    }
   }
