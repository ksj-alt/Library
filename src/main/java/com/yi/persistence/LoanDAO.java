package com.yi.persistence;

import java.util.List;

import com.yi.domain.BookVO;
import com.yi.domain.LoanVO;
import com.yi.domain.MemberVO;

public interface LoanDAO {
	public void insert(LoanVO vo) throws Exception;
	public void update(BookVO vo) throws Exception;
	public void updateMember(MemberVO vo) throws Exception;
	public void updateReturn(BookVO vo) throws Exception;
	public void returnLoan(LoanVO vo) throws Exception;
	
	public List<BookVO> returnBookByUserno(int userno) throws Exception;
}
