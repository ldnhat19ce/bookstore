package com.bookstore.services;

import com.bookstore.dao.OrderDetailDAO;
import com.bookstore.model.OrderDetail;

import java.util.List;

public class OrderDetailService {

    private OrderDetailDAO orderDetailDAO;

    public OrderDetailService(){
        orderDetailDAO = new OrderDetailDAO();
    }

    public List<OrderDetail> findById(int orderId){
        return orderDetailDAO.findById(orderId);
    }

    public float priceOrderDetail(int orderId){
        List<OrderDetail> orderDetails = findById(orderId);
        float price = 0f;
        for(OrderDetail orderDetail : orderDetails){
            price += orderDetail.getOrderDetailPrice() * orderDetail.getOrderDetailAmount();
        }
        return price;
    }


}
