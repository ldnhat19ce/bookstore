package com.bookstore.dao;

import com.bookstore.dao.util.ConnectionUtils;
import com.bookstore.model.BookInformationImage;
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

public class BookInfoImageDAO {
	
	private Connection conn;
	
	public BookInfoImageDAO() {
		conn = ConnectionUtils.getConnection();
	}
	
	//TODO: UPLOAD IMAGE
	public String upLoadBookImage(HttpServletRequest request, HttpServletResponse response, String bookId)
			throws ServletException, IOException {
		String test = "";
		ServletContext context = request.getSession().getServletContext();
		final String address = context.getRealPath("/bookinforimage/");

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
							save(fileName, bookId);
							test = "success";
						}

					} catch (Exception e) {
						// TODO Auto-generated catch block
						test = e.getMessage();
						System.out.println(test);
					}

				} else {
					test = "failed";
				}
			}

		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return test;
	}
	
	public int save(String bookImage, String bookId) {
		
		String sql = "insert into bookinformation_image(bookimage_name, bookinformation_id)"+" values(?,?)";
		int id = 0;
		try {
			conn.setAutoCommit(false);
			PreparedStatement ptmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			ptmt.setString(1, bookImage);
			ptmt.setString(2, bookId);
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
	
	public List<BookInformationImage> findById(String bookId){
		List<BookInformationImage> images = new ArrayList<>();
		
		String sql = "select bookimage_id, bookimage_name from bookinformation_image " +
				""+"where bookinformation_id = ?";
		
		try {
			PreparedStatement ptmt = conn.prepareStatement(sql);
			
			ptmt.setString(1, bookId);
			
			ResultSet rs = ptmt.executeQuery();
			
			while(rs.next()) {
				int bookImageId = rs.getInt("bookimage_id");
				String bookImageName = rs.getString("bookimage_name");
				images.add(new BookInformationImage(bookImageId, bookImageName));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return images;
	}

}
