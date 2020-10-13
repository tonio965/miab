package model;

public class TestModel2 {
	
	public static long time;
	
	private String name;
	
	public TestModel2(String name) {
		super();
		this.name=name;
	}
	
	public void introduce() {
		System.out.println("testmodel2 name: "+name);
	}

}
