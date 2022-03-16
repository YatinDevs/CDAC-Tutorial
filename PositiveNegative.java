package Basiccommands;


import java.util.Scanner;

public class PositiveNegative {

	public static void main(String[] args)
	
	{
		
		int Number;
		String Result;
		
		Scanner s=new Scanner(System.in);
		System.out.println("ENTER THE NUMBER:");
		Number= s.nextInt();
		
		if (Number==0) 
		
		{
			System.out.println("Number is Zero");
		}
		
		else
		
		{
	    Result = Number < 0 ? "Number is Negative": "Number is Postive";
		System.out.println(Result);
		}
		
		

	}

}
