package services;

import aspectJ1.MyAnnotation;

@MyAnnotation
public class Test2 {
	
	private String test;
	private String test2;
	
	public Test2(String test, String test2) {
		super();
		this.test = test;
		this.test2 = test2;
	}

	public Test2() {
		super();
	}

	public String getTest() {
		return test;
	}

	public void setTest(String test) {
		this.test = test;
	}

	public String getTest2() {
		return test2;
	}

	public void setTest2(String test2) {
		this.test2 = test2;
	}
	
	
	
	
	
	

}
