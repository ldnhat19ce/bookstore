package com.bookstore.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.model.ListCart;
import com.bookstore.services.ListCartServices;
import com.bookstore.utils.CookieUtils;


@WebServlet("/update-cart")
public class UpdateCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ListCartServices listCartServices;
	
	public UpdateCartServlet() {
		listCartServices = new ListCartServices();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String bookId = request.getParameter("bookId");
		String cartAmount = request.getParameter("cartAmount");
		
		
		if(CookieUtils.checkUserId(request)) {
			int userId = CookieUtils.getUserId(request);

			listCartServices.updateAmountByUserAndBookId(userId, bookId, cartAmount, 1);

			List<ListCart> listCarts = listCartServices.findByUserId(userId);
			request.setAttribute("listCarts", listCarts);

			float price = listCartServices.getPriceByUserId(userId);
			request.setAttribute("price", price);
			
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/result-cart.jsp");
			rd.forward(request, response);
			
		}else {

			String keyCode = CookieUtils.getValueCart(request);
			
			listCartServices.updateAmountByKeyAndBookId(keyCode, bookId, cartAmount, 1);
			List<ListCart> listCarts = listCartServices.findBySessionKey(request);
			request.setAttribute("listCarts", listCarts);

			float price = listCartServices.getPriceByKeyCode(request);
			request.setAttribute("price", price);

			RequestDispatcher rd = request.getRequestDispatcher("/jsp/result-cart.jsp");
			rd.forward(request, response);

		}
	}

}
