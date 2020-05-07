package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.Criteria;
import com.yi.domain.MemberVO;
import com.yi.persistence.MemberDAO;

@Service
public class MemberService {
	
	@Autowired
	MemberDAO dao;
	
	public void create(MemberVO vo) throws Exception {
		dao.insert(vo);
	}
	
	public MemberVO readByNo(int userno) throws Exception {
		return dao.readByNo(userno);
	}
	
	public List<MemberVO> list() throws Exception {
		return dao.list();
	}
	
	public void update(MemberVO vo) throws Exception {
		dao.update(vo);
	}
	
	public void delete(int userno) throws Exception {
		dao.delete(userno);
	}
	
	public List<MemberVO> listCriteria(Criteria cri) throws Exception {
		return dao.listCriteria(cri);
	}
	
	public int totalCount() throws Exception {
		return dao.totalCount();
	}
}
