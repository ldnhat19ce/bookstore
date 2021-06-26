package com.bookstore.servlets;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bookstore.services.ListCartServices;
import com.bookstore.services.SessionKeyServices;
import com.bookstore.utils.CookieUtils;


@WebServlet("/add-product")
public class AddToCartProductDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;    
	private SessionKeyServices sessionKeyServices;
	private ListCartServices listCartServices;

	
	public AddToCartProductDetail() {
		sessionKeyServices = new SessionKeyServices();
		listCartServices = new ListCartServices();
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String bookId = request.getParameter("bookid");
		
		String cartExist = "sản phảm đã có trong giỏ hàng";
		
		HttpSession session = request.getSession();
		if(CookieUtils.checkKeyUser(request)) {
			
			int userId = CookieUtils.getUserId(request);
			
			if(listCartServices.checkBookIdByUserId(bookId, userId)) {
				
				request.setAttribute("cartMsg", cartExist);
				RequestDispatcher rd =
						request.getRequestDispatcher("book-detail?bookId="+bookId);
				rd.forward(request, response);
				
			}else {
				listCartServices.saveUser(userId, bookId);
				response.sendRedirect("book-detail?bookId="+bookId);
				
			}
			
		}else {
			if(CookieUtils.checkKeyCart(request)) {
				String keyCode = CookieUtils.getValueCart(request);
				if(listCartServices.checkBookIdByKeyCode(bookId, keyCode)) {
					if(listCartServices.findStatusByBookAndKey(bookId, keyCode) != 1){
						listCartServices.updateAmountByKeyAndBookId(keyCode, bookId,
								""+1, 1);
						request.setAttribute("cartMsg", cartExist);
						RequestDispatcher rd =
								request.getRequestDispatcher("book-detail?bookId="+bookId);
						rd.forward(request, response);
					}else{
						request.setAttribute("cartMsg", cartExist);
						RequestDispatcher rd =
								request.getRequestDispatcher("book-detail?bookId="+bookId);
						rd.forward(request, response);
					}

				}else {
					listCartServices.saveSessionKey(keyCode, bookId);
					response.sendRedirect("book-detail?bookId="+bookId);
				}
		
				
			}else {
				LocalDate date = LocalDate.now();
				String keyCode = session.getId()+date;
				sessionKeyServices.save(keyCode);
				CookieUtils.storeSessionCart(response, keyCode);
				listCartServices.saveSessionKey(keyCode, bookId);
				response.sendRedirect("book-detail?bookId="+bookId);
			}
			
		}
		
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
