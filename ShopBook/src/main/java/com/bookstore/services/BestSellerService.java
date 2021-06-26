package com.bookstore.services;

import com.bookstore.dao.BestSellerDAO;
import com.bookstore.model.BestSeller;

import java.util.List;

public class BestSellerService {

    private BestSellerDAO bestSellerDAO;

    public BestSellerService() {
        bestSellerDAO = new BestSellerDAO();
    }

    public List<BestSeller> findAll(){
        return bestSellerDAO.findAll();
    }

    public List<BestSeller> subList(){
        List<BestSeller> bestSellers = findAll();

        List<BestSeller> sellers = bestSellers.subList(0, 6);
        return sellers;
    }
}
