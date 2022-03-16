package Pack;

public class Calculator2 
{

	
	int x;
	int y;
	
	
	void add()
	
	{
		x=10;
		y=20;
		System.out.println("sum="+ (x+y)); // sum=30
	}
	
	void subtract()
	{ 
		x=33;
		y=23;
		System.out.println("difference"+ (x-y)); // difference =10
	}
	
	public static void main(String[]args)
	
	{
		Calculator2 call= new Calculator2(); // we create class instance
		call.add();
		call.subtract();
	}
	
}
