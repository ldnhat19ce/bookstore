package com.bookstore.model;

public class SlideBanner {
	
	private int id;
	private String image;
	
	public SlideBanner() {
		
		
	}
	
	public SlideBanner(String image) {
		this.image = image;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	
	
}
