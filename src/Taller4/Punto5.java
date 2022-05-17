package Taller4;
import java.util.Scanner;

public class Punto5 {
    public static String x ,z;
    public static Integer[][] matriz = new Integer[10][10];
    public static Integer leerFila, leerColumna;
    public static Boolean continuar = true;
    private static final Scanner input = new Scanner(System.in);


    public static void main(String[] args) {
        String[] letras = {" ", " ", "F", "I", "L", "A", "S", " ", " "," "};

        System.out.println("                                              COLUMNAS ");
        System.out.println("          [1]      [2]      [3]      [4]      [5]      [6]      [7]      [8]      [9]      [10]");

        for(int fila =0; fila <= 9; fila++){

            if(fila == 9){
                System.out.print(letras[fila] +"  [" + (fila+1) + "]  "   );
            }else{
                System.out.print(letras[fila] +"  [" + (fila+1) + "]   "   );
            }

            for(int columna = 0; columna <= 9 ; columna++){
                x = Integer.toString(fila + 1);
                z = Integer.toString(columna + 1);
                matriz[fila][columna] = (fila+1) * (columna+1);

                if(fila == 9){
                    System.out.print(z + " X " + x + "   ");
                }else{
                    System.out.print(z + " X " + x + "    ");
                }
            }
            System.out.println();
        }
        System.out.println();

        do {
            System.out.print("ESCRIBE LA FILA: ");
            leerFila = input.nextInt();
            System.out.print("ESCRIBE LA COLUMNA: ");
            leerColumna = input.nextInt();

            if(leerFila <= 10 && leerColumna <=10 && leerFila > 0 && leerColumna > 0){
                System.out.println("RESULTADO= " + matriz[leerFila-1][leerColumna-1]);
            }else {
                System.out.println("RANDO NO VALIDO");
            }
        }while(continuar);
        input.close();
        System.exit(0);
    }
}
