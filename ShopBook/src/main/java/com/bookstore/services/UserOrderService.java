package com.bookstore.services;

import com.bookstore.dao.UserOrderDAO;
import com.bookstore.model.Order;
import com.bookstore.model.UserOrder;

public class UserOrderService {

    private UserOrderDAO userOrderDAO;

    public UserOrderService(){
        userOrderDAO = new UserOrderDAO();
    }

    public int save(UserOrder userOrder){
        return userOrderDAO.save(userOrder);
    }

    public UserOrder create(String name, String email, String address, String orderId){
        UserOrder userOrder = new UserOrder();
        userOrder.setName(name);
        userOrder.setEmail(email);
        userOrder.setAddress(address);
        Order order = new Order();
        order.setOrderId(Integer.parseInt(orderId));
        userOrder.setOrder(order);

        return userOrder;
    }

    public int save(String name, String email, String address, String orderId){
        UserOrder userOrder = create(name, email, address, orderId);

        return save(userOrder);
    }

    public UserOrder findById(int orderId){
        return userOrderDAO.findById(orderId);
    }
}
