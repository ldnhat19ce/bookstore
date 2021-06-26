package com.bookstore.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.utils.SessionUtils;


@WebServlet("/logout")

public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public LogoutServlet() {
       
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Cookie[] cookies = request.getCookies();
		
		for(Cookie cookie : cookies) {
			if(cookie.getName().equals("userId")) {
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
			if(cookie.getName().equals("roleId")) {
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}
		SessionUtils.removeSession(request.getSession());
		response.sendRedirect("HomeServlets");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
