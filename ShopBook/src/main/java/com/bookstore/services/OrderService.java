package com.bookstore.services;

import com.bookstore.dao.OrderDAO;
import com.bookstore.model.BookInformation;
import com.bookstore.model.Order;
import com.bookstore.model.OrderDetail;

import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

public class OrderService {

    private OrderDAO orderDAO;

    public OrderService(){
        orderDAO = new OrderDAO();
    }

    public Order createOrderByKey(String key, int payId){

        Order order = new Order();

        order.setKeyId(key);
        order.setPayId(payId);
        order.setDateOrder(new Timestamp(System.currentTimeMillis()));

        return order;
    }

    public int saveByKey(Order order){
        return orderDAO.saveByKey(order);
    }

    public int saveByKey(String key, int payId){
        Order order = createOrderByKey(key, payId);

        return saveByKey(order);
    }

    //user

    public Order createOrderByUser(int userId, int payId){

        Order order = new Order();

        order.setUserId(userId);
        order.setPayId(payId);
        order.setDateOrder(new Timestamp(System.currentTimeMillis()));

        return order;
    }

    public int saveByUser(Order order){
        try {
            return orderDAO.saveByUserId(order);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
            return -1;
        }
    }

    public int saveByUser(int userId, int payId){
        Order order = createOrderByUser(userId, payId);

        return saveByUser(order);
    }

    public int saveOrderDetail(OrderDetail orderDetail){
        return orderDAO.saveOrderDetail(orderDetail);
    }

    public OrderDetail saveOrder(int orderId, String bookId, float orderPrice, int orderAmount){
        OrderDetail orderDetail = new OrderDetail();
        orderDetail.setOrderId(orderId);
        BookInformation bookInformation = new BookInformation();
        bookInformation.setBookId(bookId);
        orderDetail.setBookInformation(bookInformation);
        orderDetail.setOrderDetailPrice(orderPrice);
        orderDetail.setOrderDetailAmount(orderAmount);

        return orderDetail;
    }

    public int saveOrderDetail(int orderId, String bookId, float orderPrice, int orderAmount){
        OrderDetail orderDetail = saveOrder(orderId, bookId, orderPrice, orderAmount);

        return saveOrderDetail(orderDetail);
    }

    //find All
    public List<Order> findAll(){
        return orderDAO.findAll();
    }

    public String findPayId(int orderId){
        return orderDAO.findPayId(orderId);
    }
}
