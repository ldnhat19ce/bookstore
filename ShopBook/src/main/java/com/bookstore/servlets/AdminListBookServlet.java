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
import com.bookstore.services.BookInformationService;

@WebServlet("/admin/adminlistbook")
public class AdminListBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BookInformationService bookInformationService;

	public AdminListBookServlet() {
		bookInformationService = new BookInformationService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String pageidstr = request.getParameter("pageid");

		int pageid = Integer.parseInt(pageidstr);
		int total = 5;
		
		int maxPageId = 0;

		int countRow = bookInformationService.countRow();

		if((countRow / total) % 2 == 0) {
			if((countRow % total) == 0) {
				maxPageId = countRow / total;
			}else {
				maxPageId = (countRow / total) + 1;
			}
		}else if((countRow / total) % 2 != 0){
			if((countRow % total) == 0) {
				maxPageId = (countRow / total);
			}else {
				maxPageId = (countRow / total) + 1;
			}
			
		}
		request.setAttribute("pageid", pageid);
		request.setAttribute("maxpageid", maxPageId);
		
		if (pageid == 1) {

		} else {
			pageid = pageid - 1;
			pageid = pageid * total + 1;
		}

		
		List<BookInformation> bookInformations = bookInformationService.findWithPagination(pageid, total);
		request.setAttribute("bookInformations", bookInformations);	

		RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin/AdminListBook.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
