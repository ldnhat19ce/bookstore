package com.bookstore.model;

import java.util.List;

public class OrderDetail{

	private int orderDetailId;
	private int orderId;
	private BookInformation bookInformation;
	private float orderDetailPrice;
	private int orderDetailAmount;
	
	public OrderDetail() {
		
	}

	public int getOrderDetailId() {
		return orderDetailId;
	}

	public void setOrderDetailId(int orderDetailId) {
		this.orderDetailId = orderDetailId;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public BookInformation getBookInformation() {
		return bookInformation;
	}

	public void setBookInformation(BookInformation bookInformation) {
		this.bookInformation = bookInformation;
	}

	public float getOrderDetailPrice() {
		return orderDetailPrice;
	}

	public void setOrderDetailPrice(float orderDetailPrice) {
		this.orderDetailPrice = orderDetailPrice;
	}

	public int getOrderDetailAmount() {
		return orderDetailAmount;
	}

	public void setOrderDetailAmount(int orderDetailAmount) {
		this.orderDetailAmount = orderDetailAmount;
	}
}
