package com.bookstore.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.model.Flashsale;
import com.bookstore.services.FlashsaleService;


@WebServlet("/admin/flash-sale")
public class AdminFlashsaleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FlashsaleService flashsaleService;

	
	public AdminFlashsaleServlet() {
		flashsaleService = new FlashsaleService();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		List<Flashsale> flashsales = flashsaleService.findAll();
		request.setAttribute("flashsales", flashsales);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin/AdminFlashsale.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
