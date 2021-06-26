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
import com.bookstore.utils.SessionUtils;

@WebServlet("/cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ListCartServices listCartServices;

	public CartServlet() {
		listCartServices = new ListCartServices();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// User is exist
		if (CookieUtils.checkKeyUser(request)) {

			int userId = CookieUtils.getUserId(request);
			List<ListCart> listCarts = listCartServices.findByUserId(userId);
			
			if (listCarts.isEmpty()) {
				String msg = "Giỏ hàng trống";
				float price = 0f;
				request.setAttribute("msg", msg);
				
				request.setAttribute("price", price);
				int count = 0;
				request.setAttribute("count", count);
				
				if(!SessionUtils.isLogin(request.getSession())) {
					SessionUtils.storeUser(request.getSession(), userId);
				}
				RequestDispatcher rd = request.getRequestDispatcher("/jsp/cart.jsp");
				rd.forward(request, response);
			} else {

				float price = listCartServices.getPriceByUserId(userId);

				request.setAttribute("price", price);
				request.setAttribute("listCarts", listCarts);
				
				if(!SessionUtils.isLogin(request.getSession())) {
					SessionUtils.storeUser(request.getSession(), userId);
				}
				
				int count = listCartServices.countRowProductByUserId(userId);
				request.setAttribute("count", count);

				RequestDispatcher rd = request.getRequestDispatcher("/jsp/cart.jsp");
				rd.forward(request, response);
			}

		} else if (CookieUtils.checkKeyCart(request)) {
			List<ListCart> listCarts = listCartServices.findBySessionKey(request);
			if (listCarts.isEmpty()) {

				String msg = "Giỏ hàng trống";
				request.setAttribute("msg", msg);

				float price = 0f;
				request.setAttribute("price", price);
				
				int count = 0;
				request.setAttribute("count", count);

				RequestDispatcher rd = request.getRequestDispatcher("/jsp/cart.jsp");
				rd.forward(request, response);
			} else {

				float price = listCartServices.getPriceByKeyCode(request);
				request.setAttribute("price", price);

				request.setAttribute("listCarts", listCarts);
				
				String keyCode = CookieUtils.getValueCart(request);
				
				int count = listCartServices.countRowProductByKeyCode(keyCode);
				request.setAttribute("count", count);

				RequestDispatcher rd = request.getRequestDispatcher("/jsp/cart.jsp");
				rd.forward(request, response);
			}

		} else {
			String msg = "Giỏ hàng trống";
			request.setAttribute("msg", msg);

			float price = 0f;
			request.setAttribute("price", price);
			
			int count = 0;
			request.setAttribute("count", count);

			RequestDispatcher rd = request.getRequestDispatcher("/jsp/cart.jsp");
			rd.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	

}
