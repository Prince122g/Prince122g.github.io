package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.logindao;
@WebServlet("/Contact")
public class Contact extends HttpServlet {
public void doPost(HttpServletRequest req , HttpServletResponse res) throws ServletException, IOException {
	String Name=req.getParameter("Name");
	String Email=req.getParameter("Email");
	String PhoneNo=req.getParameter("PhoneNo");
	String Message=req.getParameter("Message");
	logindao obj =new logindao();
	obj.ContactUs(Name, Email, PhoneNo, Message);
	RequestDispatcher rd= req.getRequestDispatcher("ContactUs.jsp");
	rd.forward(req, res);	
	
}
}
