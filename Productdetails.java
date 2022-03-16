package Basiccommands;

import java.util.Scanner;

public class Productdetails {

	
	
	public static void main(String[] args) {
	
		String name;
		int price;
    	float discount;
		Scanner s= new Scanner(System.in);
		System.out.println("enter product name");
		name= s.next();
		System.out.println("enter product price");
		
		price= s.nextInt();
		if( price>2000)
			discount= (price * 10)/100;
		else
			discount= price *.07f;
		
			
		System.out.println(name +" ---   "+ price + discount);
		
		System.out.println(" amount after discount="+(price- discount));
	
			
	}





	

}
