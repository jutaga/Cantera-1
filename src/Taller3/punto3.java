package Taller3;

public class punto3 {
    static public int n;

    public static void main(String[] args) {
     n = 9;
     n = n*2-1;
     for(int i = 1; i <=n; i+=2){
         for (int j = 1; j <= n-i; j+=2){
             System.out.print(" ");
         }
         for(int k=1; k <=i; k++){
             System.out.print("*");
         }
         System.out.println();
     }
     for (int i=1; i<=4; i++){
         System.out.println("      *****");
     }
        System.exit(0);
    }
}
