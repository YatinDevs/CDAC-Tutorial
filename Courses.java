package Basiccommands;
//wap to create a class for courses and define add method that will ask record from user
import java.util.Scanner;
public class Courses
{
	String cname;
	int duration ;
	int fees;
	void add()
	
	{
		Scanner s= new Scanner(System.in);// to take input from console
		System.out.println("enter course name");
		cname=s.next(); // c -- scanf()
		System.out.println("enter course duration");
		duration =s.nextInt();//c++  cin 
		System.out.println("enter course fees");
		fees=s.nextInt();
		
	}
	void display()
	{
		System.out.println(" course name="    + cname);
		System.out.println(" course duration="+ duration);
		System.out.println(" course fees="    + fees);
	}
	 

}
