package com.yi.persistence;

import java.util.List;

import com.yi.domain.AdminVO;

public interface AdminDAO {
	public void insert(AdminVO vo) throws Exception;
	public AdminVO readAdmin(String id) throws Exception;
	public List<AdminVO> list() throws Exception;
	public void update(AdminVO vo) throws Exception;
}
