package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BestSellerDAO {

    private Connection conn;

    public BestSellerDAO() {
        conn = ConnectionUtils.getConnection();
    }

    public List<BestSeller> findAll(){
        List<BestSeller> bestSellers = new ArrayList<>();
        String sql = "select * from book_information b inner join pulish p on b.pulish_id = p.pulish_id "
                + "inner join author a on b.author_id = a.author_id "
                + "inner join supplier s on b.supplier_id = s.supplier_id "
                + "inner join form f on b.form_id = f.form_id "
                + "inner join best_seller c on c.book_id = b.book_id";

        try {
            PreparedStatement ptmt = conn.prepareStatement(sql);

            ResultSet rs = ptmt.executeQuery();

            while(rs.next()){
                BestSeller bestSeller = new BestSeller();
                String bookId = rs.getString("b.book_id");
                String bookName = rs.getString("b.book_name");
                String bookContent = rs.getString("b.book_content");

                Date bookDate = rs.getDate("b.book_date");
                float bookWeight = rs.getFloat("b.book_weight");
                String bookSize = rs.getString("b.book_size");
                String mainImage = rs.getString("b.image_main");
                int numberPage = rs.getInt("b.numberpage");
                float bookPrice = rs.getFloat("b.book_price");
                int bookAmount = rs.getInt("b.book_amount");

                int supplierId = rs.getInt("s.supplier_id");
                String supplierName = rs.getString("s.supplier_name");
                Supplier supplier = new Supplier(supplierId, supplierName);

                int pulishId = rs.getInt("p.pulish_id");
                String pulishName = rs.getString("p.pulish_name");
                Pulish pulish = new Pulish(pulishId, pulishName);

                int formId = rs.getInt("f.form_id");
                String formName = rs.getString("f.form_name");
                Form form = new Form(formId, formName);

                int authorId = rs.getInt("a.author_id");
                String authorName = rs.getString("a.author_name");
                Author author = new Author(authorId, authorName);

                BookInformation bookInformation = new BookInformation(bookId, bookName,
                        bookContent, bookAmount, bookPrice, mainImage, bookDate, bookWeight,
                        bookSize, numberPage, author, form, pulish, supplier);
                bestSeller.setBookInformation(bookInformation);
                bestSellers.add(bestSeller);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return bestSellers;
    }
}
