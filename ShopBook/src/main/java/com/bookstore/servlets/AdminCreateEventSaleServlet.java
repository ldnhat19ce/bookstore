package com.bookstore.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.services.FlashsaleService;


@WebServlet("/admin/create-eventsale")
public class AdminCreateEventSaleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FlashsaleService flashsaleService;

	
	public AdminCreateEventSaleServlet() {
		flashsaleService = new FlashsaleService();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin/AdminCreateEventSale.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String flashsaleName = request.getParameter("flashsaleName");
		
		String flashsaleStart = request.getParameter("flashsaleStart");
		
		String flashsaleEnd = request.getParameter("flashsaleEnd");
		
		int kt = flashsaleService.save(flashsaleName, flashsaleStart, flashsaleEnd);
		if(kt != -1) {
			
			String msg = "thêm thành công";
			request.setAttribute("msg", msg);
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin/AdminCreateEventSale.jsp");
			rd.forward(request, response);
		}else {
			String msg = "thêm thất bại";
			request.setAttribute("msg", msg);
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin/AdminCreateEventSale.jsp");
			rd.forward(request, response);
		}
	}

}
