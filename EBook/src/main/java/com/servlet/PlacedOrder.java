package com.servlet;

import java.io.IOException;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.logindao;
@WebServlet("/Address")
public class PlacedOrder extends HttpServlet {
private static final long serialVersionUID = 1L;

public void doPost(HttpServletRequest req , HttpServletResponse res) throws ServletException, IOException {
	String FullName=req.getParameter("Name");
	String PhoneNo=req.getParameter("PhoneNo");
	String Email=req.getParameter("Email");
	String Address=req.getParameter("Address");
	String Landmark=req.getParameter("Landmark");
	String City=req.getParameter("City");
	String State=req.getParameter("State");
	String ZipCode=req.getParameter("ZipCode");
	String PaymentType=req.getParameter("PaymentType");
	logindao obj =new logindao();
	obj.PlacedOrder(FullName,PhoneNo,Email,Address,Landmark,City,State,ZipCode,PaymentType);	
	RequestDispatcher rd= req.getRequestDispatcher("Cart.jsp");
	rd.forward(req, res);	
	
}
}
