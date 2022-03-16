package Basiccommands;

public class TestType {
  boolean b;
  int a;
  float c=90;
  double d;
	public static void main(String[] args) 
	{ 
	  float r= 89.8f; // by default decimal is considered as double
	  
		
	 TestType t= new TestType();
	 System.out.println(t.b);
	 System.out.println(t.a);
	 System.out.println(t.c);
	 System.out.println(t.d);
	 System.out.println(r);
	 
	
	}

}