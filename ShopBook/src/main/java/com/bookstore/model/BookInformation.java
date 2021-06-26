package com.bookstore.model;

import java.sql.Date;

public class BookInformation {

	private String bookId;
	private String bookName;
	private String bookContent;
	private int bookAmount;
	private float bookPrice;
	private String mainImage;
	private Date bookDate;
	private float bookWeight;
	private String booksize;
	private int numberPage;
	private Author author;
	private Form form;
	private Pulish pulish;
	private Supplier supplier;

	public BookInformation() {

	}

	public BookInformation(String bookId, String bookName, String bookContent, int bookAmount, float bookPrice, String mainImage,
			Date bookDate, float bookWeight, String bookSize, int numberPage, Author author, Form form, Pulish pulish, Supplier supplier) {

		this.bookId = bookId;
		this.bookName = bookName;
		this.bookContent = bookContent;
		this.bookAmount = bookAmount;
		this.bookPrice = bookPrice;
		this.mainImage = mainImage;
		this.bookDate = bookDate;
		this.bookWeight = bookWeight;
		this.booksize = bookSize;
		this.numberPage = numberPage;
		this.author = author;
		this.form = form;
		this.pulish = pulish;
		this.supplier = supplier;

	}
	public BookInformation(String bookId, String bookName, String bookContent, Date bookDate, float bookWeight,
			String bookSize, int numberPage, Author author, Form form, Pulish pulish, Supplier supplier) {

		this.bookId = bookId;
		this.bookName = bookName;
		this.bookContent = bookContent;
		this.bookDate = bookDate;
		this.bookWeight = bookWeight;
		this.booksize = bookSize;
		this.numberPage = numberPage;
		this.author = author;
		this.form = form;
		this.pulish = pulish;
		this.supplier = supplier;

	}
	public BookInformation(String bookId, String bookName, String bookContent, Date bookDate, float bookWeight,
			String bookSize, int numberPage) {

		this.bookId = bookId;
		this.bookName = bookName;
		this.bookContent = bookContent;
		this.bookDate = bookDate;
		this.bookWeight = bookWeight;
		this.booksize = bookSize;
		this.numberPage = numberPage;

	}
	
	public BookInformation(String bookId, String bookName, String bookContent, int bookAmount, float bookPrice, String mainImage, 
			Date bookDate, float bookWeight, String bookSize, int numberPage) {

		this.bookId = bookId;
		this.bookName = bookName;
		this.bookContent = bookContent;
		this.bookAmount = bookAmount;
		this.bookPrice = bookPrice;
		this.mainImage = mainImage;
		this.bookDate = bookDate;
		this.bookWeight = bookWeight;
		this.booksize = bookSize;
		this.numberPage = numberPage;

	}
	
	public BookInformation(String bookId, String bookName, float bookPrice) {
		this.bookId = bookId;
		this.bookName = bookName;
		this.bookPrice = bookPrice;
	}

	public String getBookId() {
		return bookId;
	}

	public void setBookId(String bookId) {
		this.bookId = bookId;
	}

	public String getBookName() {
		return bookName;
	}

	public void setBookName(String bookName) {
		this.bookName = bookName;
	}

	public String getBookContent() {
		return bookContent;
	}

	public void setBookContent(String bookContent) {
		this.bookContent = bookContent;
	}
	
	

	public int getBookAmount() {
		return bookAmount;
	}

	public void setBookAmount(int bookAmount) {
		this.bookAmount = bookAmount;
	}

	public Date getBookDate() {
		return bookDate;
	}

	public void setBookDate(Date bookDate) {
		this.bookDate = bookDate;
	}

	public float getBookWeight() {
		return bookWeight;
	}

	public void setBookWeight(float bookWeight) {
		this.bookWeight = bookWeight;
	}

	public String getBooksize() {
		return booksize;
	}

	public void setBooksize(String booksize) {
		this.booksize = booksize;
	}

	public int getNumberPage() {
		return numberPage;
	}

	public void setNumberPage(int numberPage) {
		this.numberPage = numberPage;
	}

	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}

	public Form getForm() {
		return form;
	}

	public void setForm(Form form) {
		this.form = form;
	}

	public Pulish getPulish() {
		return pulish;
	}

	public void setPulish(Pulish pulish) {
		this.pulish = pulish;
	}

	public Supplier getSupplier() {
		return supplier;
	}

	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}

	public String getMainImage() {
		return mainImage;
	}

	public void setMainImage(String mainImage) {
		this.mainImage = mainImage;
	}

	public float getBookPrice() {
		return bookPrice;
	}

	public void setBookPrice(float bookPrice) {
		this.bookPrice = bookPrice;
	}

	

}
