package com.yi.domain;

import java.util.ArrayList;
import java.util.Date;

public class BookVO {
	private int bookno;
	private String booktitle;
	private String author;
	private String publisher;
	private int price;
	private int page;
	private String bookintro;
	private String bookindex;
	private String authorintro;
	private String lend;
	private String lendnum;
	private ArrayList<String> files;
	private Date regdate;

	public int getBookno() {
		return bookno;
	}

	public void setBookno(int bookno) {
		this.bookno = bookno;
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

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
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

	public String getLend() {
		return lend;
	}

	public void setLend(String lend) {
		this.lend = lend;
	}

	public String getLendnum() {
		return lendnum;
	}

	public void setLendnum(String lendnum) {
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
		return "BookVO [bookno=" + bookno + ", booktitle=" + booktitle + ", author=" + author + ", publisher="
				+ publisher + ", price=" + price + ", page=" + page + ", bookintro=" + bookintro + ", bookindex="
				+ bookindex + ", authorintro=" + authorintro + ", lend=" + lend + ", lendnum=" + lendnum + ", files="
				+ files + ", regdate=" + regdate + "]";
	}

}
