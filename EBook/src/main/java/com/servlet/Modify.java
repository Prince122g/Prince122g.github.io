package com.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.logindao;

@WebServlet("/Modify")
public class Modify extends HttpServlet {
	public void service(HttpServletRequest req , HttpServletResponse res) throws ServletException, IOException {
		
		String ID=req.getParameter("ID");
		String Textbox=req.getParameter("Textbox");
		String Select = req.getParameter("Select");
		logindao dao = new logindao();
		dao.Update(ID,Textbox,Select);
		RequestDispatcher rd= req.getRequestDispatcher("ModifyBook.jsp");
		rd.forward(req, res);	
	}

}
