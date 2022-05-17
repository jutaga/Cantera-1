package Taller2;
import java.util.Scanner;

public class Punto4 {
    public static void main(String[] args) {
        String usuario , anotacion, entregar;
        int opcion;
        String pelicula1,pelicula2,pelicula3;
        Scanner input = new Scanner(System.in);
        Scanner input1 = new Scanner(System.in);

        pelicula1 = "300 El renacer de un Imperio";
        pelicula2 = "La liga de la justicia";
        pelicula3 = "Piratas del caribe";

        System.out.println("Bienvenido a nuestra tienda de alquiler de peliculas");
        System.out.print("Ingrese el nombre de usuario registrado: ");
        usuario = input.nextLine();

        System.out.println("Eliga una de las operaciones a realizar");
        System.out.println("1. Consultar peliculas disponibles");
        System.out.println("2. Alquilar pelicula");
        System.out.println("3. Entregar pelicula");
        opcion = input1.nextInt();

        if(opcion >=1 && opcion <= 3) {
            switch (opcion){
                case 1:
                    System.out.println("Tenemos las siguientes peliculas disponibles ");
                    System.out.println("1. " + pelicula1);
                    System.out.println("2. " + pelicula2);
                    System.out.println("3. " + pelicula3);
                    break;
                case 2:
                    System.out.println("CUAL PELICULA DESEAS ALQUILAR");
                    System.out.println("1. " + pelicula1);
                    System.out.println("2. " + pelicula2);
                    System.out.println("3. " + pelicula3);
                    opcion = input1.nextInt();

                    switch (opcion){
                        case 1:
                            System.out.println("Has alquilado " + pelicula1);
                            break;
                        case 2:
                            System.out.println("Has alquilado " + pelicula2);
                            break;
                        case 3:
                            System.out.println("Has alquilado " + pelicula3);
                            break;
                        default:
                            System.out.println("PELICULA NO VALIDA");
                            break;
                    }
                    break;
                case 3:
                    System.out.print("QUE PELICULA DESEAS ENTREGAR: ");
                    entregar = input.nextLine();
                    System.out.print("¿Tiene alguna observacion de la pelicula? Si=1 o No=0 " );
                    opcion = input1.nextInt();

                    if (opcion == 1 || opcion == 0){
                        if(opcion == 1){
                            System.out.print("Escribe tu observacion: ");
                            anotacion = input.nextLine();
                            System.out.println("Has entregado la pelicula:  " + entregar);
                            System.out.println("Nota: " + anotacion);
                            break;
                        }else {
                            System.out.println("Has entregado la pelicula:  " + entregar);
                            break;
                        }
                    }
                break;
                default:
                    System.out.println("NO VALIDO");
                    break;
            }
        }else {
            System.out.println("OPCION NO VALIDA");
        }
    }
}
