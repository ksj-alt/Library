package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.BookVO;
import com.yi.domain.LoanVO;
import com.yi.domain.MemberVO;
import com.yi.persistence.LoanDAO;

@Service
public class LoanService {
	
	@Autowired
	LoanDAO dao;
	
	public void create(LoanVO vo) throws Exception {
		dao.insert(vo);
	}
	
	public void update(BookVO vo) throws Exception {
		dao.update(vo);
	}
	
	public void updateMember(MemberVO vo) throws Exception {
		dao.updateMember(vo);
	}
	
	public void updateReturn(BookVO vo) throws Exception {
		dao.updateReturn(vo);
	}
	
	public void returnLoan(LoanVO vo) throws Exception {
		dao.returnLoan(vo);
	}
	
	public List<BookVO> returnBookByUserno(int userno) throws Exception {
		return dao.returnBookByUserno(userno);
	}
}
