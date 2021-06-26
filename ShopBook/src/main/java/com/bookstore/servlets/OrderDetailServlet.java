package com.bookstore.servlets;

import com.bookstore.model.OrderDetail;
import com.bookstore.model.UserOrder;
import com.bookstore.services.OrderDetailService;
import com.bookstore.services.OrderService;
import com.bookstore.services.UserOrderService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/admin/detail-order"})
public class OrderDetailServlet extends HttpServlet {

    private OrderDetailService detailService;
    private UserOrderService userOrderService;
    private OrderService orderService;

    public OrderDetailServlet(){
        detailService = new OrderDetailService();
        userOrderService = new UserOrderService();
        orderService= new OrderService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String orderId = request.getParameter("orderId");
        List<OrderDetail> orderDetails = detailService.findById(Integer.parseInt(orderId));
        float price = detailService.priceOrderDetail(Integer.parseInt(orderId));
        UserOrder userOrder = userOrderService.findById(Integer.parseInt(orderId));
        request.setAttribute("userOrder", userOrder);
        request.setAttribute("price", price);
        request.setAttribute("orderDetails", orderDetails);
        String payName = orderService.findPayId(Integer.parseInt(orderId));
        request.setAttribute("payName", payName);
        request.setAttribute("orderId", orderId);

        RequestDispatcher rd = request.getRequestDispatcher("/jsp/admin/resultOrderDetail.jsp");
        rd.forward(request, response);


    }
}
