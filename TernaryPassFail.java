package Basiccommands;

import java.util.Scanner;

public class TernaryPassFail

{

     public static void main(String[]args)
     
     {
    	 
         int percentage ;
         String result;
         
         Scanner s= new Scanner(System.in);
         System.out.println("ENTER YOUR MARKS:");
         percentage =s.nextInt();
    	 
    	 
         result = percentage >= 40 ? "Pass" : "Fail" ;
    	 System.out.println(result);
		
		
		
		
		
		
		
		
	 }
	

}
