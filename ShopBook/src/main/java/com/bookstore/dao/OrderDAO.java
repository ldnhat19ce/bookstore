package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.Order;
import com.bookstore.model.OrderDetail;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class OrderDAO {

    private Connection conn;

    public OrderDAO(){
        conn = ConnectionUtils.getConnection();
    }

    public int saveByUserId(Order order) throws SQLException {
        String sql = "INSERT INTO bookstore.order(user_id, pay_id, date_order) VALUES(?,?,?)";
        int id = 0;
        try{
            conn.setAutoCommit(false);
            PreparedStatement ptmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ptmt.setInt(1, order.getUserId());
            ptmt.setInt(2, order.getPayId());
            ptmt.setTimestamp(3, order.getDateOrder());
            ptmt.executeUpdate();

            ResultSet rs = ptmt.getGeneratedKeys();
            if(rs.next()){
                id = rs.getInt(1);
            }
            conn.commit();
            return id;
        }catch (Exception e){
            conn.rollback();
            e.printStackTrace();
        }
        return -1;
    }
    public int saveByKey(Order order){
        String sql = "INSERT INTO bookstore.order(key_id, pay_id, date_order) VALUES(?,?,?)";
        int id = 0;
        try{
            conn.setAutoCommit(false);
            PreparedStatement ptmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            ptmt.setString(1, order.getKeyId());
            ptmt.setInt(2, order.getPayId());
            ptmt.setTimestamp(3, order.getDateOrder());
            ptmt.executeUpdate();

            ResultSet rs = ptmt.getGeneratedKeys();
            if(rs.next()){
                id = rs.getInt(1);
            }
            conn.commit();
            return id;
        }catch (Exception e){
            try {
                conn.rollback();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            e.printStackTrace();
        }
        return -1;
    }

    public int saveOrderDetail(OrderDetail orderDetail){
        StringBuilder sql = new StringBuilder("INSERT INTO order_detail ");
        sql.append("(order_id, book_id, order_price, order_quantity)" );
        sql.append("VALUES(?,?,?,?)");
        int id = 0;
        try{
            conn.setAutoCommit(false);
            PreparedStatement ptmt = conn.prepareStatement(sql.toString(), Statement.RETURN_GENERATED_KEYS);
            ptmt.setInt(1, orderDetail.getOrderId());
            ptmt.setString(2, orderDetail.getBookInformation().getBookId());
            ptmt.setFloat(3, orderDetail.getOrderDetailPrice());
            ptmt.setInt(4, orderDetail.getOrderDetailAmount());
            ptmt.executeUpdate();

            ResultSet rs = ptmt.getGeneratedKeys();
            if(rs.next()){
                id = rs.getInt(1);
            }
            conn.commit();
            return id;
        }catch (Exception e){
            try {
                conn.rollback();
            } catch (SQLException throwables) {
                throwables.printStackTrace();
            }
            e.printStackTrace();
        }
        return -1;
    }

    public List<Order> findAll(){
        List<Order> orders = new ArrayList<>();
        String sql = "SELECT * FROM bookstore.order";
        try {
            PreparedStatement ptmt = conn.prepareStatement(sql);

            ResultSet rs = ptmt.executeQuery();
            while(rs.next()){
                Order order = new Order();
                order.setOrderId(rs.getInt("order_id"));
                order.setUserId(rs.getInt("user_id"));
                order.setKeyId(rs.getString("key_id"));
                order.setPayId(rs.getInt("pay_id"));
                order.setDateOrder(rs.getTimestamp("date_order"));

                orders.add(order);
            }
        }catch (SQLException e){
            e.printStackTrace();
        }
        return orders;
    }

    public String findPayId(int orderId){
        String sql = "SELECT * FROM bookstore.order o INNER JOIN pay_method p "+
                "on o.pay_id = p.pay_id WHERE o.order_id = ?";
        String payName = "";
        try {
            PreparedStatement ptmt = conn.prepareStatement(sql);
            ptmt.setInt(1, orderId);

            ResultSet rs = ptmt.executeQuery();
            if(rs.next()){
                payName = rs.getString("p.pay_name");
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return payName;
    }
}
