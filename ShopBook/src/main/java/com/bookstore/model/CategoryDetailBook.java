package com.bookstore.model;

public class CategoryDetailBook {

    private int categoryDetailId;
    private int categoryId;
    private String categoryDetailName;
    private String getCategoryDetailCode;

    public int getCategoryDetailId() {
        return categoryDetailId;
    }

    public void setCategoryDetailId(int categoryDetailId) {
        this.categoryDetailId = categoryDetailId;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategoryDetailName() {
        return categoryDetailName;
    }

    public void setCategoryDetailName(String categoryDetailName) {
        this.categoryDetailName = categoryDetailName;
    }

    public String getGetCategoryDetailCode() {
        return getCategoryDetailCode;
    }

    public void setGetCategoryDetailCode(String getCategoryDetailCode) {
        this.getCategoryDetailCode = getCategoryDetailCode;
    }
}
