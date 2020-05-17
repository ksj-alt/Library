package com.yi.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.LoanVO;

@Repository
public class LoanDAOImpl implements LoanDAO {
	
	private static final String namespace = "mappers.LoanMapper.";
	
	@Autowired
	private SqlSession sqlSession; 

	@Override
	public void insert(LoanVO vo) throws Exception {
		sqlSession.insert(namespace + "createLoan", vo);
	}

}
