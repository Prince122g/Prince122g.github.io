package com.admin;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.dao.logindao;
@MultipartConfig
@WebServlet("/addbooks")
public class BooksAdd extends HttpServlet {
    private static final long serialVersionUID = 1L;
	public BooksAdd() {
        super();
    }
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.getWriter().append("Served at: ").append(req.getContextPath());
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String BookName = req.getParameter("Bookname");
		String Author = req.getParameter("Author");
		String Price = req.getParameter("Price");
		String BookCategory = req.getParameter("BookCategory");
		String Status="Active";
		Part file = req.getPart("Image");
		String ImageFileName = file.getSubmittedFileName();	
		String uploadPath="/Users/prince/eclipse-workspace/EBook/src/main/webapp/Image/"+ImageFileName;
		try{
			FileOutputStream fos = new FileOutputStream(uploadPath);
			InputStream is = file.getInputStream();
			byte[] data = new byte[is.available()];
			is.read(data);
			fos.write(data);
			fos.close();
		}catch(IOException e){
			System.out.println("Exception Cought: "+e.getMessage());
		}
		logindao obj = new logindao();
		req.setAttribute("Bookname", BookName);
		req.setAttribute("Author", Author);
		req.setAttribute("Price", Price);
		req.setAttribute("BookCategory", BookCategory);
		req.setAttribute("Status", Status);
		req.setAttribute("Name", ImageFileName);
		String filename = (String)req.getAttribute("Name");
		HttpSession session = req.getSession();
		if (obj.addBooks(BookName, Author, Price, BookCategory,Status,ImageFileName)) {
			session.setAttribute("img", ImageFileName);
			session.setAttribute("SuccMsg", "Book Add Successfully");
			resp.sendRedirect("add_books.jsp");
			
		} else {
		session.setAttribute("failedMsg", "Some thing went wrong on server");
			resp.sendRedirect("add_books.jsp");
		}

	}

	}
