package Taller3;

public class punto2 {
    static public Integer index , index1;

    public static void main(String[] args) {
        index = 1;

        while(index <= 10){
            index1 = 1;
            while(index1 <= 10){
                if(index1 > (10 - index)){
                    System.out.print("*");
                }else {
                    System.out.print(" ");
                }

                if(index1 == 10){
                    System.out.println(" ");
                }
                index1 = index1 + 1;
            }
            index = index + 1;
        }
        System.exit(0);
    }
}
