package com.bookstore.services;

import com.bookstore.dao.CategoryBookDAO;
import com.bookstore.dao.CategoryDetailBookDAO;
import com.bookstore.model.BookInformation;
import com.bookstore.model.CategoryBook;
import com.bookstore.model.CategoryDetailBook;

import java.util.ArrayList;
import java.util.List;

public class CategoryBookService {

    private CategoryBookDAO categoryBookDAO;
    private CategoryDetailBookDAO categoryDetailBookDAO;

    public CategoryBookService() {
        categoryBookDAO = new CategoryBookDAO();
        categoryDetailBookDAO = new CategoryDetailBookDAO();
    }

    public List<CategoryBook> findAll(){
        return categoryBookDAO.findAll();
    }

    public List<List<CategoryDetailBook>> getCategoryCode(){
        List<CategoryBook> categoryBooks = findAll();
        List<CategoryDetailBook> categoryDetailBooks = null;
        List<List<CategoryDetailBook>> lists = new ArrayList<>();

        for(CategoryBook categoryBook : categoryBooks){
            categoryDetailBooks = categoryDetailBookDAO.findByCategoryId(categoryBook.getCategoryBookId());
            lists.add(categoryDetailBooks);
        }

        return lists;
    }

    public List<BookInformation> findByCategory(int categoryId){
        return categoryBookDAO.findByCategoryId(categoryId);
    }

    public BookInformation findOne(int categoryId){
        List<BookInformation> bookInformations = findByCategory(categoryId);

       BookInformation bookInformation;
       bookInformation = bookInformations.get(0);

       return bookInformation;
    }

    public List<BookInformation> subList(int categoryId){
        List<BookInformation> bookInformations = findByCategory(categoryId);

        List<BookInformation> informations = bookInformations.subList(1,5);
        return informations;
    }
}
