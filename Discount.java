package Basiccommands;

import java.util.Scanner;

public class Discount 
{
	
	public static void main(String[] args)
	
	{
		
		String Product;
		int Price;
		int Discount;
		
		

		Scanner s=new Scanner(System.in);
		System.out.println("Enter Product Name :");
		Product = s.next();
		
		Scanner a=new Scanner(System.in);
		System.out.println("Enter Price of Product : ");
		Price = a.nextInt();
		
		if(Price>2000)
			
		{
			Discount=Price*10/100;
			System.out.println("Discount On Product = " + Discount);
			
			System.out.println(" Amount after Discount="+(Price- Discount));
			
		}
		
		else
			
		{
			
			Discount=Price*7/100;
			System.out.println("Discount On Product = " +Discount  + Product);
			
			System.out.println(" Amount after Discount="+(Price- Discount));
		
		}
		 
		
		
		
		
	}

}
