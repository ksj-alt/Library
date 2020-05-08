package com.yi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.BookVO;
import com.yi.domain.MemberVO;
import com.yi.service.BookService;
import com.yi.service.MemberService;

@Controller
@RequestMapping("/loan/*")
public class LoanController {
	
	@Autowired
	BookService bservice;
	
	@Autowired
	MemberService mservice;
	
	@RequestMapping(value="approval", method=RequestMethod.GET)
	public String approval(Model model) throws Exception {
		List<BookVO> blist = bservice.list();
		model.addAttribute("blist", blist);
		
		List<MemberVO> mlist = mservice.list();
		model.addAttribute("mlist", mlist);
		return "/loan/approval";
	}
}
