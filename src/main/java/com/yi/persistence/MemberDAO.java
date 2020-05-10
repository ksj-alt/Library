package com.yi.persistence;

import java.util.List;

import com.yi.domain.Criteria;
import com.yi.domain.MemberVO;
import com.yi.domain.SearchCriteria;

public interface MemberDAO {
	public void insert(MemberVO vo) throws Exception;
	public MemberVO readByNo(int userno) throws Exception;
	public List<MemberVO> list() throws Exception;
	public void update(MemberVO vo) throws Exception;
	public void delete(int userno) throws Exception;
	
	public List<MemberVO> listPage(int page) throws Exception;
	public List<MemberVO> listCriteria(Criteria cri) throws Exception;
	public int totalCount() throws Exception;
	
	public List<MemberVO> listSearchCriteria(SearchCriteria cri) throws Exception;
//	public int totalSearchCount(SearchCriteria cri) throws Exception;
	
}
