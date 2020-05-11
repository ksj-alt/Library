package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.BookVO;
import com.yi.domain.Criteria;
import com.yi.domain.MemberVO;
import com.yi.domain.SearchCriteria;

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
		return sqlSession.selectOne(namespace + "readMember", userno);
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

	@Override
	public List<MemberVO> listPage(int page) throws Exception {
		if(page < 0) {
			page = 1;
		}
		page = (page -1) * 10;
		
		return sqlSession.selectList(namespace + "listPage", page);
	}

	@Override
	public List<MemberVO> listCriteria(Criteria cri) throws Exception {
		return sqlSession.selectList(namespace + "listCriteria", cri);
	}

	@Override
	public int totalCount() throws Exception {
		return sqlSession.selectOne(namespace + "totalCount");
	}

	@Override
	public List<MemberVO> listSearchCriteria(SearchCriteria cri) throws Exception {
		return sqlSession.selectList(namespace + "listSearchCriteria", cri);
	}

//	@Override
//	public int totalSearchCount(SearchCriteria cri) throws Exception {
//		return sqlSession.selectOne(namespace + "totalSearchCount", cri);
//	}

}
