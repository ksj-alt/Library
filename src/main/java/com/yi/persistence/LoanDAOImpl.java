package com.yi.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.BookVO;
import com.yi.domain.LoanVO;
import com.yi.domain.MemberVO;

@Repository
public class LoanDAOImpl implements LoanDAO {
	
	private static final String namespace = "mappers.LoanMapper.";
	
	@Autowired
	private SqlSession sqlSession; 

	@Override
	public void insert(LoanVO vo) throws Exception {
		sqlSession.insert(namespace + "createLoan", vo);
	}

	@Override
	public void update(BookVO vo) throws Exception {
		sqlSession.update(namespace + "updateLend", vo);		
	}

	@Override
	public void updateMember(MemberVO vo) throws Exception {
		sqlSession.update(namespace + "updateMember", vo);		
	}

	@Override
	public void updateReturn(BookVO vo) throws Exception {
		sqlSession.update(namespace + "updateReturn", vo);
	}

	@Override
	public void returnLoan(LoanVO vo) throws Exception {
		sqlSession.update(namespace + "returnLoan", vo);
	}

}
