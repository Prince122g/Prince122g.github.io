package com.entity;

public class BookDtls {

	private int Id;
	private String BookName;
	private String Author;
	private String Price;
	private String BookCategory;
	private String Image;

	public BookDtls() {
		super();
	}

	public BookDtls(String BookName, String Author, String Price, String BookCategory, String Image) {
		super();
		this.BookName = BookName;
		this.Author = Author;
		this.Price = Price;
		this.BookCategory = BookCategory;
		this.Image = Image;
	}

	public int getId() {
		return Id;
	}

	public void setId(int Id) {
		this.Id = Id;
	}

	public String getBookName() {
		return BookName;
	}

	public void setBookName(String bookname) {
		this.BookName = bookname;
	}

	public String getAuthor() {
		return Author;
	}

	public void setAuthor(String author) {
		this.Author = author;
	}

	public String getPrice() {
		return Price;
	}

	public void setPrice(String price) {
		this.Price = price;
	}

	public String getBookCateory() {
		return BookCategory;
	}

	public void setBookCateory(String bookCategory) {
		this.BookCategory = bookCategory;
	}

	public String getImage() {
		return Image;
	}

	public void setImage(String image) {
		this.Image = image;
	}

	@Override
	public String toString() {
		return "BookDtls [bookId=" + Id + ", bookname=" + BookName + ", Author=" + Author + ", Price=" + Price
				+ ", BookCateory=" + BookCategory + ", Image=" + Image + "]";
	}

}
