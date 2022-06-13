package com.servlet;

import java.io.IOException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.dao.logindao;
@WebServlet("/Delete")
public class DeleteBook extends HttpServlet{
	
	
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		String ID = request.getParameter("ID");
		logindao ld = new logindao();
		ld.BookRemove(ID);
		response.sendRedirect("DeleteBook.jsp");
		
	}

}
