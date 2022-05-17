package Taller3;

public class Punto1 {
    static public Integer index , index1;
    public static void main(String[] args) {
        for (index = 0; index <= 10; index++){
            for (index1 = 1; index1<= index; index1++){
                System.out.print("*");
            }
            System.out.println("*");
        }
        System.exit(0);
    }
}
