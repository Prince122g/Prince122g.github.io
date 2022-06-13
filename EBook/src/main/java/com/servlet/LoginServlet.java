package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.logindao;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String Email = request.getParameter("email");
		String Password = request.getParameter("password");
		HttpSession session = request.getSession();	
		PrintWriter out = response.getWriter();
		logindao Login = new logindao();
		if(Login.verify(Email,Password)) {	
			if(Login.getType(Email ,Password).equals("Admin"))
			{
				System.out.println("Verifying admin");
				session.setAttribute("Name", Login.getName(Email, Password));
				response.sendRedirect("home.jsp");
			}
			else if(Login.getType(Email, Password).equals("User"))
					{
				System.out.println("Verifying user");
				session.setAttribute("Name", Login.getName(Email, Password));
				response.sendRedirect("index1.jsp");
			}
		}		
		else {	
			session.setAttribute("failedMsg", "Email & Password Invalid");
			response.sendRedirect("login.jsp");
		}
}				
}
