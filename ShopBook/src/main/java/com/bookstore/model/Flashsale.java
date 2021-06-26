package com.bookstore.model;

import java.sql.Date;

public class Flashsale {
	
	private int flashsaleId;
	private String flashsaleName;
	private Date flashsaleStart;
	private Date flashsaleEnd;
	private String checkTime;
	private String countTime;
	private int countRow;
	
	public Flashsale() {
		
	}
	
	public Flashsale(String flashsaleName, Date flashsaleStart, Date flashsaleEnd) {
		this.flashsaleName = flashsaleName;
		this.flashsaleStart = flashsaleStart;
		this.flashsaleEnd = flashsaleEnd;
	}
	
	public Flashsale(Date flashsaleEnd) {
		this.flashsaleEnd = flashsaleEnd;
	}
	
	public Flashsale(int flashsaleId, String flashsaleName, Date flashsaleStart, Date flashsaleEnd, String checkTime,
			int countRow, String countTime) {
		this.flashsaleId = flashsaleId;
		this.flashsaleName = flashsaleName;
		this.flashsaleStart = flashsaleStart;
		this.flashsaleEnd = flashsaleEnd;
		this.checkTime = checkTime;
		this.countRow = countRow;
		this.countTime = countTime;
	}
	public Flashsale(int flashsaleId, String flashsaleName, Date flashsaleStart, Date flashsaleEnd, String checkTime, String countTime) {
		this.flashsaleId = flashsaleId;
		this.flashsaleName = flashsaleName;
		this.flashsaleStart = flashsaleStart;
		this.flashsaleEnd = flashsaleEnd;
		this.checkTime = checkTime;
		this.countTime = countTime;
	}
	
	public Flashsale(int flashsaleId, String flashsaleName, Date flashsaleStart, Date flashsaleEnd) {
		this.flashsaleId = flashsaleId;
		this.flashsaleName = flashsaleName;
		this.flashsaleStart = flashsaleStart;
		this.flashsaleEnd = flashsaleEnd;
		
	}
	
	public int getFlashsaleId() {
		return flashsaleId;
	}
	public void setFlashsaleId(int flashsaleId) {
		this.flashsaleId = flashsaleId;
	}
	
	public String getFlashsaleName() {
		return flashsaleName;
	}

	public void setFlashsaleName(String flashsaleName) {
		this.flashsaleName = flashsaleName;
	}

	public Date getFlashsaleStart() {
		return flashsaleStart;
	}
	public void setFlashsaleStart(Date flashsaleStart) {
		this.flashsaleStart = flashsaleStart;
	}
	public Date getFlashsaleEnd() {
		return flashsaleEnd;
	}
	public void setFlashsaleEnd(Date flashsaleEnd) {
		this.flashsaleEnd = flashsaleEnd;
	}

	public String getCheckTime() {
		return checkTime;
	}

	public void setCheckTime(String checkTime) {
		this.checkTime = checkTime;
	}

	public int getCountRow() {
		return countRow;
	}

	public void setCountRow(int countRow) {
		this.countRow = countRow;
	}

	public String getCountTime() {
		return countTime;
	}

	public void setCountTime(String countTime) {
		this.countTime = countTime;
	}
	
	
	
	
	

}
