package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.BookVO;
import com.yi.persistence.BookDAO;

@Service
public class BookService {
	
	@Autowired
	BookDAO dao;
	
	public void create(BookVO vo) throws Exception {
		dao.insert(vo);
	}
	
	public BookVO readByNo(int bookno) throws Exception {
		return dao.readByNo(bookno);
	}
	
	public List<BookVO> list() throws Exception {
		return dao.list();
	}
	
	public void delete(BookVO vo) throws Exception {
		dao.delete(vo);
	}
}
