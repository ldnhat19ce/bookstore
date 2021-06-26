package com.bookstore.servlets;

import com.bookstore.model.Order;
import com.bookstore.services.OrderService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin/hoa-don"})
public class OrderServlet extends HttpServlet {

    private OrderService orderService;

    public OrderServlet() {
        orderService = new OrderService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Order> orders = orderService.findAll();
        request.setAttribute("orders", orders);

        RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin/DealManager.jsp");
        rd.forward(request, response);
    }
}
