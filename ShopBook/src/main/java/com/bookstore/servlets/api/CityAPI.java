package com.bookstore.servlets.api;

import com.bookstore.model.Country;
import com.bookstore.services.CountryService;
import com.bookstore.utils.HttpUtil;
import org.codehaus.jackson.map.ObjectMapper;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/city-api"})
public class CityAPI extends HttpServlet {

    private CountryService countryService;

    //https://raw.githubusercontent.com/nganhtuan63/vietnam-provinces-cities-database/
    // master/vietnam_provinces_cities.json
    public CityAPI(){
        countryService = new CountryService();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ObjectMapper mapper = new ObjectMapper();

        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");

        Country country = HttpUtil.of(request.getReader()).toModel(Country.class);

        //countryService.save(country);

        mapper.writeValue(response.getOutputStream(), country);
    }
}
