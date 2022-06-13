package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.db.dbconnect;

public class logindao {
	String image;
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public static Connection connection;
	String imgFlNm=null;
	public boolean verify(String Email, String Password)
	{
		try
		{
			Connection conn = dbconnect.getConn();
			String query = "select * from Registration where Email=? and Password=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, Email);
			ps.setString(2, Password);
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				return true;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public String getType(String Email, String Password)
	{
		try
		{
			Connection conn = dbconnect.getConn();
			String query = "select * from Registration where Email=? and Password=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, Email);
			ps.setString(2, Password);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				String type =rs.getString("Type");
				return type;
			}
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	public String getName(String Email, String Password)
	{
		try
		{
			Connection conn = dbconnect.getConn();
			String query = "select * from Registration where Email=? and Password=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, Email);
			ps.setString(2, Password);
			ResultSet rs = ps.executeQuery();
			if(rs.next()) {
				String name = rs.getString("Name");
				return name;
			}
		}		
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return null;
	}
	
	public boolean ContactUs(String Name , String Email , String PhoneNo, String Message) {
		try {
		Connection conn = dbconnect.getConn();
		String query ="INSERT INTO contactus(Name,Email,PhoneNo,Message)VALUES(?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, Name);
		ps.setString(2, Email);
		ps.setString(3, PhoneNo);
		ps.setString(4, Message);
		ps.executeUpdate();
		return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean addBooks(String BookName , String Author , String Price , String BookCategory ,String Status, String ImageFileName) {
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook", "root", "");
			String sql = "insert into BooksDetails(BookName, Author, Price, BookCategory,Status,ImageFileName) values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, BookName);
			ps.setString(2, Author);
			ps.setString(3, Price);
			ps.setString(4, BookCategory);
			ps.setString(5, Status);
			ps.setString(6, ImageFileName);
			int row = ps.executeUpdate();
			if(row>0){
				System.out.println("Image Inserted");
			}else{
				System.out.println("Image Not Inserted");
			}
			
		}catch(ClassNotFoundException | SQLException e){
			System.out.println("Exception Cought: "+e.getMessage());
		}
		return false;
	}
	public boolean Update(String ID , String Textbox , String Select ) {
		try {
			Connection conn = dbconnect.getConn();
			String query="update BooksDetails set "+Select+"=? WHERE ID=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, Textbox);
			ps.setString(2, ID);
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public boolean BookRemove(String ID)
	{
		try
		{
			Connection conn = dbconnect.getConn();
			String query="delete from BooksDetails where ID=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, ID);
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public boolean Update2(String ID , String Textbox , String Select ) {
		try {
			Connection conn = dbconnect.getConn();
			String query="update Registration set "+Select+"=? WHERE ID=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, Textbox);
			ps.setString(2, ID);
			ps.executeUpdate();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public boolean SavedAddress(String Name , String Email , String PhoneNo, String City,String State,String Pincode, String Address,String Landmark) {
		try {
		Connection conn = dbconnect.getConn();
		String query ="INSERT INTO SavedAddress(Name,Email,PhoneNo,City,State,Pincode,Address,Landmark)VALUES(?,?,?,?,?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, Name);
		ps.setString(2, Email);
		ps.setString(3, PhoneNo);
		ps.setString(4, City);
		ps.setString(5, State);
		ps.setString(6, Pincode);
		ps.setString(7, Address);
		ps.setString(8, Pincode);
		ps.executeUpdate();
		return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
	public boolean PlacedOrder(String FullName  , String PhoneNo, String Email, String Address,String Landmark,String City, String State,String ZipCode,String PaymentType) {
		try {
		Connection conn = dbconnect.getConn();
		String query ="INSERT INTO PlacedOrder(FullName,PhoneNo,Email,Address,Landmark,City,State,ZipCode,PaymentType)VALUES(?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = conn.prepareStatement(query);
		ps.setString(1, FullName);
		ps.setString(2, PhoneNo);
		ps.setString(3, Email);
		ps.setString(4, Address);
		ps.setString(5, Landmark);
		ps.setString(6, City);
		ps.setString(7, State);
		ps.setString(8, ZipCode);
		ps.setString(9, PaymentType);
		ps.executeUpdate();
		return true;
		}catch(Exception e) {
			e.printStackTrace();
		}
		return false;
	}
}
