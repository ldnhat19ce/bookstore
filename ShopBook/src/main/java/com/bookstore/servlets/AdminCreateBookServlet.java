package com.bookstore.servlets;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.model.Author;
import com.bookstore.model.BookCategory;
import com.bookstore.model.Form;
import com.bookstore.model.Pulish;
import com.bookstore.model.Supplier;
import com.bookstore.services.AuthorServices;
import com.bookstore.services.BookCategoryListServices;
import com.bookstore.services.BookCategoryServices;
import com.bookstore.services.BookInformationService;
import com.bookstore.services.FormService;
import com.bookstore.services.PulishingService;
import com.bookstore.services.SupplierService;


@WebServlet("/admin/create-book")
public class AdminCreateBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private PulishingService pulishingService;
	private AuthorServices authorServices;
	private FormService formService;
	private SupplierService supplierService;
	private BookInformationService informationService;
	private BookCategoryServices bookCategoryServices;
	private BookCategoryListServices categoryListServices;

	
	public AdminCreateBookServlet() {
		pulishingService = new PulishingService();
		authorServices = new AuthorServices();
		formService = new FormService();
		supplierService = new SupplierService();
		informationService = new BookInformationService();
		bookCategoryServices = new BookCategoryServices();
		categoryListServices = new BookCategoryListServices();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Pulish> pulishs = pulishingService.findAll();
		request.setAttribute("pulishs", pulishs);
		
		List<Author> authors = authorServices.findAll();
		request.setAttribute("authors", authors);
		
		List<Form> forms = formService.findAll();
		request.setAttribute("forms", forms);
		
		List<Supplier> suppliers = supplierService.findAll();
		request.setAttribute("suppliers", suppliers);
		
		List<BookCategory> bookCategories = bookCategoryServices.findAll();
		request.setAttribute("bookCategories", bookCategories);
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin/AdminCreateBook.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String bookId = request.getParameter("bookid");
		String bookName = request.getParameter("bookname");
		String bookContent = request.getParameter("bookcontent");
		String bookAmount = request.getParameter("bookamount");
		
		String bookPricestr = request.getParameter("bookprice");
		float bookPrice = Float.parseFloat(bookPricestr);
		
		String bookDatestr = request.getParameter("bookdate");
		Date bookDate = Date.valueOf(bookDatestr);
		
		String bookWeightstr = request.getParameter("bookweight");
		float bookWeight = Float.parseFloat(bookWeightstr);
		
		String bookSize = request.getParameter("booksize");
		
		String numberPagestr = request.getParameter("numberpage");
		int numberPage = Integer.parseInt(numberPagestr);
		
		String authorId = request.getParameter("author");
		
		String formId = request.getParameter("form");
		
		String supplierId = request.getParameter("supplier");
		
		String pulishId = request.getParameter("pulish");
		
		String bookCategory = request.getParameter("category");
		
		
		informationService.save(bookId, bookName, bookContent, bookAmount, bookPrice,
				bookDate, bookWeight, bookSize, numberPage, pulishId, supplierId, formId, authorId);
		
		
		int kt = categoryListServices.save(bookId, Integer.parseInt(bookCategory));
		response.sendRedirect("create-book");
	}

}
