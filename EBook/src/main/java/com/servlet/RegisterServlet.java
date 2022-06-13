	package com.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.UserDAOImpl;
import com.db.dbconnect;
import com.entity.User;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse res)
	{
		try
		{
			String Name = req.getParameter("name");
			String Email = req.getParameter("email");
			String PhoneNo = req.getParameter("phonenumber");
			String Password = req.getParameter("password");
			String check = req.getParameter("check");
			String User = "User";
			
			req.setAttribute("Name", Name);
			req.setAttribute("Email", Email);
			req.setAttribute("Password", Password);
			req.setAttribute("PhoneNo", PhoneNo);
			req.setAttribute("Type", User);
			RequestDispatcher rd= req.getRequestDispatcher("Database1.jsp");
			rd.forward(req, res);	
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
}
