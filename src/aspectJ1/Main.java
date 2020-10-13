package aspectJ1;

import model.TestModel;
import model.TimeObjectDTO;
import services.Service;
import services.Test;

public class Main {

	public static void main(String[] args) {
		Main main = new Main();
		Service service = new Service();
		main.method1(1);
		main.method1("m1", 1);
		main.method2("m2");
		main.method2("m2", 2);
		main.floatMethod();
		service.method();
		Test test = new Test();
		test.method();
		TestModel testModel = new TestModel();
		main.method3();
		System.out.println("///////////////////////////////");
		TimeObjectDTO dto = new TimeObjectDTO("Title1"); 
		System.out.println(LastTimeUsedAspect.showTime(dto));
		dto.setName("tomek");
		System.out.println(LastTimeUsedAspect.showTime(dto));
	}
	
	
	public void method1(int num) {
//		System.out.println("exec int method1");
	}
	
	public void method1(String string, int num) {
//		System.out.println("exec string num method1");
	}
	
	public void method2(String string) {
//		System.out.println("exec string method2");
	}
	
	public void method2(String string, int num) {
//		System.out.println("exec string num method2");
	}
	
	public float floatMethod() {
		return 1.1f;
	}
	
	@Deprecated
	public void method3() {
		
	}

}
