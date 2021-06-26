package com.bookstore.services;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.dao.SlideDAO;
import com.bookstore.model.FeatureCategories;
import com.bookstore.model.SlideBanner;

public class SlideshowService {
	
	private SlideDAO slideDAO;
	
	
	public SlideshowService() {
		slideDAO = new SlideDAO();
	}
	
	public String upLoadSlideImage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		return slideDAO.upLoadSlideImage(request, response);
	}
	
	public List<SlideBanner> findAll(){
		
		return slideDAO.findAll();
	}
	
	public String uploadFeatureImage(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		return slideDAO.upLoadFeatureImage(request, response);
		
	}
	
	public List<FeatureCategories> findAllFeature(){
		
		return slideDAO.findAllFeature();
	}
	
	

}
