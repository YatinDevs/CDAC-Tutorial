package Loopassignment3;

import java.util.Scanner;

public class Q4PrimeNumbers {

	public static void main(String[] args) 
	
	{
		int num;
		System.out.println("Enter Your Number :");
		Scanner input= new Scanner(System.in);
		num=input.nextInt();
		
        
        int i;
		int flag=0;
		for( i=2;i<num;i++) // we can also limit it to half num /2
		{
			if( num%i==0) 
				{
				flag=1;
				System.out.println(" number is not prime");
				break;
				}
		}
		
		
		if(flag==0) 
		{
			System.out.println("its prime number"); 
		}
		//if(i==num) System.out.println("its prime number"); 


	}

}
