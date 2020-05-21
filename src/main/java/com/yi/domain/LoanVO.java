package com.yi.domain;

import java.util.Date;

public class LoanVO {
	private int userno;
	private int bookno;
	private Date lenddate;
	private Date returndate;
	private String status;
	private String booktitle;

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public int getBookno() {
		return bookno;
	}

	public void setBookno(int bookno) {
		this.bookno = bookno;
	}

	public Date getLenddate() {
		return lenddate;
	}

	public void setLenddate(Date lenddate) {
		this.lenddate = lenddate;
	}

	public Date getReturndate() {
		return returndate;
	}

	public void setReturndate(Date returndate) {
		this.returndate = returndate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getBooktitle() {
		return booktitle;
	}

	public void setBooktitle(String booktitle) {
		this.booktitle = booktitle;
	}

	@Override
	public String toString() {
		return "LoanVO [userno=" + userno + ", bookno=" + bookno + ", lenddate=" + lenddate + ", returndate="
				+ returndate + ", status=" + status + ", booktitle=" + booktitle + "]";
	}

}
