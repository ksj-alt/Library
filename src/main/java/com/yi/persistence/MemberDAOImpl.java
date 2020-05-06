package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	private static final String namespace = "mappers.MemberMapper.";
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insert(MemberVO vo) throws Exception {
		sqlSession.insert(namespace + "createMember", vo);

	}

	@Override
	public MemberVO readByNo(int userno) throws Exception {
		return sqlSession.selectOne(namespace + "readMember");
	}

	@Override
	public List<MemberVO> list() throws Exception {
		return sqlSession.selectList(namespace + "list");
	}

	@Override
	public void update(MemberVO vo) throws Exception {
		sqlSession.update(namespace + "updateMember", vo);  
	}

	@Override
	public void delete(int userno) throws Exception {
		sqlSession.delete(namespace + "deleteMember", userno);
	}

}
