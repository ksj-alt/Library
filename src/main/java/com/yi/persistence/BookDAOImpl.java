package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.BookVO;
import com.yi.domain.Criteria;

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
		return sqlSession.selectOne(namespace + "readBook", bookno);
	}

	@Override
	public List<BookVO> list() throws Exception {
		return sqlSession.selectList(namespace + "list");
	}

	@Override
	public void update(BookVO vo) throws Exception {
		sqlSession.update(namespace + "updateBook", vo);
	}
	
	@Override
	public void delete(int bookno) throws Exception {
		sqlSession.delete(namespace + "deleteBook", bookno);
	}
	
	@Override
	public List<BookVO> listPage(int page) throws Exception {
		if(page < 0) {
			page = 1;
		}
		page = (page -1) * 10;
		
		return sqlSession.selectList(namespace + "listPage", page);
	}

	@Override
	public List<BookVO> listCriteria(Criteria cri) throws Exception {
		return sqlSession.selectList(namespace + "listCriteria", cri);
	}

	@Override
	public int totalCount() throws Exception {
		return sqlSession.selectOne(namespace + "totalCount");
	}
	
	

}
