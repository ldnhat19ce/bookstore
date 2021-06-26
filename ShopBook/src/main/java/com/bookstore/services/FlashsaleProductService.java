package com.bookstore.services;
import java.util.ArrayList;
import java.util.List;

import com.bookstore.dao.FlashsaleProductDAO;
import com.bookstore.model.BookInformation;
import com.bookstore.model.Flashsale;
import com.bookstore.model.FlashsaleProduct;

public class FlashsaleProductService {

	private FlashsaleProductDAO flashsaleProductDAO;

	public FlashsaleProductService() {
		flashsaleProductDAO = new FlashsaleProductDAO();
	}

	public int save(FlashsaleProduct flashsaleProduct) {

		return flashsaleProductDAO.save(flashsaleProduct);
	}

	public FlashsaleProduct createFlashsaleProduct(String productQuantitylimit, String productDiscount, String bookId,
			String flashsaleId) {

		FlashsaleProduct flashsaleProduct = new FlashsaleProduct();

		Flashsale flashsale = new Flashsale();
		flashsale.setFlashsaleId(Integer.parseInt(flashsaleId));

		BookInformation bookInformation = new BookInformation();
		bookInformation.setBookId(bookId);
		;

		flashsaleProduct.setProductQuantitylimit(Integer.parseInt(productQuantitylimit));
		flashsaleProduct.setProductDiscount(Float.parseFloat(productDiscount));
		flashsaleProduct.setBookInformation(bookInformation);
		flashsaleProduct.setFlashsale(flashsale);

		return flashsaleProduct;
	}

	public int save(String productQuantitylimit, String productDiscount, String bookId, String flashsaleId) {

		FlashsaleProduct flashsaleProduct = createFlashsaleProduct(productQuantitylimit, productDiscount, bookId,
				flashsaleId);

		return save(flashsaleProduct);
	}

	public List<FlashsaleProduct> findBookById(int flashsaleId) {
		return flashsaleProductDAO.findBookById(flashsaleId);
	}

	public List<FlashsaleProduct> findFlashsaleById() {
		return flashsaleProductDAO.findFlashsaleById();
	}
	
	public List<FlashsaleProduct> handleCount(){
		List<FlashsaleProduct> flashsaleProducts = findFlashsaleById();
		
		List<FlashsaleProduct> products = new ArrayList<FlashsaleProduct>();
		
		for(int i = 0; i < flashsaleProducts.size(); i++) {
			FlashsaleProduct flashsaleProduct = new FlashsaleProduct();
			flashsaleProduct.setCount(i);
			flashsaleProduct.setBookInformation(flashsaleProducts.get(i).getBookInformation());
			flashsaleProduct.setProductDiscount(flashsaleProducts.get(i).getProductDiscount());
			flashsaleProduct.setProductQuantitylimit(flashsaleProducts.get(i).getProductQuantitylimit());
			flashsaleProduct.setFlashsale(flashsaleProducts.get(i).getFlashsale());
			products.add(flashsaleProduct);
		}
		
		return products;
	}

	public List<FlashsaleProduct> findFlashsaleByIdHandle(int countRow1, int countRow2) {
		List<FlashsaleProduct> flashsaleProducts = handleCount();
		
		List<FlashsaleProduct> products = flashsaleProducts.subList(countRow1, countRow2);
				
		return products;
	}
	
	public BookInformation findBookById(String bookId){
		return flashsaleProductDAO.findBookById(bookId);
	}
}
