package executions;

import aspectJ1.LastTimeUsedAspect;
import aspectJ1.Main;
import model.TestModel;
import model.TimeObjectDTO;
import services.Service;
import services.Test;
import services.Test2;

public class Zad1Execution {

	public Zad1Execution(Main main, Service service) {
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
		Test2 test2 = new Test2("Test", "test");
		test2.setTest("Test");
	}

}
