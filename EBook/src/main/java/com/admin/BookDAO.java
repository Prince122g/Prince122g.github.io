package com.admin;

import com.entity.BookDtls;

public interface BookDAO {
	
	public boolean addBooks(BookDtls b);
	public BookDtls getBookById(int Id);
	
}
