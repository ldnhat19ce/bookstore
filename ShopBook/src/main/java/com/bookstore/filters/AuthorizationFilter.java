package com.bookstore.filters;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/admin/*")
public class AuthorizationFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse roq = (HttpServletResponse) response;

		try {
			/*
			 * if(SessionUtils.isLogin(req.getSession())) { User user =
			 * SessionUtils.getUser(req.getSession());
			 * 
			 * if(user.getRoleId() == 1) { chain.doFilter(request, response); }else { String
			 * msg = "you do not have access";
			 * roq.sendRedirect(req.getContextPath()+"/HomeServlets?msg="+msg); } }else {
			 * String msg = "you need to login in to continues";
			 * roq.sendRedirect(req.getContextPath()+"/HomeServlets?msg="+msg); }
			 */

			Cookie[] cookies = req.getCookies();

			boolean checkUser = false;
			boolean checkRole = false;
			boolean isAdmin = false;

			if (cookies != null) {
				for (Cookie cookie : cookies) {
					if (cookie.getName().equals("roleId") && cookie.getValue().equals("2")) {

						checkRole = true;
						checkUser = true;
						isAdmin = false;
						break;

					} else if (cookie.getName().equals("roleId") && cookie.getValue().equals("1")) {

						checkRole = true;
						checkUser = true;
						isAdmin = true;
						break;
					} else {
						checkUser = false;
					}

				}

			}

			if (checkUser == true && checkRole == true && isAdmin == false) {
				String msg = "you do not have access";
				roq.sendRedirect(req.getContextPath() + "/HomeServlets?msg=" + msg);
			} else if (checkUser == false) {
				String msg = "you need to login in to continues";
				roq.sendRedirect(req.getContextPath() + "/HomeServlets?msg=" + msg);
			} else if (checkRole == true && checkUser == true && isAdmin == true) {
				chain.doFilter(request, response);
			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

}
