package com.bookstore.servlets;

import com.bookstore.model.BookInformation;
import com.bookstore.services.FlashsaleProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin/flashsale-detail-product"})
public class AdminProductDetailServlet extends HttpServlet {
    private FlashsaleProductService flashsaleProductService;

    public AdminProductDetailServlet() {
        flashsaleProductService = new FlashsaleProductService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String bookId = request.getParameter("bookid");

        BookInformation bookInformation = flashsaleProductService.findBookById(bookId);
        request.setAttribute("bookInformation", bookInformation);

        RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin/resultProduct.jsp");
        rd.forward(request, response);

    }
}
