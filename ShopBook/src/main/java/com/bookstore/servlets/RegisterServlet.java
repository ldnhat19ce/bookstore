package com.bookstore.servlets;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.services.RegisterServices;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private RegisterServices registerServices;

	public RegisterServlet() {
		registerServices = new RegisterServices();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		int kt = registerServices.save(username, password);
		if (kt != -1) {
			String msg = "register success";
			request.setAttribute("msg", msg);

			response.sendRedirect("HomeServlets?msg="+msg);
		} else {
			String msg = "username is exist";
			request.setAttribute("msg", msg);

			response.sendRedirect("HomeServlets?msg="+msg);
		}
	}

}
