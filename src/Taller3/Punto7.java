package Taller3;
import java.util.Scanner;

public class Punto7 {
    static public String[] nombre = new String[5];
    static public String buscador;
    static public String[] placa = new String[5];
    static public String[] marca = new String[5];
    static public int[] telefono = new int[5];
    static public int[] lugar = new int[5];
    static public int eleccion , contador;
    static public boolean continuar;
    private static final Scanner input = new Scanner(System.in);
    private static final Scanner string = new Scanner(System.in);

    public static void main(String[] args) {
        continuar = true;
        contador = 0;


        //inicializar valores en posiciones
        for(int i = 0; i <=4 ;i++){
            nombre[i] = "NO ASIGNADO";
            telefono[i] = 0;
            placa[i] = "VACIO";
            marca[i] = "VACIO";
            lugar[i] = 0;
        }

        do{
            eleccion = menuPrincipal();
            switch (eleccion){
                case 1:
                    if(lugar[0] == 1 && lugar[1] == 1 && lugar[2] == 1 && lugar[3] == 1 && lugar[4] == 1){
                        System.out.println("PARQUEADERO LLENO, NO TENEMOS MAS LUGARES");
                    }else{
                        for(int j = 0; j <= 4 ; j++){
                            lugarParqueo(lugar[j], j+1);
                        }
                        System.out.println("DONDE DESEAS GUARDAR TU VEHICULO?");
                        eleccion = input.nextInt();
                        if(lugar[eleccion-1] == 0){
                            nombre[eleccion - 1] = pedirEscrito("NOMBRE");
                            placa[eleccion - 1] = pedirEscrito("PLACA");
                            marca[eleccion - 1] = pedirEscrito("MARCA");
                            telefono[eleccion - 1] = pedirNumero();
                            lugar[eleccion - 1] = 1;
                        }else {
                            System.out.println("LUGAR OCUPADO");
                        }
                    }
                    break;
                case 2:
                    System.out.println("PARQUEADERO: ");
                    for (int k = 0 ; k <=4; k++){
                        carrosParqueados(lugar[k],k+1,nombre[k],placa[k],marca[k]);
                    }
                    System.out.println("ESCOGE TU VEHICULO");
                    eleccion = input.nextInt();
                    if(lugar[eleccion - 1] == 1){
                        System.out.println("Tu carro: " + marca[eleccion - 1] + " se ha retirado");
                        nombre[eleccion - 1] = "NO ASIGNADO";
                        placa[eleccion - 1] = "VACIO";
                        marca[eleccion - 1] = "VACIO";
                        telefono[eleccion - 1] = 0;
                        lugar[eleccion - 1] = 0;
                    }else {
                        System.out.println("AQUI NO HAY VEHICULO");
                    }
                    break;
                case 3:
                    System.out.println("DIGITE SU PLACA A BUSCAR");
                    buscador = string.nextLine();

                    for(int i = 0; i<=4 ; i++){
                        if(buscador.equals(placa[i])){
                            System.out.println("TU VEHICULO: " + marca[i] + " placas: " + placa[i] + " se encuentra en el almacen");
                        }else if(contador == 4){
                            System.out.println("PLACA NO ENCONTRADA");
                            contador = 0;
                        }else {
                            contador = contador +1;
                        }
                    }
                    break;
                case 4:
                    System.out.println("DESCONECTADO DEL SISTEMA");
                    continuar = false;
            }
        }while(continuar);

        string.close();
        input.close();

    }

    private static int menuPrincipal(){
        System.out.println("Bienvenido a El parquedero EL GUARDIAN");
        System.out.println("QUE SERVICIO DESEAS REALIZAR");
        System.out.println("1. Ingresar un vehiculo");
        System.out.println("2. Retirar un vehiculo");
        System.out.println("3. Consultar su vehiculo");
        System.out.println("4. Salir del sistema");
        return input.nextInt();
    }

    private static String pedirEscrito(String tipo){
        System.out.println("DIGITE SU: " + tipo + ": ");
        return string.nextLine();
    }

    private static int pedirNumero(){
        System.out.println("Digite su numero de telefono: ");
        return input.nextInt();
    }

    private static void lugarParqueo(int posicion, int lugar){
        if(posicion == 0){
            System.out.println("LUGAR DISPONIBLE: " + lugar);
        }
    }

    private static void carrosParqueados(int posicion, int lugar, String name, String matricula,String tipo){
        if(posicion == 1){
            System.out.println(lugar+ ". " + " Vehiculo" + " De: " + name + " placas: " + matricula + " y marca: " + tipo);
        }else {
            System.out.println("VACIO");
        }
    }
}
