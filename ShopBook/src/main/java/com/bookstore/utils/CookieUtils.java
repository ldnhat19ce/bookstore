package com.bookstore.utils;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieUtils {

	public static void storeUser(HttpServletResponse response, int roleId, int userId) {

		// Cookie cUsername = new Cookie("username", username);
		// Cookie cPassword = new Cookie("password", password);
		Cookie cRoleId = new Cookie("roleId", String.valueOf(roleId));
		Cookie cUserId = new Cookie("userId", String.valueOf(userId));

		// cUsername.setMaxAge(60 * 60 * 24);
		// cPassword.setMaxAge(60 * 60 * 24);
		cRoleId.setMaxAge(60 * 60 * 24);
		cUserId.setMaxAge(60 * 60 * 24);

		// response.addCookie(cUsername);
		// response.addCookie(cPassword);
		response.addCookie(cRoleId);
		response.addCookie(cUserId);

	}

	public static void removeRoleId(HttpServletRequest request, HttpServletResponse response) {
		Cookie[] cookies = request.getCookies();

		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("roleId")) {
				cookie.setMaxAge(0);
				cookie.setValue("");

				response.addCookie(cookie);
			}
		}
	}

	public static void removeUserId(HttpServletRequest request, HttpServletResponse response) {
		Cookie[] cookies = request.getCookies();

		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("userId")) {
				cookie.setValue("");
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}
	}

	public static void storeSessionCart(HttpServletResponse response, String bKey) {
		Cookie keyCart = new Cookie("b_cart", bKey);

		keyCart.setMaxAge(60 * 60 * 24);

		response.addCookie(keyCart);
	}

	public static boolean checkKeyUser(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();

		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("userId")) {

				return true;
			}
		}
		return false;
	}

	public static boolean checkKeyCart(HttpServletRequest request) {

		Cookie[] cookies = request.getCookies();
		if(cookies != null) {
			try {
				for (Cookie cookie : cookies) {
					if (cookie.getName().equals("b_cart")) {

						return true;

					}
				}
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return false;
	}

	public static String getValueCart(HttpServletRequest request) {

		String keyCode = "";

		if (checkKeyCart(request)) {
			Cookie[] cookies = request.getCookies();

			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("b_cart")) {
					keyCode = cookie.getValue();
				}
			}
		}

		return keyCode;

	}

	public static int getUserId(HttpServletRequest request) {
		int userId = 0;

		Cookie[] cookies = request.getCookies();

		for (Cookie cookie : cookies) {
			if (cookie.getName().equals("userId")) {
				userId = Integer.parseInt(cookie.getValue());
			}

		}

		return userId;
	}

	public static boolean checkUserId(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("userId")) {
					SessionUtils.storeUserId(request.getSession(), Integer.parseInt(cookie.getValue()));
					return true;
				}
			}
		}

		return false;
	}

	public static boolean checkRoleId(HttpServletRequest request) {
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("roleId")) {
					SessionUtils.storeRoleId(request.getSession(), Integer.parseInt(cookie.getValue()));
					return true;
				}
			}
		}

		return false;
	}

}
