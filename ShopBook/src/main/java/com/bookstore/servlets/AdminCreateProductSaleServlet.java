package com.bookstore.servlets;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.model.BookInformation;
import com.bookstore.services.FlashsaleProductService;
import com.bookstore.services.FlashsaleService;

@WebServlet("/admin/create-productsale")
public class AdminCreateProductSaleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private FlashsaleService flashsaleService;
	private FlashsaleProductService flashsaleProductService;

	public AdminCreateProductSaleServlet() {
		flashsaleService = new FlashsaleService();
		flashsaleProductService = new FlashsaleProductService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		List<BookInformation> bookInformations = flashsaleService.findAllBook();
		request.setAttribute("bookInformations", bookInformations);

		String flashsaleIdstr = request.getParameter("flashsaleid");

		int flashsaleId = Integer.parseInt(flashsaleIdstr);
		request.setAttribute("flashsaleId", flashsaleId);

		RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin/CreateProductFlashsale.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String[] box = request.getParameterValues("options[]");
		String flashsaleIdstr = request.getParameter("flashsaleid");
		String[] productQuantitylimit = request.getParameterValues("productQuantitylimit");
		String[] productDiscount = request.getParameterValues("productDiscount");

		List<String> quantity = new ArrayList<String>();
		for (int i = 0; i < productQuantitylimit.length; i++) {
			if (!productQuantitylimit[i].equals("")) {
				quantity.add(productQuantitylimit[i]);
			}
		}

		List<String> discount = new ArrayList<String>();
		for (int i = 0; i < productDiscount.length; i++) {
			if (!productDiscount[i].equals("")) {
				discount.add(productDiscount[i]);
			}
		}

		List<String> lbox = new ArrayList<String>();
		for (int i = 0; i < box.length; i++) {
			if (!box[i].equals("")) {
				lbox.add(box[i]);
			}
		}

		if (box != null) {

			for (int i = 0; i < discount.size(); i++) {

				flashsaleProductService.save(quantity.get(i), discount.get(i), lbox.get(i), flashsaleIdstr);
			}

			String msg = "thêm thành công";

			int flashsaleId = Integer.parseInt(flashsaleIdstr);
			request.setAttribute("flashsaleId", flashsaleId);
			request.setAttribute("msg", msg);

			response.sendRedirect(request.getContextPath()+"/admin/create-productsale?flashsaleid=" + flashsaleId);

		}

	}

}
