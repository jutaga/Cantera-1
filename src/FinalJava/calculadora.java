package FinalJava;
import java.util.Scanner; //librerias de scanner y .Math para poder operar con este

/**
 * Representa una calculadora y algunas operaciones aritmeticas
 *
 * @author Juan pablo Tabares Gallego
 **/

/**
 * crea una instancia de la clase calculadora
 */
public class calculadora {
    /**
     * Representa el tipo de operacion que se realizará
     */
    public static String operacion;
    /**
     * Representa los valores que se van a obtener
     */
    public static double numero1,numero2,resultado;

    private static final Scanner operando = new Scanner(System.in);
    private static Scanner numeros = new Scanner(System.in);

    public static void main(String[] args) {

        //Inicializamos en cero
        numero1= 0;
        numero2 = 0;
        resultado = 0;

        System.out.println("CALCULADORA");

        //ciclo que ejecuta el codigo mientras sea true
        do {

            //Se pregunta si numero1 es cero para realizar la operacion de inicio y pida 2 valores , en el else solo pedira un valor y operara con el mismo resultado
            if(numero1 == 0){
                numero1 = pedirNumero();
                operacion = escogerOperador();
                numero2 = pedirNumero();
                resultado = calcular(numero1,numero2,operacion,resultado);
            }else{
                operacion = escogerOperador();
                numero2 = pedirNumero();
                resultado = calcular(resultado,numero2,operacion,resultado);
            }
            System.out.println("Resultado: " + resultado);
        }while(true);
    }

    //Metodo para pedir el numero  y retornar el valor que se va a operar e imprimir en pantalla
    private static double pedirNumero(){
        System.out.print("Escribe  numero: ");
        return numeros.nextDouble();
    }

    /**
     * Metodo para desplegar un "menu" de operandos a escoger , retornando un valor de tipo string
     */
    private static String escogerOperador(){
        System.out.println("OPERADORES");
        System.out.print("[+] [-] [/] [*] [%] \n");
        return operando.next();
    }

    /**
     * Calcular , retornando un valor segun la operacion y lectura del string operador
     * @param num1 Primer operando de la operacion
     * @param num2 Segundo operando de la operacion
     * @param operador Selector del tipo de operacion
     * @param result Almacena las operaciones
     * @return el valor de resulto
     */
    private static double calcular(double num1, double num2, String operador, double result){
        if(operador.equals("+")){
            result = num1 + num2;
        }else if(operador.equals("-")){
            result = num1 - num2;
        }else if(operador.equals("*")){
            result = num1 * num2;
        }else if(operador.equals("/")){
            if (num2 == 0){
                System.out.println("DIVISION ENTRE CERO NO ES POSIBLE");
                result = result + 0;
            }else{
                result = num1 / num2;
            }
        }else if(operador.equals("%")){
            result = num1 % num2;
        }else{
            System.out.println("OPERACION NO VALIDA");
        }
        return result;
    }
}
