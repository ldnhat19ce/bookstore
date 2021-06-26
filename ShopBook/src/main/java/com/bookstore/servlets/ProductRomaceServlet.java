package com.bookstore.servlets;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.model.BookInformation;
import com.bookstore.model.FlashsaleProduct;
import com.bookstore.model.ListCart;
import com.bookstore.services.BookInformationService;
import com.bookstore.services.FlashsaleProductService;
import com.bookstore.services.ListCartServices;
import com.bookstore.utils.CookieUtils;
import com.bookstore.utils.SessionUtils;

@WebServlet("/romance")
public class ProductRomaceServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FlashsaleProductService flashsaleProductService;
	private BookInformationService bookInformationService;
	private ListCartServices listCartServices;

	public ProductRomaceServlet() {
		flashsaleProductService = new FlashsaleProductService();
		bookInformationService = new BookInformationService();
		listCartServices = new ListCartServices();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String pageidstr = request.getParameter("pageid");

		int pageid = Integer.parseInt(pageidstr);
		int total = 12;

		int maxPageId = 0;

		int countRow = bookInformationService.countRowByRomance();

		if ((countRow / total) % 2 == 0) {
			if ((countRow % total) == 0) {
				maxPageId = countRow / total;
			} else {
				maxPageId = (countRow / total) + 1;
			}
		} else if ((countRow / total) % 2 != 0) {
			if ((countRow % total) == 0) {
				maxPageId = (countRow / total);
			} else {
				maxPageId = (countRow / total) + 1;
			}

		}

		request.setAttribute("pageid", pageid);
		request.setAttribute("maxpageid", maxPageId);

		if (pageid == 1) {

		} else {
			pageid = pageid - 1;
			pageid = pageid * total + 1;
		}

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

				if (!SessionUtils.isLogin(request.getSession())) {
					SessionUtils.storeUser(request.getSession(), userId);
				}
			} else {

				float price = listCartServices.getPriceByUserId(userId);

				request.setAttribute("price", price);
				request.setAttribute("listCarts", listCarts);

				if (!SessionUtils.isLogin(request.getSession())) {
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

		List<FlashsaleProduct> flashsaleProducts = flashsaleProductService.findFlashsaleByIdHandle(0, 10);
		request.setAttribute("flashsaleProducts", flashsaleProducts);

		List<BookInformation> bookInformations = bookInformationService.findBookByRomance(pageid, total);
		request.setAttribute("bookInformations", bookInformations);

		RequestDispatcher rd = request.getRequestDispatcher("/jsp/product-romance.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
