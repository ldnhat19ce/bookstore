package com.bookstore.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.services.BookImageService;

@WebServlet("/admin/book-image")
public class BookImageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BookImageService bookImageService;

	public BookImageServlet() {
		bookImageService = new BookImageService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String bookId = request.getParameter("bookid");

		String kt = bookImageService.uploadBookImage(request, response, bookId);

		if (kt.equals("success")) {

			response.sendRedirect("detail-book?bookid=" + bookId);
		} else {
			String msg = "thêm thất bại";
			request.setAttribute("msg", msg);
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin/HomeAdmin.jsp");
			rd.forward(request, response);
		}
	}

}
