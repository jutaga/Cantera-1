package Taller2;
import java.util.Scanner;
import java.lang.Math;

public class Punto7 {
    public static Float peso1,estatura1;
    public static Float peso2, estatura2;
    public static String nombre1, nombre2;
    public static Integer menu;
    private static final Scanner input = new Scanner(System.in);
    private static final Scanner Float = new Scanner(System.in);
    private static final Scanner String = new Scanner(System.in);

    public static void main(String[] args) {

        menu = menuPrincipal();

        if(menu == 1){
            nombre1 = pedirNombre();
            peso1 = pesoEstatura("peso","Kg");
            estatura1 = pesoEstatura("Estatura", "Mts");
            calcularIMC(nombre1,peso1,estatura1);
        }else if(menu == 2){
            nombre1 = pedirNombre();
            peso1 = pesoEstatura("peso","Kg");
            estatura1 = pesoEstatura("Estatura", "Mts");
            nombre2 = pedirNombre();
            peso2 = pesoEstatura("peso","Kg");
            estatura2 = pesoEstatura("Estatura", "Mts");
            System.out.println("Persona 1: ");
            calcularIMC(nombre1,peso1,estatura1);
            System.out.println("Persona 2: ");
            calcularIMC(nombre2,peso2,estatura2);
        } else {
            System.out.println("OPCION NO VALIDA");
        }
    }
    private static Integer menuPrincipal(){
        System.out.println("Bienvenido al Sistema de la Secretaria de Salud Municipal");
        System.out.println( "¿Cuantas personas van a realizar su pesaje?, MAXIMO = 2");
        return input.nextInt();
    }

    private static String pedirNombre(){
        System.out.println("Digite el nombre de la persona");
        return String.nextLine();
    }

    private static Float pesoEstatura(String texto, String medida){
        System.out.println("Digite su " + texto + " en " + medida);
        return Float.nextFloat();
    }

    private static void calcularIMC(String name, Float peso,Float estatura){
        if (peso/Math.pow(estatura,2) < 18.5){
            System.out.println(name + " BAJO PESO , Peso inferior al normal");
        }
        if (peso/Math.pow(estatura,2) >= 18.5 && peso/Math.pow(estatura,2) < 25){
            System.out.println(name + " tu IMC es Normal");
        }
        if (peso/Math.pow(estatura,2) >= 25 && peso/Math.pow(estatura,2) < 30){
            System.out.println(name + " Peso superior al normal, SOBREPESO");
        }
        if (peso/Math.pow(estatura,2) >= 30){
            System.out.println(name + " Peso muy superior, Obesidad");
        }
    }
}
