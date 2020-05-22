package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.yi.domain.BookVO;
import com.yi.domain.Criteria;
import com.yi.domain.SearchCriteria;
import com.yi.persistence.BookDAO;

@Service
public class BookService {
	
	@Autowired
	BookDAO dao;
	
	@Transactional
	public void create(BookVO vo) throws Exception {
		dao.insert(vo);
		
		for(String file: vo.getFiles()) {
			dao.addAttach(file);
		}
	}
	
	public BookVO readByNo(int bookno) throws Exception {
		return dao.readAndAttachByBookno(bookno);
	}
	
	public List<BookVO> list() throws Exception {
		return dao.list();
	}
	
	public void update(BookVO vo) throws Exception {
		dao.update(vo);
	}
	
	public void delete(int bookno) throws Exception {
		dao.delete(bookno);
	}
	
	public List<BookVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}
	
	public int totalCount() throws Exception {
		return dao.totalCount();
	}
	
	public List<BookVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return dao.listSearchCriteria(cri);
	}
	
	public List<BookVO> listSearchCriteria2(SearchCriteria cri) throws Exception {
		return dao.listSearchCriteria2(cri);
	}
	
	public int totalSearchCount(SearchCriteria cri) throws Exception {
		return dao.totalSearchCount(cri);
	}
	
	public void removeAttach(String fullName) throws Exception {
		dao.removeAttach(fullName);
	}
}
