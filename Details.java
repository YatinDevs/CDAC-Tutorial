package Basiccommands;

import java.util.Scanner;

public class Details 
{

   public static void main(String[]args)

       {

        String Name;
		int Age;
		int Salary;
		
		
		
		
		
		Scanner s=new Scanner(System.in);
		System.out.println("Enter your Name :");
		Name = s.next();
		
	
		Scanner a=new Scanner(System.in);
		System.out.println("Enter your Age : ");
		Age = a.nextInt();
		
		Scanner p=new Scanner(System.in);
		System.out.println("Enter your Salary : ");
		Salary = p.nextInt();
		
		
		
		
		
		
		System.out.println("Name Of Employee =" + Name );
		System.out.println("Age Of Employee =" + Age );
		System.out.println("Salary Of Employee =" + Salary );
			
		
       }

}