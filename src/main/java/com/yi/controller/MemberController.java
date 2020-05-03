package com.yi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.MemberVO;
import com.yi.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService service;
	
	@RequestMapping(value="/member/register", method=RequestMethod.GET)
	public String registerGet() {
		return "/member/register";
	}
	
	public String registerPost(MemberVO vo) throws Exception {
		service.create(vo);
		
		return "redirect:/member/list";
	}
	
	@RequestMapping(value="member/list", method=RequestMethod.GET)
	public String list(Model model) throws Exception {
		List<MemberVO> list = service.list();
		model.addAttribute("list", list);
		return "/member/list";
	}
}
