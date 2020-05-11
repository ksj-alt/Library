package com.yi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.BookVO;
import com.yi.domain.MemberVO;
import com.yi.domain.PageMaker;
import com.yi.domain.SearchCriteria;
import com.yi.service.BookService;
import com.yi.service.MemberService;

@Controller
@RequestMapping("/loan/*")
public class LoanController {
	
	@Autowired
	BookService bservice;
	
	@Autowired
	MemberService mservice;
	
	@RequestMapping(value="lending", method=RequestMethod.GET)
	public String approval(SearchCriteria cri, Model model) throws Exception {
		System.out.println("-----------------------"+ cri); 
		List<MemberVO> mlist = mservice.listSearchCriteria(cri);
		
		model.addAttribute("cri", cri);
		model.addAttribute("mlist", mlist);
		
//		List<BookVO> blist = bservice.list();
//		model.addAttribute("blist", blist);
		
		return "/loan/lending";
	}
}
