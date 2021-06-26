package com.bookstore.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.services.BookInformationExcelServices;

@WebServlet("/admin/exel-book")
public class AdminCreateBookExcelServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BookInformationExcelServices bookInformationExcelServices;

	public AdminCreateBookExcelServlet() {
		bookInformationExcelServices = new BookInformationExcelServices();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin/AdminExcelBook.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String test = bookInformationExcelServices.uploadFileExcelBook(request, response);

		if (test.equals("success")) {

			String msg = "thêm thành công";
			request.setAttribute("msg", msg);
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin/AdminExcelBook.jsp");
			rd.forward(request, response);
		} else {
			String msg = "thêm thất bại";
			request.setAttribute("msg", msg);
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin/AdminExcelBook.jsp");
			rd.forward(request, response);
		}
	}

}
