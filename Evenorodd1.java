package Pack;

public class Evenorodd1 
{

	void evencheck()
	{
		
		int a=9;
		if(a%2==0)  //% - reminder
			{
			 System.out.println("Even number");
			 System.out.println("bye");
			}
		else
		{
			System.out.println("odd number");
		
		}
	}
	
	
	public static void main(String[] args) {
	
		Evenorodd1 e= new Evenorodd1();
		e.evencheck();
		
	}

}
