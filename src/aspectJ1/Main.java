package aspectJ1;

import java.util.Calendar;
import java.util.GregorianCalendar;

import executions.Zad1Execution;
import model.TestModel;
import model.TimeObjectDTO;
import services.Service;
import services.Test;
import services.Test2;

public class Main {

	public static void main(String[] args) {
		Main main = new Main();
		Service service = new Service();
		
//		Zad1Execution zad1 = new Zad1Execution(main, service);
		

		
		
	}
	
	//zad 1 metody
	
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
	
	//zad 2

}
