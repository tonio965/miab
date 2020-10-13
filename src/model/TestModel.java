package model;

public class TestModel {
	
	int firstField;
	int secondField;
	
	public TestModel() {
		setFirstField(1);
		setSecondField(2);
		getFirstField();
		getSecondField();
		takesString("s");
	}

	public int getFirstField() {
		return firstField;
	}

	public void setFirstField(int firstField) {
		this.firstField = firstField;
	}

	public int getSecondField() {
		return secondField;
	}

	public void setSecondField(int secondField) {
		this.secondField = secondField;
	}
	
	public void takesString(String s) {
		try {
			Thread.sleep(20);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	

}
