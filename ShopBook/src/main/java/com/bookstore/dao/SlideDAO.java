package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.FeatureCategories;
import com.bookstore.model.SlideBanner;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;


public class SlideDAO {

	private Connection conn;

	public SlideDAO() {
		conn = ConnectionUtils.getConnection();
	}

	public int saveSlide(String slideshowImage) {

		String sql = "insert into slideshow(slideshow_image) " + "values(?)";
		int id = 0;
		try {
			conn.setAutoCommit(false);
			PreparedStatement ptmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

			ptmt.setString(1, slideshowImage);

			ptmt.executeUpdate();

			ResultSet rs = ptmt.getGeneratedKeys();
			if(rs.next()){
				id = rs.getInt(1);
			}
			conn.commit();
			return id;
		} catch (Exception e) {
			// TODO: handle exception
			try {
				conn.rollback();
			} catch (SQLException throwables) {
				throwables.printStackTrace();
			}
		}
		return -1;
	}

	public String upLoadSlideImage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String test = "";
		ServletContext context = request.getSession().getServletContext();
		final String address = context.getRealPath("/slideImage/");

		final int MaxMemorySize = 1024 * 1024 * 3;

		final int MaxRequestSize = 1024 * 1024 * 50;

		// Check that we have a file upload request
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);

		if (!isMultipart) {
			test = "thiếu enctype: multipart/form-data";

		}

		// Create a factory for disk-based file items
		DiskFileItemFactory factory = new DiskFileItemFactory();

		// Set factory constraints
		factory.setSizeThreshold(MaxMemorySize);
		factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);

		// Set overall request size constraint
		upload.setSizeMax(MaxRequestSize);

		// Parse the request
		try {
			List<FileItem> items = upload.parseRequest(request);

			// Process the uploaded items
			Iterator<FileItem> iter = items.iterator();
			while (iter.hasNext()) {
				FileItem item = iter.next();

				if (!item.isFormField()) {

					String fileName = item.getName();

					// pathfile: vị trí mà chúng ta muốn upload file vào
					// gửi cho server

					String pathFile = address + File.separator + fileName;

					File uploadedFile = new File(pathFile);
					boolean kt = uploadedFile.exists();

					try {

						if (kt == true) {
							test = "file đã tồn tại";
						} else {
							item.write(uploadedFile);
							saveSlide(fileName);
							test = "success";
						}

					} catch (Exception e) {
						// TODO Auto-generated catch block
						test = e.getMessage();
					}

				} else {
					test = "failed";
				}
			}

		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			test = e.getMessage();
		}
		return test;
	}
	
	public List<SlideBanner> findAll(){
		List<SlideBanner> banner = new ArrayList<>();
		
		String sql = "select * from slideshow order by slideshow_id desc limit ?";
		
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ptmt.setInt(1, 3);
			
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next()) {
				String image = rs.getString("slideshow_image");
				
				banner.add(new SlideBanner(image));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return banner;
	}
	
	//TODO: Upload feature categories image
	public String upLoadFeatureImage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String test = "";
		ServletContext context = request.getSession().getServletContext();
		final String address = context.getRealPath("/feature/");

		final int MaxMemorySize = 1024 * 1024 * 3;

		final int MaxRequestSize = 1024 * 1024 * 50;

		// Check that we have a file upload request
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);

		if (!isMultipart) {
			test = "thiếu enctype: multipart/form-data";

		}

		// Create a factory for disk-based file items
		DiskFileItemFactory factory = new DiskFileItemFactory();

		// Set factory constraints
		factory.setSizeThreshold(MaxMemorySize);
		factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

		// Create a new file upload handler
		ServletFileUpload upload = new ServletFileUpload(factory);

		// Set overall request size constraint
		upload.setSizeMax(MaxRequestSize);

		// Parse the request
		try {
			List<FileItem> items = upload.parseRequest(request);

			// Process the uploaded items
			Iterator<FileItem> iter = items.iterator();
			while (iter.hasNext()) {
				FileItem item = iter.next();

				if (!item.isFormField()) {

					String fileName = item.getName();

					// pathfile: vị trí mà chúng ta muốn upload file vào
					// gửi cho server

					String pathFile = address + File.separator + fileName;
					System.out.printf(pathFile);

					File uploadedFile = new File(pathFile);
					boolean kt = uploadedFile.exists();

					try {

						if (kt == true) {
							test = "file đã tồn tại";
						} else {
							item.write(uploadedFile);
							saveFeature(fileName);
							test = "success";
						}

					} catch (Exception e) {
						// TODO Auto-generated catch block
						test = e.getMessage();
					}

				} else {
					test = "failed";
				}
			}

		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			test = e.getMessage();
		}
		return test;
	}
	
	public int saveFeature(String image) {
		
		String sql = "insert into feature_categories(feature_categories_image)" + " values(?)";
		int id = 0;
		try {
			conn.setAutoCommit(false);
			PreparedStatement ptmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			
			ptmt.setString(1, image);
			
			ptmt.executeUpdate();
			ResultSet rs = ptmt.getGeneratedKeys();
			if(rs.next()){
				id = rs.getInt(1);
			}
			conn.commit();
			return id;
		} catch (Exception e) {
			// TODO: handle exception
			try {
				conn.rollback();
			} catch (SQLException throwables) {
				throwables.printStackTrace();
			}
		}
		return -1;
	}
	
	public List<FeatureCategories> findAllFeature(){
		List<FeatureCategories> categories = new ArrayList<>();
		
		String sql = "select * from feature_categories order by feature_categories_id desc limit ?";
		
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ptmt.setInt(1, 4);
			
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next()) {
				
				String image = rs.getString("feature_categories_image");
				
				categories.add(new FeatureCategories(image));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return categories;
	}

}
