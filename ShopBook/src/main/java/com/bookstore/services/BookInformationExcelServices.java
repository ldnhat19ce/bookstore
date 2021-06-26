package com.bookstore.services;

import com.bookstore.dao.BookInformationExcelDAO;
import com.bookstore.model.*;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.poifs.filesystem.POIFSFileSystem;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;

public class BookInformationExcelServices {

	private BookInformationExcelDAO bookInformationExcelDAO;

	public BookInformationExcelServices() {
		bookInformationExcelDAO = new BookInformationExcelDAO();
	}

	public void importExelBookInformation(String address) {

		try {
			FileInputStream fis = new FileInputStream(address);

			HSSFWorkbook wb = new HSSFWorkbook(new POIFSFileSystem(fis));

			Sheet sheet = wb.getSheetAt(0);

			for (int i = 1; i <= sheet.getLastRowNum(); i++) {
				Row row = sheet.getRow(i);

				String bookId = row.getCell(0).getStringCellValue();
				String bookName = row.getCell(1).getStringCellValue();
				String bookContent = row.getCell(2).getStringCellValue();
				int bookAmount =  (int) row.getCell(3).getNumericCellValue();
				float bookPrice = (float) row.getCell(4).getNumericCellValue();
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
				java.util.Date bookDate = row.getCell(5).getDateCellValue();
				String d1 = dateFormat.format(bookDate);
				Date date = Date.valueOf(d1);

				float bookWeight = (float) row.getCell(6).getNumericCellValue();
				String bookSize = row.getCell(7).getStringCellValue();
				int numberPage = (int) row.getCell(8).getNumericCellValue();
				int pulishId = (int) row.getCell(9).getNumericCellValue();
				int supplierId = (int) row.getCell(10).getNumericCellValue();
				int formId = (int) row.getCell(11).getNumericCellValue();
				int authorId = (int) row.getCell(12).getNumericCellValue();

				String encoder = URLEncoder.encode(bookName, "UTF-8");

				save(bookId, bookName, bookContent, bookAmount, bookPrice, date, bookWeight,
						bookSize, numberPage,
						pulishId, supplierId, formId, authorId);

			}
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
	}

	public String uploadFileExcelBook(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String test = "";
		ServletContext context = request.getSession().getServletContext();
		final String address = context.getRealPath("/excel_book/");

		final int MaxMemorySize = 1024 * 1024 * 3;// 3MB

		final int MaxRequestSize = 1024 * 1024 * 50;// 50MB

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
							try {
								importExelBookInformation(pathFile);
							} catch (NullPointerException e) {
								// TODO: handle exception
								test = e.getMessage();
							}
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

	public BookInformation create(String bookId, String bookName, String bookContent, int bookAmount,
			float bookPrice, Date bookDate, float bookWeight, String bookSize, int numberPage, int pulishId,
			int supplierId, int formId, int authorId) {
		try {
			Pulish pulish = new Pulish();
			pulish.setPulishId(pulishId);

			Supplier supplier = new Supplier();
			supplier.setSupplierId(supplierId);

			Form form = new Form();
			form.setFormId(formId);

			Author author = new Author();
			author.setAuthorId(authorId);

			BookInformation bookInformation = new BookInformation();
			bookInformation.setBookId(bookId);
			bookInformation.setBookName(bookName);
			bookInformation.setBookContent(bookContent);
			bookInformation.setBookAmount(bookAmount);
			bookInformation.setBookPrice(bookPrice);
			bookInformation.setBookDate(bookDate);
			bookInformation.setBookWeight(bookWeight);
			bookInformation.setBooksize(bookSize);
			bookInformation.setNumberPage(numberPage);
			bookInformation.setPulish(pulish);
			bookInformation.setSupplier(supplier);
			bookInformation.setForm(form);
			bookInformation.setAuthor(author);
			
			return bookInformation;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		return null;
	}

	public int save(String bookId, String bookName, String bookContent, int bookAmount, float bookPrice,
			Date bookDate, float bookWeight, String bookSize, int numberPage, int pulishId, int supplierId,
			int formId, int authorId) {

		BookInformation bookInformation = create(bookId, bookName, bookContent, bookAmount, bookPrice, bookDate,
				bookWeight, bookSize, numberPage, pulishId, supplierId, formId, authorId);

		return save(bookInformation);
	}

	public int save(BookInformation bookInformation) {
		return bookInformationExcelDAO.save(bookInformation);
	}

}
