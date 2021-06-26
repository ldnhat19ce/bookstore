package com.bookstore.model;

public class Pulish {
	
	private int pulishId;
	private String pulishName;
	
	public Pulish() {
		
	}
	
	public Pulish(int pulishId, String pulishName) {
		this.pulishId = pulishId;
		this.pulishName = pulishName;
	}
	
	public int getPulishId() {
		return pulishId;
	}
	public void setPulishId(int pulishId) {
		this.pulishId = pulishId;
	}
	public String getPulishName() {
		return pulishName;
	}
	public void setPulishName(String pulishName) {
		this.pulishName = pulishName;
	}
	
	

}
