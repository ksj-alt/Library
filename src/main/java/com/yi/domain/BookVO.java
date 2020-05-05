package com.yi.domain;

public class BookVO {
	private int bookno;
	private String bookname;
	private String author;
	private String publisher;
	private int price;
	private String page;
	private String bookintro;
	private String bookindex;
	private String authorintro;

	public int getBookno() {
		return bookno;
	}

	public void setBookno(int bookno) {
		this.bookno = bookno;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	public String getBookintro() {
		return bookintro;
	}

	public void setBookintro(String bookintro) {
		this.bookintro = bookintro;
	}

	public String getBookindex() {
		return bookindex;
	}

	public void setBookindex(String bookindex) {
		this.bookindex = bookindex;
	}

	public String getAuthorintro() {
		return authorintro;
	}

	public void setAuthorintro(String authorintro) {
		this.authorintro = authorintro;
	}

	@Override
	public String toString() {
		return "BookVO [bookno=" + bookno + ", bookname=" + bookname + ", author=" + author + ", publisher=" + publisher
				+ ", price=" + price + ", page=" + page + ", bookintro=" + bookintro + ", bookindex=" + bookindex
				+ ", authorintro=" + authorintro + "]";
	}

}