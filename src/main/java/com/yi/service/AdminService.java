package com.yi.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yi.domain.AdminVO;
import com.yi.persistence.AdminDAO;

@Service
public class AdminService {
	
	@Autowired
	AdminDAO dao;
	
	public void create(AdminVO vo) throws Exception {
		dao.insert(vo);
	}
	
	public AdminVO readAdmin(String string) throws Exception {
		return dao.readAdmin(string);
	}
	
	public List<AdminVO> list() throws Exception {
		return dao.list();
	}
	
	public void update(AdminVO vo) throws Exception {
		dao.update(vo);
	}
}
