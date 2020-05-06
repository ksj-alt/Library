package com.yi.persistence;

import java.util.List;

import com.yi.domain.MemberVO;

public interface MemberDAO {
	public void insert(MemberVO vo) throws Exception;
	public MemberVO readByNo(int userno) throws Exception;
	public List<MemberVO> list() throws Exception;
	public void update(MemberVO vo) throws Exception;
	public void delete(int userno) throws Exception;
}
