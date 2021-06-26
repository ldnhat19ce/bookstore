package com.bookstore.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.model.BookInformation;
import com.bookstore.model.BookInformationImage;
import com.bookstore.services.BookImageService;
import com.bookstore.services.BookInformationService;


@WebServlet("/admin/detail-book")
public class AdminDetailBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BookInformationService bookInformationService;
	private BookImageService bookImageService;

	
	public AdminDetailBookServlet() {
		bookInformationService = new BookInformationService();
		bookImageService = new BookImageService();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String bookId = request.getParameter("bookid");
		
		BookInformation bookInformation = bookInformationService.findById(bookId);
		request.setAttribute("bookinformation", bookInformation);
		List<BookInformationImage> images = bookImageService.findById(bookId);
		request.setAttribute("images", images);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin/AdminDetailBook.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
