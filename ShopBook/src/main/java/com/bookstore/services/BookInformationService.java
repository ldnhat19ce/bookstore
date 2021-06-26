package com.bookstore.services;

import java.sql.Date;
import java.util.List;

import com.bookstore.dao.BookInformationDAO;
import com.bookstore.model.Author;
import com.bookstore.model.BookInformation;
import com.bookstore.model.Form;
import com.bookstore.model.Pulish;
import com.bookstore.model.Supplier;

public class BookInformationService {

	private BookInformationDAO bookInformationDAO;

	public BookInformationService() {
		bookInformationDAO = new BookInformationDAO();
	}
	
	public List<BookInformation> findWithPagination(int pageid, int total){
		
		return bookInformationDAO.findWithPagination(pageid, total);
	}
	
	public BookInformation findById(String bookId) {
		return bookInformationDAO.findById(bookId);
	}

	public int save(BookInformation bookInformation) {
		return bookInformationDAO.save(bookInformation);
	}

	public BookInformation create(String bookId, String bookName, String bookContent, String bookAmount, float bookPrice, 
			Date bookDate, float bookWeight, String bookSize, int numberPage, String pulishId,
			String supplierId, String formId, String authorId) {

		Pulish pulish = new Pulish();
		pulish.setPulishId(Integer.parseInt(pulishId));
		
		Supplier supplier = new Supplier();
		supplier.setSupplierId(Integer.parseInt(supplierId));
		
		Form form = new Form();
		form.setFormId(Integer.parseInt(formId));
		
		Author author = new Author();
		author.setAuthorId(Integer.parseInt(authorId));

		BookInformation bookInformation = new BookInformation();
		bookInformation.setBookId(bookId);
		bookInformation.setBookName(bookName);
		bookInformation.setBookContent(bookContent);
		bookInformation.setBookAmount(Integer.parseInt(bookAmount));
		bookInformation.setBookPrice(bookPrice);
		bookInformation.setBookDate(bookDate);
		bookInformation.setBookWeight(bookWeight);
		bookInformation.setBooksize(bookSize);
		bookInformation.setNumberPage(numberPage);
		bookInformation.setPulish(pulish);
		bookInformation.setSupplier(supplier);
		bookInformation.setForm(form);
		bookInformation.setAuthor(author);
		

		return bookInformation;
	}
	
	public int save(String bookId, String bookName, String bookContent, String bookAmount, float bookPrice, Date bookDate, float bookWeight,
			String bookSize, int numberPage, String pulishId, String supplierId, String formId, String authorId) {
		
		BookInformation bookInformation = create(bookId, bookName, bookContent, bookAmount, bookPrice, bookDate, bookWeight, 
				bookSize, numberPage, pulishId, supplierId, formId, authorId);
		
		return save(bookInformation);
	}
	
	public int updateImageMain(String imageName, String bookId) {
		return bookInformationDAO.updateMainImage(imageName, bookId);
	}
	
	public int countRow() {
		return bookInformationDAO.countRow();
	}
	
	public List<BookInformation> findBookByRomance(int pageId, int total){
		return bookInformationDAO.findBookByRomance(pageId, total);
	}
	
	public int countRowByRomance() {
		return bookInformationDAO.countRowByRomance();
	}

}
