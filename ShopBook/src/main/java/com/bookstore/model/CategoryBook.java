package com.bookstore.model;

public class CategoryBook {
    private int categoryBookId;
    private String categoryName;
    private String categoryCode;

    public int getCategoryBookId() {
        return categoryBookId;
    }

    public void setCategoryBookId(int categoryBookId) {
        this.categoryBookId = categoryBookId;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public String getCategoryCode() {
        return categoryCode;
    }

    public void setCategoryCode(String categoryCode) {
        this.categoryCode = categoryCode;
    }
}
