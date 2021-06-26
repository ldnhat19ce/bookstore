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
import com.bookstore.services.SearchServices;


@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SearchServices searchServices;

	
	public SearchServlet() {
		searchServices = new SearchServices();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String searchName = request.getParameter("searchname");
		request.setAttribute("searchName", searchName);

		List<BookInformation> bookInformations = searchServices.searchBook(searchName);
		request.setAttribute("bookInformations", bookInformations);

		RequestDispatcher rd = request.getRequestDispatcher("/jsp/result-search.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
