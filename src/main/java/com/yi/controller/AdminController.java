package com.yi.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.AdminVO;
import com.yi.service.AdminService;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService service;
	
	@RequestMapping(value="login", method=RequestMethod.GET)
	public String loginGet() {
		return "login/loginForm";
	}
	
	@RequestMapping(value="login", method=RequestMethod.POST)
	public String loginPost(AdminVO vo, Model model, HttpSession session) throws Exception {
		AdminVO dbVO = service.readAdmin(vo.getId());
		if(dbVO == null) {
			model.addAttribute("error", "ID가 일치하지 않습니다.");
			return "login/loginForm";
		}else if(dbVO.getPw().equals(vo.getPw()) == false) {
			model.addAttribute("error", "비밀번호가 일치하지 않습니다.");
			return "login/loginForm";
		}
		
		session.setAttribute("Name", dbVO.getName()); 
		session.setAttribute("Auth", vo.getId());
		session.setAttribute("Email", dbVO.getEmail());
		
		return "redirect:/main";
	}
	
	@RequestMapping(value="logout", method=RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		
		return "redirect:/login";
	}
}
