package com.bookstore.servlets;

import com.bookstore.model.OrderDetail;
import com.bookstore.model.User;
import com.bookstore.services.ListCartServices;
import com.bookstore.services.OrderDetailService;
import com.bookstore.services.OrderService;
import com.bookstore.services.UserOrderService;
import com.bookstore.utils.CookieUtils;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/pay"})
public class PayServlet extends HttpServlet {

    private OrderService orderService;
    private ListCartServices listCartServices;
    private UserOrderService userOrderService;
    private OrderDetailService orderDetailService;

    public PayServlet(){
        orderService = new OrderService();
        listCartServices = new ListCartServices();
        userOrderService = new UserOrderService();
        orderDetailService = new OrderDetailService();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("pay");
        String fullname = request.getParameter("fullname");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String city = request.getParameter("city");
        String district = request.getParameter("District");
        String ward = request.getParameter("Ward");
        String priceAfter = request.getParameter("priceAfter");
        String[] bookId = request.getParameterValues("bookId");
        String[] cartAmount = request.getParameterValues("cartAmount");
        String[] bookPrice = request.getParameterValues("bookPrice");

        String view = "";
        String addr = "";
        if(action.equals("PAYINCASH")){
            if(CookieUtils.checkUserId(request)){
                int orderId = orderService.saveByUser(CookieUtils.getUserId(request), 2);
                request.setAttribute("orderId", orderId);
                addr = address +", "+ ward+", "+district+", "+city;
                userOrderService.save(fullname, email, address +", "+
                        ward+", "+district+", "+city, ""+orderId);
                for(int i = 0; i < bookId.length; i++){
                    listCartServices.updateAmountByUserAndBookId(CookieUtils.getUserId(request), bookId[i],
                            cartAmount[i], 0);
                    orderService.saveOrderDetail(orderId, bookId[i],
                            Float.parseFloat(bookPrice[i]), Integer.parseInt(cartAmount[i]));
                }
            }else{
                int orderId = orderService.saveByKey(CookieUtils.getValueCart(request), 2);
                request.setAttribute("orderId", orderId);
                addr = address +", "+ ward+", "+district+", "+city;
                userOrderService.save(fullname, email, address +", "+
                        ward+", "+district+", "+city, ""+orderId);
                for(int i = 0; i < bookId.length; i++){
                    listCartServices.updateAmountByKeyAndBookId(CookieUtils.getValueCart(request),
                            bookId[i], cartAmount[i], 0);
                    orderService.saveOrderDetail(orderId, bookId[i], Float.parseFloat(bookPrice[i]),
                            Integer.parseInt(cartAmount[i]));

                }
            }
            view = "/jsp/deliver.jsp";
        }else if(action.equals("BANK_TRANFER")){
            if(CookieUtils.checkUserId(request)){
                int orderId = orderService.saveByUser(CookieUtils.getUserId(request), 1);
                request.setAttribute("orderId", orderId);
                addr = address +", "+ ward+", "+district+", "+city;
                userOrderService.save(fullname, email, address +", "+
                        ward+", "+district+", "+city, ""+orderId);
                for(int i = 0; i < bookId.length; i++){
                    listCartServices.updateAmountByUserAndBookId(CookieUtils.getUserId(request), bookId[i],
                            cartAmount[i], 0);
                    orderService.saveOrderDetail(orderId, bookId[i],
                            Float.parseFloat(bookPrice[i]), Integer.parseInt(cartAmount[i]));
                }
            }else{
                int orderId = orderService.saveByKey(CookieUtils.getValueCart(request), 1);
                request.setAttribute("orderId", orderId);
                addr = address +", "+ ward+", "+district+", "+city;
                userOrderService.save(fullname, email, address +", "+
                        ward+", "+district+", "+city, ""+orderId);
                for(int i = 0; i < bookId.length; i++){
                    listCartServices.updateAmountByKeyAndBookId(CookieUtils.getValueCart(request),
                            bookId[i], cartAmount[i], 0);
                    orderService.saveOrderDetail(orderId, bookId[i], Float.parseFloat(bookPrice[i]),
                            Integer.parseInt(cartAmount[i]));
                }
            }
            view = "/jsp/transfer.jsp";
        }
        User user = new User();
        user.setFullname(fullname);
        user.setAddress(address);
        user.setPrice(Float.parseFloat(priceAfter));

        request.setAttribute("addr", addr);
        request.setAttribute("user", user);

        RequestDispatcher rd = request.getRequestDispatcher(view);
        rd.forward(request, response);
    }
}
