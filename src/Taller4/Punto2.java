package Taller4;

public class Punto2 {
    public static Integer [] numerosRandom = new Integer[20];

    public static void main(String[] args) {

        System.out.print("NUMEROS PARES: ");
        for(int i = 0; i < numerosRandom.length; i++){
            numerosRandom[i] = (int)Math.floor(Math.random()*(1-100+1)+100);  //Math.floor(Math.random()*(N-M+1)+M);  Valor entre M y N, ambos incluidos. M < N

            if(numerosRandom[i] % 2 == 0){
                System.out.print(numerosRandom[i] + " ");
            }
        }
        System.out.println();
        System.out.print("NUMEROS IMPARES: ");

        for(int j= 0; j < numerosRandom.length; j++){
            if (numerosRandom[j] % 2 != 0){
                System.out.print(numerosRandom[j] + " ");
            }
        }

        System.exit(0);
    }
}
