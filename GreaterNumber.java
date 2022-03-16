package Basiccommands;

import java.util.Scanner;

public class GreaterNumber {

	public static void main(String[] args)
	
	{
		
		int num1;
		int num2;
		
		  Scanner n1= new Scanner(System.in);
		  System.out.println("ENTER YOUR First Number: ");
		  num1= n1.nextInt();
		  
		  Scanner n2= new Scanner(System.in);
		  System.out.println("ENTER YOUR Second Number: ");
		  num2= n2.nextInt();
		  
	    if(num1>num2)
	    
	    { 
	    	System.out.println(" Greater Number is = " + num1);
	    }
	    
	    else
	    
	    {
	    	System.out.println("Greater Number is = " + num2);
	    }

     }
}