package com.bookstore.servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.services.LoginService;
import com.bookstore.utils.CookieUtils;
import com.bookstore.utils.SessionUtils;


@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private LoginService loginService;

	public LoginServlet() {
		loginService = new LoginService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String msg = request.getParameter("msg");
		request.setAttribute("msg", msg);
		RequestDispatcher rd = request.getRequestDispatcher("/jsp/home.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");

		boolean kt = loginService.isExist(username, password);
		if (kt) {

			int role = loginService.checkRole(username, password);
			int userId = loginService.findUserId(username, password);

			if (role == 2) {

				SessionUtils.storeUser(request.getSession(), username, password, 2, userId);
				CookieUtils.storeUser(response, 2, userId);

				response.sendRedirect("HomeServlets");

			} else if (role == 1) {

				SessionUtils.storeUser(request.getSession(), username, password, 1, userId);
				CookieUtils.storeUser(response, 1, userId);
				response.sendRedirect(request.getContextPath() + "/admin/home-admin");
			}

		} else {
			String msg = "username or email is uncorrectly";

			request.setAttribute("msg", msg);
			RequestDispatcher rd = request.getRequestDispatcher("/jsp/login.jsp");
			rd.forward(request, response);
		}

	}

}
