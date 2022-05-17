package Taller3;
import java.util.Arrays;
import java.util.Scanner;

public class Punto8 {
    public static String curso;
    public static  String[] user = new String[8];
    public static int eleccion;
    public static boolean continuar;
    private static final Scanner string = new Scanner(System.in);
    private static final Scanner input = new Scanner(System.in);

    public static void main(String[] args) {

        continuar = true;
        curso = "ENSEÑANZA AUTOMOVILISTICA";
        Arrays.fill(user, "NO REGISTRADO");

        do {

            eleccion = menuPrincipal();

            switch (eleccion){
                case 1:
                    if(user[0].equals("NO REGISTRADO")){
                        user[0] = capturarUsuario();
                    }else if(user[1].equals("NO REGISTRADO")){
                        user[1] = capturarUsuario();
                    }else if(user[2].equals("NO REGISTRADO")){
                        user[2] = capturarUsuario();
                    }else if(user[3].equals("NO REGISTRADO")){
                        user[3] = capturarUsuario();
                    }else if(user[4].equals("NO REGISTRADO")){
                        user[4] = capturarUsuario();
                    }else if(user[5].equals("NO REGISTRADO")){
                        user[5] = capturarUsuario();
                    }else if(user[6].equals("NO REGISTRADO")){
                        user[6] = capturarUsuario();
                    }else if(user[7].equals("NO REGISTRADO")){
                        user[7] = capturarUsuario();
                    }else {
                        System.out.println("CURSO LLENO, NO PUEDES INSCRIBIR MAS ESTUDIANTES");
                    }
                    break;
                case 2:
                    System.out.println("LOS SIGUIENTES USUARIOS ESTAN REGISTRADO EN EL CURSO: " + curso);
                    for (String s : user) {
                        mostrarRegistro(s);
                    }
                    break;
                case 3:
                    System.out.println("LOS SIGUIENTES ESTUDIANTES HAN APROBADO EL CURSO");
                    for(int j = 0; j < user.length; j++){
                      if(j == 2 || j == 1 || j == 4 || j == 6){
                            mostrarAprovados(user[j]);
                        }
                    }
                    break;
                case 4:
                    System.out.println("DESCONECTADO DEL SISTEMA");
                    continuar = false;
                    break;
                default:
                    System.out.println("ACCION NO VALIDA , INTENTE NUEVAMENTE");
            }
        }while(continuar);
        input.close();
        string.close();
        System.exit(0);
    }

    private static int menuPrincipal(){
        System.out.println("Bienvenido al sistema de la Escuela Automovilistica EL MAESTRO");
        System.out.println("Menú");
        System.out.println("1. REGISTRAR INGRESO AL CURSO");
        System.out.println("2. Consultar usuarios En Curso");
        System.out.println("3. Consultar aprobados");
        System.out.println("4. Salir del sistema");
        return input.nextInt();
    }

    private static String capturarUsuario(){
        System.out.println("ESCRIBA EL NOMBRE COMPLETO DEL USUARIO A REGISTRAR");
        return string.nextLine();
    }

    private static void mostrarRegistro(String usuario){
        if(!usuario.equals("NO REGISTRADO")){
            System.out.println(usuario);
            }
        }

    private static void mostrarAprovados(String usuario){
        if(!usuario.equals("NO REGISTRADO")){
            System.out.println(usuario);
        }
    }
}




