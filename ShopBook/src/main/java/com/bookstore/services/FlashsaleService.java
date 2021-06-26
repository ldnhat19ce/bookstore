package com.bookstore.services;

import java.sql.Date;
import java.util.List;

import com.bookstore.dao.FlashsaleDAO;
import com.bookstore.model.BookInformation;
import com.bookstore.model.Flashsale;

public class FlashsaleService {
	private FlashsaleDAO flashsaleDAO;
	
	public FlashsaleService() {
		flashsaleDAO = new FlashsaleDAO();
	}
	
	public List<Flashsale> findAll(){
		return flashsaleDAO.findAll();
	}
	
	public int save(Flashsale flashsale) {
		
		return flashsaleDAO.saveFlashsale(flashsale);
	}
	
	public Flashsale createFlashsale(String flashsaleName, String flashsaleStart, String flashsaleEnd) {
		
		Flashsale flashsale = new Flashsale();
		
		String date1 = splitDate(flashsaleStart);
		String date2 = splitDate(flashsaleEnd);
		
		flashsale.setFlashsaleName(flashsaleName);
		flashsale.setFlashsaleStart(Date.valueOf(date1));
		flashsale.setFlashsaleEnd(Date.valueOf(date2));
		
		return flashsale;
	}
	
	public int save(String flashsaleName, String flashsaleStart, String flashsaleEnd) {
		
		try {
			Flashsale flashsale = createFlashsale(flashsaleName, flashsaleStart, flashsaleEnd);
			
			return save(flashsale);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
			e.printStackTrace();
			return -1;
		}
		
		
	}
	
	public List<BookInformation> findAllBook(){
		return flashsaleDAO.findAllBook();
	}
	
	public BookInformation findByBookId(String bookId) {
		return flashsaleDAO.findBookById(bookId);
	}
	
	public String splitDate(String date) {
		
		String data[] = date.split("/");
		
		return data[2]+"-"+data[0]+"-"+data[1];
	}
	
	public Flashsale findFlashsaleById(int flashsaleId) {
		return flashsaleDAO.findFlashsaleById(flashsaleId);
	}
	
	
}
