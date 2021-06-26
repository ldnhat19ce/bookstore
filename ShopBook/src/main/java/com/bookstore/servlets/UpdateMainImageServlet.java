package com.bookstore.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.services.BookInformationService;


@WebServlet("/admin/update-main-image")
public class UpdateMainImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BookInformationService bookInformationService;

	public UpdateMainImageServlet() {
		bookInformationService = new BookInformationService();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String imageName = request.getParameter("img");
		String bookId = request.getParameter("bookid");
		
		int kt = bookInformationService.updateImageMain(imageName, bookId);
		
		if(kt != -1) {
			
			response.sendRedirect("detail-book?bookid="+bookId);
		}else {
			
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
