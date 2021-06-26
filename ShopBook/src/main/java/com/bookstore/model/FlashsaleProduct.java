package com.bookstore.model;

public class FlashsaleProduct {

	private int productId;
	private int productQuantitylimit;
	private float productDiscount;
	private BookInformation bookInformation;
	private Flashsale flashsale;
	private int count;

	public FlashsaleProduct() {

	}

	public FlashsaleProduct(int productId) {
		this.productId = productId;
	}

	public FlashsaleProduct(int productQuantitylimit, float productDiscount, BookInformation bookInformation) {
		this.productQuantitylimit = productQuantitylimit;
		this.productDiscount = productDiscount;
		this.bookInformation = bookInformation;
	}
	public FlashsaleProduct(int productId, int productQuantitylimit, float productDiscount, BookInformation bookInformation) {
		this.productId = productId;
		this.productQuantitylimit = productQuantitylimit;
		this.productDiscount = productDiscount;
		this.bookInformation = bookInformation;
	}
	
	public FlashsaleProduct(int productId, int productQuantitylimit, float productDiscount, BookInformation bookInformation, Flashsale flashsale) {
		this.productId = productId;
		this.productQuantitylimit = productQuantitylimit;
		this.productDiscount = productDiscount;
		this.bookInformation = bookInformation;
		this.flashsale = flashsale;
	}
	
	
	


	public int getProductId() {
		return productId;
	}

	public void setProductId(int productId) {
		this.productId = productId;
	}

	public int getProductQuantitylimit() {
		return productQuantitylimit;
	}

	public void setProductQuantitylimit(int productQuantitylimit) {
		this.productQuantitylimit = productQuantitylimit;
	}

	public float getProductDiscount() {
		return productDiscount;
	}

	public void setProductDiscount(float productDiscount) {
		this.productDiscount = productDiscount;
	}

	public BookInformation getBookInformation() {
		return bookInformation;
	}

	public void setBookInformation(BookInformation bookInformation) {
		this.bookInformation = bookInformation;
	}

	public Flashsale getFlashsale() {
		return flashsale;
	}

	public void setFlashsale(Flashsale flashsale) {
		this.flashsale = flashsale;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}
	
	

}
