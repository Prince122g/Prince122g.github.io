package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.logindao;
@WebServlet("/SavedAddress")
public class SavedAddress extends HttpServlet {
private static final long serialVersionUID = 1L;

public void doPost(HttpServletRequest req , HttpServletResponse res) throws ServletException, IOException {
	String Name=req.getParameter("Name");
	String Email=req.getParameter("Email");
	String PhoneNo=req.getParameter("PhoneNo");
	String City=req.getParameter("City");
	String State=req.getParameter("State");
	String Pincode=req.getParameter("Pincode");
	String Address=req.getParameter("Address");
	String Landmark=req.getParameter("Landmark");
	logindao obj =new logindao();
	obj.SavedAddress(Name, Email, PhoneNo, City , State,Pincode,Address,Landmark);
	RequestDispatcher rd= req.getRequestDispatcher("Saved_Address.jsp");
	rd.forward(req, res);	
	
}
}
