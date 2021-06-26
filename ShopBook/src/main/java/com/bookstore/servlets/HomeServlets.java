package com.bookstore.servlets;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.model.FeatureCategories;
import com.bookstore.model.FlashsaleProduct;
import com.bookstore.model.SlideBanner;
import com.bookstore.services.*;
import com.bookstore.utils.CookieUtils;
import com.bookstore.utils.SessionUtils;

@WebServlet(urlPatterns = {"/HomeServlets", "/trang-chu"})
public class HomeServlets extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private SlideshowService slideshowService;
	private FlashsaleProductService flashsaleProductService;
	private ListCartServices listCartServices;
	private CategoryBookService categoryBookService;
	private BestSellerService bestSellerService;

	public HomeServlets() {
		slideshowService = new SlideshowService();
		flashsaleProductService = new FlashsaleProductService();
		listCartServices = new ListCartServices();
		categoryBookService = new CategoryBookService();
		bestSellerService = new BestSellerService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		boolean check = false;
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("userId")) {
					SessionUtils.storeUserId(request.getSession(), Integer.parseInt(cookie.getValue()));
					check = true;
					break;
				} else {
					check = false;
				}
				if (cookie.getName().equals("roleId")) {
					SessionUtils.storeRoleId(request.getSession(), Integer.parseInt(cookie.getValue()));
				}
			}
		}
		if (check == true) {
			List<SlideBanner> banners = slideshowService.findAll();
			request.setAttribute("banners", banners);

			List<FeatureCategories> categories = slideshowService.findAllFeature();
			request.setAttribute("categories", categories);

			List<FlashsaleProduct> flashsaleProducts = flashsaleProductService.findFlashsaleByIdHandle(0, 5);

			Iterator<FlashsaleProduct> it = flashsaleProducts.iterator();

			DateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
			String endDatestr = simpleDateFormat.format(it.next().getFlashsale().getFlashsaleEnd());

			String[] dateSplit = endDatestr.split("-");
			String date = dateSplit[1] + " " + dateSplit[0] + ", " + dateSplit[2] + " ";
			request.setAttribute("date", date);
			request.setAttribute("flashsaleProducts", flashsaleProducts);

			List<FlashsaleProduct> products = flashsaleProductService.findFlashsaleByIdHandle(5, 10);
			request.setAttribute("products", products);

			int userId = CookieUtils.getUserId(request);
			if (!SessionUtils.isLogin(request.getSession())) {

				SessionUtils.storeUser(request.getSession(), userId);
			}
			int count = listCartServices.countRowProductByUserId(userId);
			float price = listCartServices.getPriceByUserId(userId);
			request.setAttribute("price", price);
			request.setAttribute("count", count);

			/*request.setAttribute("category", categoryBookService.findAll());
			request.setAttribute("rankliterary", categoryBookService.subList(1));
			request.setAttribute("rankkid", categoryBookService.subList(5));
			request.setAttribute("ranklife", categoryBookService.subList(3));
			request.setAttribute("rankdiff", categoryBookService.subList(7));
			request.setAttribute("literary", categoryBookService.findOne(1));
			request.setAttribute("kid", categoryBookService.findOne(5));
			request.setAttribute("life", categoryBookService.findOne(3));
			request.setAttribute("diff", categoryBookService.findOne(7));
			request.setAttribute("bestSeller", bestSellerService.subList());*/
			String msg = request.getParameter("msg");
			request.setAttribute("msg", msg);

			RequestDispatcher rd = request.getRequestDispatcher("/jsp/home.jsp");
			rd.forward(request, response);

		} else {
			List<SlideBanner> banners = slideshowService.findAll();
			request.setAttribute("banners", banners);

			List<FeatureCategories> categories = slideshowService.findAllFeature();
			request.setAttribute("categories", categories);

			List<FlashsaleProduct> flashsaleProducts = flashsaleProductService.findFlashsaleByIdHandle(0, 5);

			Iterator<FlashsaleProduct> it = flashsaleProducts.iterator();

			DateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
			String endDatestr = simpleDateFormat.format(it.next().getFlashsale().getFlashsaleEnd());

			String[] dateSplit = endDatestr.split("-");
			String date = dateSplit[1] + " " + dateSplit[0] + ", " + dateSplit[2] + " ";
			request.setAttribute("date", date);
			request.setAttribute("flashsaleProducts", flashsaleProducts);

			List<FlashsaleProduct> products = flashsaleProductService.findFlashsaleByIdHandle(5, 10);
			request.setAttribute("products", products);
			/*request.setAttribute("rankliterary", categoryBookService.subList(1));
			request.setAttribute("rankkid", categoryBookService.subList(5));
			request.setAttribute("ranklife", categoryBookService.subList(3));
			request.setAttribute("rankdiff", categoryBookService.subList(7));
			request.setAttribute("literary", categoryBookService.findOne(1));
			request.setAttribute("kid", categoryBookService.findOne(5));
			request.setAttribute("life", categoryBookService.findOne(3));
			request.setAttribute("diff", categoryBookService.findOne(7));
			request.setAttribute("bestSeller", bestSellerService.subList());*/

			String msg = request.getParameter("msg");
			request.setAttribute("msg", msg);

			if (CookieUtils.checkKeyCart(request)) {
				String keyCode = CookieUtils.getValueCart(request);
				int count = listCartServices.countRowProductByKeyCode(keyCode);
				float price = listCartServices.getPriceByKeyCode(request);
				request.setAttribute("price", price);
				request.setAttribute("count", count);
			} else {
				int count = 0;
				request.setAttribute("count", count);
			}
			request.setAttribute("category", categoryBookService.findAll());

			RequestDispatcher rd = request.getRequestDispatcher("/jsp/home.jsp");
			rd.forward(request, response);
		}
	}
}
