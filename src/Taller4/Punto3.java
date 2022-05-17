package Taller4;

public class Punto3 {
    public static Integer[] primo = new Integer[1000];
    public static Integer contador = 0;

    public static void main(String[] args) {

        System.out.print("LOS NUMEROS PRIMOS SON: ");

        for(int i = 0 ; i < primo.length; i++){
            primo[i] = i + 1;

            for(int j = 1; j <= i+1 ; j++){
                if(primo[i] % j == 0 ){
                    contador = contador + 1;
                }
            }

            if(contador == 2){
                System.out.println(primo[i] + " ");
            }
            if(contador > 2){
                contador = 0;
            }
        }
        System.exit(0);
    }
}
