package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.Order;
import com.bookstore.model.OrderDetail;
import com.bookstore.model.UserOrder;

import java.sql.*;

public class UserOrderDAO {

    private Connection conn;

    public UserOrderDAO() {
        conn = ConnectionUtils.getConnection();
    }

    public UserOrder findById(int orderId){
        StringBuilder sql = new StringBuilder("SELECT * FROM user_order WHERE order_id = ?");
        try {
            PreparedStatement ptmt = conn.prepareStatement(sql.toString());
            ptmt.setInt(1, orderId);
            ResultSet rs = ptmt.executeQuery();

            while (rs.next()){
                UserOrder userOrder = new UserOrder();
                Order order = new Order();
                order.setOrderId(orderId);
                userOrder.setOrder(order);
                userOrder.setName(rs.getString("name"));
                userOrder.setEmail(rs.getString("email"));
                userOrder.setAddress(rs.getString("address"));
                userOrder.setId(rs.getInt("id"));
                return userOrder;
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return null;
    }

    public int save(UserOrder userOrder){
        String sql = "INSERT INTO user_order(name, email, address, order_id) VALUES(?,?,?,?)";
        int id = 0;

        try {
            conn.setAutoCommit(false);
            PreparedStatement ptmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

            ptmt.setString(1, userOrder.getName());
            ptmt.setString(2, userOrder.getEmail());
            ptmt.setString(3, userOrder.getAddress());
            ptmt.setInt(4, userOrder.getOrder().getOrderId());

            ptmt.executeUpdate();

            ResultSet rs = ptmt.getGeneratedKeys();

            if(rs.next()){
                id = rs.getInt(1);
            }
            conn.commit();
            return id;
        } catch (SQLException throwables) {
            try {
                conn.rollback();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return -1;
    }
}
