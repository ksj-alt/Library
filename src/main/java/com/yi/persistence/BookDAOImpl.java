package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.BookVO;

@Repository
public class BookDAOImpl implements BookDAO {
	
	private static final String namespace = "mappers.BookMapper.";

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insert(BookVO vo) throws Exception {
		sqlSession.insert(namespace + "createBook", vo);
	}

	@Override
	public BookVO readByNo(int bookno) throws Exception {
		return sqlSession.selectOne(namespace + "readBook");
	}

	@Override
	public List<BookVO> list() throws Exception {
		return sqlSession.selectList(namespace + "list");
	}

	@Override
	public void delete(BookVO vo) throws Exception {
		sqlSession.delete(namespace + "deleteBook", vo);
	}

}
