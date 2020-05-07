package com.yi.persistence;

import java.util.List;

import com.yi.domain.BookVO;
import com.yi.domain.Criteria;

public interface BookDAO {
	public void insert(BookVO vo) throws Exception;
	public BookVO readByNo(int bookno) throws Exception;
	public List<BookVO> list() throws Exception;
	public void update(BookVO vo) throws Exception;
	public void delete(int bookno) throws Exception;
	
	public List<BookVO> listPage(int page) throws Exception;
	public List<BookVO> listCriteria(Criteria cri) throws Exception;
	public int totalCount() throws Exception;
}
