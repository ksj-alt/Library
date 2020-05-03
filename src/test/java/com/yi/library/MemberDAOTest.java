package com.yi.library;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yi.domain.MemberVO;
import com.yi.persistence.MemberDAO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class MemberDAOTest {
	
	@Autowired
	private MemberDAO dao;
	
	@Test
	public void testDAO() {
		System.out.println(dao);
	}
	
//	@Test
	public void testInsert() throws Exception {
		MemberVO vo = new MemberVO();
		vo.setUsername("권수진");
		vo.setBirthday("19940524");
		vo.setPhone("01033998254");
		dao.insert(vo);
	}
	
//	@Test
	public void testSelectByNo() throws Exception {
		dao.readByNo(1);
	}
	
//	@Test
	public void testList() throws Exception {
		dao.list();
	}
	
	@Test
	public void testUpdate() throws Exception {
		MemberVO vo = new MemberVO();
		vo.setUserno(1);
		vo.setPhone("010-3399-8254");
		vo.setEmail("test@naver.com");
		dao.update(vo);
	}
}
