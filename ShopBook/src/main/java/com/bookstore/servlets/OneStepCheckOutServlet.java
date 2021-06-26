package com.bookstore.servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

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

@WebServlet("/one-step")
public class OneStepCheckOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ListCartServices listCartServices;

	
	public OneStepCheckOutServlet() {
		listCartServices = new ListCartServices();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Map<String, String> mapCountry = new HashMap<>();
		mapCountry.put("VI", "Việt Nam");

		request.setAttribute("mapCountry", mapCountry);
		
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
					} else {

						float price = listCartServices.getPriceByUserId(userId);
						
						float priceAfter = price + 25000;

						request.setAttribute("priceAfter", priceAfter);
						request.setAttribute("price", price);
						request.setAttribute("listCarts", listCarts);
						
						if(!SessionUtils.isLogin(request.getSession())) {
							SessionUtils.storeUser(request.getSession(), userId);
						}
						
						int count = listCartServices.countRowProductByUserId(userId);
						request.setAttribute("count", count);

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

					} else {

						float price = listCartServices.getPriceByKeyCode(request);
						float priceAfter = price + 25000;

						request.setAttribute("priceAfter", priceAfter);
						request.setAttribute("price", price);

						request.setAttribute("listCarts", listCarts);
						
						String keyCode = CookieUtils.getValueCart(request);
						
						int count = listCartServices.countRowProductByKeyCode(keyCode);
						request.setAttribute("count", count);

					}

				} else {
					String msg = "Giỏ hàng trống";
					request.setAttribute("msg", msg);

					float price = 0f;
					request.setAttribute("price", price);
					
					int count = 0;
					request.setAttribute("count", count);
				}

		
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/OneStepCheckOut.jsp");
		rd.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
