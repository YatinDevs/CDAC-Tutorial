package Day3;


import java.util.Scanner;
public class StudentGrading 
{

	public static void main(String[] args)
	{
		
  String name ;
   int marks ;
   Scanner s= new Scanner(System.in);
   System.out.println("enter name and marks");
   name= s.next(); 
   marks=   s.nextInt();  
    if(marks>=90)    
	  System.out.println(" A grade");
   else if(marks>=80)
	  System.out.println(" b grade");
   else  if(marks>=70)
	  System.out.println(" c grade");
   else  if(marks>=60)
	  System.out.println(" D grade");
  else 
	  System.out.println(" fail");
	}

}
