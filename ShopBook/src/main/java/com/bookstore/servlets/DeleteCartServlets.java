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


@WebServlet("/delete-cart")
public class DeleteCartServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ListCartServices listCartServices;
	
	public DeleteCartServlets() {
		listCartServices = new ListCartServices();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String bookId = request.getParameter("bookId");
		if(CookieUtils.checkKeyUser(request)) {
			int userId = CookieUtils.getUserId(request);
			int kt = listCartServices.deleteCartByUserId(userId, bookId);
			List<ListCart> listCarts = listCartServices.findByUserId(userId);
			if(!listCarts.isEmpty()) {
				request.setAttribute("listCarts", listCarts);
				//response.sendRedirect("cart");
				float price = listCartServices.getPriceByUserId(userId);
				request.setAttribute("price", price);

				RequestDispatcher rd = request.getRequestDispatcher("/jsp/result-cart.jsp");
				rd.forward(request, response);
			}else {
				String msg = "Giỏ hàng trống";
				request.setAttribute("msg", msg);

				float price = 0f;
				request.setAttribute("price", price);

				int count = 0;
				request.setAttribute("count", count);

				RequestDispatcher rd = request.getRequestDispatcher("/jsp/result-cart.jsp");
				rd.forward(request, response);
			}
		}else if(CookieUtils.checkKeyCart(request)){
			String keyCode = CookieUtils.getValueCart(request);
			int kt = listCartServices.deleteCartByKeyCode(keyCode, bookId);
			List<ListCart> listCarts = listCartServices.findBySessionKey(request);
			if(!listCarts.isEmpty()) {
				//response.sendRedirect("cart");
				request.setAttribute("listCarts", listCarts);

				float price = listCartServices.getPriceByKeyCode(request);
				request.setAttribute("price", price);

				RequestDispatcher rd = request.getRequestDispatcher("/jsp/result-cart.jsp");
				rd.forward(request, response);
			}else{
				String msg = "Giỏ hàng trống";
				request.setAttribute("msg", msg);

				float price = 0f;
				request.setAttribute("price", price);

				int count = 0;
				request.setAttribute("count", count);

				RequestDispatcher rd = request.getRequestDispatcher("/jsp/result-cart.jsp");
				rd.forward(request, response);
			}
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
