package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.BookInformation;
import com.bookstore.model.OrderDetail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrderDetailDAO {

    private Connection conn;

    public OrderDetailDAO() {
        conn = ConnectionUtils.getConnection();
    }

    public List<OrderDetail> findById(int orderId){
        List<OrderDetail> orderDetails = new ArrayList<>();
        StringBuilder sql = new StringBuilder("SELECT * FROM order_detail o INNER JOIN ");
        sql.append("book_information b on b.book_id = o.book_id ");
        sql.append("WHERE order_id = ?");

        try {
            PreparedStatement ptmt = conn.prepareStatement(sql.toString());
            ptmt.setInt(1, orderId);

            ResultSet rs = ptmt.executeQuery();

            while(rs.next()){
                OrderDetail orderDetail = new OrderDetail();
                BookInformation bookInformation = new BookInformation();
                bookInformation.setBookId(rs.getString("b.book_id"));
                bookInformation.setBookName(rs.getString("b.book_name"));
                orderDetail.setBookInformation(bookInformation);
                orderDetail.setOrderId(orderId);
                orderDetail.setOrderDetailPrice(rs.getFloat("o.order_price"));
                orderDetail.setOrderDetailAmount(rs.getInt("o.order_quantity"));

                orderDetails.add(orderDetail);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return orderDetails;
    }

}
