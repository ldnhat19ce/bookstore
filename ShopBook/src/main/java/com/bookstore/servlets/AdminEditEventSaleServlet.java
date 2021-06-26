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
import com.bookstore.model.FlashsaleProduct;
import com.bookstore.services.FlashsaleProductService;
import com.bookstore.services.FlashsaleService;


@WebServlet("/admin/edit-eventsale")
public class AdminEditEventSaleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FlashsaleService flashsaleService;
	private FlashsaleProductService flashsaleProductService;

	
	public AdminEditEventSaleServlet() {
		flashsaleService = new FlashsaleService();
		flashsaleProductService = new FlashsaleProductService();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String flashsaleIdstr = request.getParameter("flashsaleid");
		
		int flashsaleId = Integer.parseInt(flashsaleIdstr);
		request.setAttribute("flashsaleId", flashsaleId);
		
		Flashsale flashsale = flashsaleService.findFlashsaleById(flashsaleId);
		request.setAttribute("flashsale", flashsale);
		
		List<FlashsaleProduct> flashsaleProducts = flashsaleProductService.findBookById(flashsaleId);
		request.setAttribute("flashsaleProducts", flashsaleProducts);
		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin/EditEventSale.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
