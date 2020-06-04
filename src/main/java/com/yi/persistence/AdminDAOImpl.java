package com.yi.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yi.domain.AdminVO;

@Repository
public class AdminDAOImpl implements AdminDAO {
	
	private static final String namespace = "mappers.AdminMapper.";

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void insert(AdminVO vo) throws Exception {
		sqlSession.insert(namespace + "createAdmin", vo);
	}

	@Override
	public AdminVO readAdmin(String id) throws Exception {
		return sqlSession.selectOne(namespace + "readAdmin", id);
	}

	@Override
	public List<AdminVO> list() throws Exception {
		return sqlSession.selectList(namespace + "list");
	}

	@Override
	public void update(AdminVO vo) throws Exception {
		sqlSession.update(namespace + "updateAdmin", vo);
	}

}
