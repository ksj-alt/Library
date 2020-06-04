package com.yi.domain;

import java.util.ArrayList;
import java.util.Date;

public class BookVO {
	private int bookno;
	private String category;
	private String isbn;
	private String booktitle;
	private String author;
	private String publisher;
	private int price;
	private int pages;
	private String bookintro;
	private String bookindex;
	private String authorintro;
	private String lend;
	private int lendnum;
	private ArrayList<String> files;
	private Date regdate;

	public int getBookno() {
		return bookno;
	}

	public void setBookno(int bookno) {
		this.bookno = bookno;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getIsbn() {
		return isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getBooktitle() {
		return booktitle;
	}

	public void setBooktitle(String booktitle) {
		this.booktitle = booktitle;
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

	public int getPages() {
		return pages;
	}

	public void setPages(int pages) {
		this.pages = pages;
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

	public String getLend() {
		return lend;
	}

	public void setLend(String lend) {
		this.lend = lend;
	}

	public int getLendnum() {
		return lendnum;
	}

	public void setLendnum(int lendnum) {
		this.lendnum = lendnum;
	}

	public ArrayList<String> getFiles() {
		return files;
	}

	public void setFiles(ArrayList<String> files) {
		this.files = files;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}

	@Override
	public String toString() {
		return "BookVO [bookno=" + bookno + ", category=" + category + ", isbn=" + isbn + ", booktitle=" + booktitle
				+ ", author=" + author + ", publisher=" + publisher + ", price=" + price + ", pages=" + pages
				+ ", bookintro=" + bookintro + ", bookindex=" + bookindex + ", authorintro=" + authorintro + ", lend="
				+ lend + ", lendnum=" + lendnum + ", files=" + files + ", regdate=" + regdate + "]";
	}

}
