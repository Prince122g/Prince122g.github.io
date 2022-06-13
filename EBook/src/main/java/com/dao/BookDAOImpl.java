package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.admin.BookDAO;
import com.db.dbconnect;
import com.entity.BookDtls;
public class BookDAOImpl implements BookDAO{

	
	private Connection conn;
	
	
	public BookDAOImpl(Connection conn) {
		super();
		this.conn = conn;
	}


	public boolean addBooks(BookDtls b) {
		try
		{
			conn = dbconnect.getConn();
			String query = "insert into BooksDetails(Bookname, Author, Price, BookCategory,Image) values(?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, b.getBookName());
			ps.setString(2, b.getAuthor());
			ps.setString(3, b.getPrice());
			ps.setString(4, b.getBookCateory());
			ps.setString(6, b.getImage());
			ps.executeUpdate();
			return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	public BookDtls getBookById(int Id) {
		BookDtls b=null;
		try {
			String sql="select * from BooksDetails where ID=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, Id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				b=new BookDtls();
				b.setId(rs.getInt(1));
				b.setBookName(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setPrice(rs.getString(4));
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}

}
