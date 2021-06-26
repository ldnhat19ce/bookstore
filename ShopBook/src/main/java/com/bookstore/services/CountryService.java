package com.bookstore.services;

import com.bookstore.dao.CountryDAO;
import com.bookstore.model.Country;

public class CountryService {

    private CountryDAO countryDAO;

    public CountryService() {
        countryDAO = new CountryDAO();
    }

}
