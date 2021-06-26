package com.bookstore.model;

import java.sql.Date;

public class BestSeller {

    private int id;
    private BookInformation bookInformation;
    private int amount;
    private Date time;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public BookInformation getBookInformation() {
        return bookInformation;
    }

    public void setBookInformation(BookInformation bookInformation) {
        this.bookInformation = bookInformation;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }
}
