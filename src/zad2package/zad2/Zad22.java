package zad2package.zad2;


@PublicsLogger
public class Zad22 {

	
	public static void main(String [] args) {
		try {
			exampleMethod2("test");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public static String exampleMethod2(String test) throws Exception {
		throw new Exception("new");
		
	}
}
