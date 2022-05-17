package Taller3;

import java.util.Scanner;

public class Punto6 {
    static public Integer contacto,guardado1, guardado2, guardado3,accion;
    static public String nombre, nombreG1, nombreG2, nombreG3 ,organizacionG1, organizacionG2, organizacionG3;
    static public boolean continuar;
    private static final Scanner input = new Scanner(System.in);
    private static final Scanner string = new Scanner(System.in);


    public static void main(String[] args) {
        continuar = true;
        guardado1 = 0;
        guardado2 = 0;
        guardado3 = 0;

        nombreG1 = "";
        nombreG2 = "";
        nombreG3 = "";

        organizacionG1 = "";
        organizacionG2 = "";
        organizacionG3 = "";

        do {
            accion = menuPrincipal();
            switch (accion){
                case 1:
                    if(guardado1 != 0 && guardado2 != 0 && guardado3 != 0){
                        System.out.println("AGENDA LLENA, PORFAVOR ELIMINE CONTACTOS");
                    }else {
                        contacto = pedirNumero();
                        if(contacto.equals(guardado1) ||contacto.equals(guardado2) ||contacto.equals(guardado3)){
                            System.out.println("EL NUMERO YA EXISTE");
                        }else {
                            if(guardado1 == 0){
                                guardado1 = contacto;
                                nombreG1 = pedirEscrito("CONTACTO");
                                organizacionG1 = pedirEscrito("EMPRESA");
                            }else {
                                if(guardado2 == 0){
                                    nombreG2 = pedirEscrito("CONTACTO");
                                    guardado2 = contacto;
                                    organizacionG2 = pedirEscrito("EMPRESA");
                                }else {
                                    if(guardado3 == 0){
                                        nombreG3 = pedirEscrito("CONTACTO");
                                        guardado3 = contacto;
                                        organizacionG3 = pedirEscrito("EMPRESA");
                                    }
                                }
                            }
                        }
                    }
                    break;
                case 2:
                    nombre = pedirEscrito("CONTACTO");
                    if(nombre.equals(nombreG1)){
                        mostrarContactos(nombreG1,guardado1,organizacionG1);
                    }else if(nombre.equals(nombreG2)){
                        mostrarContactos(nombreG2,guardado2,organizacionG2);
                    }else if(nombre.equals(nombreG3)){
                        mostrarContactos(nombreG3,guardado3,organizacionG3);
                    }else {
                        System.out.println("CONTACTO NO REGISTRA EN LA AGENDA");
                    }
                    break;
                case 3:
                    nombre = pedirEscrito("CONTACTO");
                    if(nombre.equals(nombreG1)){
                        System.out.println(nombre + " SE ELIMINÓ");
                        nombreG1 = "";
                        guardado1 = 0;
                        organizacionG1 = "";
                    }else if(nombre.equals(nombreG2)){
                        System.out.println(nombre + " SE ELIMINÓ");
                        nombreG2 = "";
                        guardado2 = 0;
                        organizacionG2 = "";
                    }else if(nombre.equals(nombreG3)){
                        System.out.println(nombre + " SE ELIMINÓ");
                        nombreG3 = "";
                        guardado3 = 0;
                        organizacionG3 = "";
                    }else {
                        System.out.println("CONTACTO NO REGISTRA EN LA AGENDA");
                    }
                    break;
                case 4:
                    System.out.println("DESCONECTADO DEL SISTEMA");
                    continuar = false;

                default:
                    System.out.println("ACCION NO VALIDA");
            }
        }while(continuar);

        string.close();
        input.close();
        System.exit(0);
    }

    private static Integer menuPrincipal(){
        System.out.println("QUE FUNCION DESEAS HACER EN SU AGENDA");
        System.out.println("1. Agregar Nuevo contacto, MAXIMO: 3 CONTACTOS");
        System.out.println("2. Buscar Contacto");
        System.out.println("3. Eliminar contactos");
        System.out.println("4. Salir del sistema");
        return input.nextInt();
    }

    private static Integer pedirNumero(){
        System.out.println("DIGITE NUMERO DE TELEFONO");
        return string.nextInt();
    }

    private static String pedirEscrito(String tipo){
        System.out.println("ESCRIBA EL NOMBRE DE " );
        return string.next();
    }

    private static void mostrarContactos(String name, Integer number, String company){
        System.out.println("Nombre: " + name);
        System.out.println("Numero: " + number);
        System.out.println("Empresa: " + company);
    }
}
