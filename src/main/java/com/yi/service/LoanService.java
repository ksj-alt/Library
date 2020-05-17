package com.yi.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.LoanVO;
import com.yi.persistence.LoanDAO;

@Service
public class LoanService {
	
	@Autowired
	LoanDAO dao;
	
	public void create(LoanVO vo) throws Exception {
		dao.insert(vo);
	}
}
