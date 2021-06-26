package com.bookstore.model;

public class BookInformationImage {
	
	private int bookImageId;
	private String bookImageName;
	private String bookId;
	
	public BookInformationImage() {
		
	}
	
	public BookInformationImage(int bookImageId, String bookImageName, String bookId) {
		this.bookImageId = bookImageId;
		this.bookImageName = bookImageName;
		this.bookId = bookId;
	}
	
	public BookInformationImage(int bookImageId, String bookImageName) {
		this.bookImageId = bookImageId;
		this.bookImageName = bookImageName;
	}
	
	public int getBookImageId() {
		return bookImageId;
	}
	public void setBookImageId(int bookImageId) {
		this.bookImageId = bookImageId;
	}
	public String getBookImageName() {
		return bookImageName;
	}
	public void setBookImageName(String bookImageName) {
		this.bookImageName = bookImageName;
	}
	public String getBookId() {
		return bookId;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	
	

}
