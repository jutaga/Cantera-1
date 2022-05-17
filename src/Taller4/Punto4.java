package Taller4;

public class Punto4 {
    public static String[][] matriz1 = new String[4][5];
    //[filas,columnas]
    public static String x;

    public static void main(String[] args) {

        System.out.println("MATRIZ 1");

        for(int fila = 0; fila <= 3 ; fila++){

            for(int columna = 0; columna <= 4; columna++){

                if(fila == 0){
                    x = Integer.toString(columna + 1);
                    matriz1[fila][columna] = "0" + x;
                    System.out.print(matriz1[fila][columna] + " ");
                }else if(fila == 1){
                    x = Integer.toString(columna + 6);
                    if(columna == 4){
                        matriz1[fila][columna] = x;
                        System.out.print(matriz1[fila][columna] + " ");
                    }else {
                        matriz1[fila][columna] = "0" + x;
                        System.out.print(matriz1[fila][columna] + " ");
                    }
                }else if(fila == 2){
                    x = Integer.toString(columna + 11);
                    matriz1[fila][columna] = x;
                    System.out.print(matriz1[fila][columna] + " ");
                }else {
                    x = Integer.toString(columna + 16);
                    matriz1[fila][columna] = x;
                    System.out.print(matriz1[fila][columna] + " ");
                }
            }
            System.out.println();
        }

        System.out.println();
        System.out.println("MATRIZ 2");

        for(int fila = 0; fila <= 3; fila++){
            for(int columna = 0; columna <=4; columna++){

                if(fila == 0){
                    x = Integer.toString(columna + 1);
                    matriz1[fila][columna] = "0" + x;
                    System.out.print(matriz1[fila][columna] + " ");
                }else if(fila == 1 && columna == 0){
                    x = Integer.toString(columna + 10);
                    matriz1[fila][columna] = x;
                    System.out.print(matriz1[fila][columna] + " ");
                }else if(fila == 1){
                    x = Integer.toString(10- columna);
                    matriz1[fila][columna] = "0" + x;
                    System.out.print(matriz1[fila][columna] + " ");
                }else if(fila == 2){
                    x = Integer.toString(columna + 11);
                    matriz1[fila][columna] = x;
                    System.out.print(matriz1[fila][columna] + " ");
                }else {
                    x = Integer.toString(20- columna);
                    matriz1[fila][columna] = x;
                    System.out.print(matriz1[fila][columna] + " ");
                }
            }
            System.out.println();
        }
        System.exit(0);
    }
}
