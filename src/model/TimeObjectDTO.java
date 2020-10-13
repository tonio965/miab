package model;

public class TimeObjectDTO {
	
	//fields
	private String name;

	//constructors
	public TimeObjectDTO() {
		super();
	}
	
	public TimeObjectDTO(String name) {
		super();
		this.name = name;
	}
	
	
	//access to fields
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	

}
