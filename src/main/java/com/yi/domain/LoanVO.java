package com.yi.domain;

import java.util.Date;

public class LoanVO {
	private int loanno;
	private int userno;
	private int bookno;
	private Date rentdate;
	private Date returndate;

	public int getLoanno() {
		return loanno;
	}

	public void setLoanno(int loanno) {
		this.loanno = loanno;
	}

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

	public Date getRentdate() {
		return rentdate;
	}

	public void setRentdate(Date rentdate) {
		this.rentdate = rentdate;
	}

	public Date getReturndate() {
		return returndate;
	}

	public void setReturndate(Date returndate) {
		this.returndate = returndate;
	}

	@Override
	public String toString() {
		return "LoanVO [loanno=" + loanno + ", userno=" + userno + ", bookno=" + bookno + ", rentdate=" + rentdate
				+ ", returndate=" + returndate + "]";
	}

}
