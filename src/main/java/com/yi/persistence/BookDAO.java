package com.yi.persistence;

import java.util.List;

import com.yi.domain.BookVO;

public interface BookDAO {
	public void insert(BookVO vo) throws Exception;
	public BookVO readByNo(int bookno) throws Exception;
	public List<BookVO> list() throws Exception;
	public void delete(BookVO vo) throws Exception;
}
