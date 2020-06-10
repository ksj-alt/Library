package com.yi.persistence;

import java.util.List;

import com.yi.domain.BookVO;
import com.yi.domain.Criteria;
import com.yi.domain.MemberVO;
import com.yi.domain.SearchCriteria;

public interface BookDAO {
	public void insert(BookVO vo) throws Exception;
	public BookVO readByNo(int bookno) throws Exception;
	public List<BookVO> list() throws Exception;
	public void update(BookVO vo) throws Exception;
	public void delete(int bookno) throws Exception;
	
	public List<BookVO> listPage(int page) throws Exception;
	public List<BookVO> listCriteria(Criteria cri) throws Exception;
	public int totalCount() throws Exception;
	
	public List<BookVO> listSearchCriteria(SearchCriteria cri) throws Exception;
	public List<BookVO> listSearchCriteria2(SearchCriteria cri) throws Exception;
	public int totalSearchCount(SearchCriteria cri) throws Exception;
	
	public void addAttach(String fullname) throws Exception;
	public BookVO readAndAttachByBookno(int bookno) throws Exception;
	public void removeAttach(String fullName) throws Exception;
	
	public List<BookVO> listBestTen() throws Exception;
	public List<MemberVO> listBestMember() throws Exception;
}
