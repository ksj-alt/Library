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
	public String lending(SearchCriteria cri, Model model) throws Exception {
		System.out.println("-----------------------"+ cri); 
		List<MemberVO> mlist = mservice.listSearchCriteria(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(mservice.totalSearchCount(cri));
		
		model.addAttribute("cri", cri);
		model.addAttribute("mlist", mlist);
		model.addAttribute("pageMaker", pageMaker);
				
		return "/loan/lending";
	}
	
	@RequestMapping(value="lendingSelBook", method=RequestMethod.GET)
	public String lendingSelBook(SearchCriteria cri, Model model) throws Exception {
		List<BookVO> blist = bservice.listSearchCriteria(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(bservice.totalSearchCount(cri));
		
		model.addAttribute("cri", cri);
		model.addAttribute("blist", blist);
		model.addAttribute("pageMaker", pageMaker);
		
		return "/loan/lendingSelBook";
	}
	
	@RequestMapping(value="returnbook", method=RequestMethod.GET)
	public String returnbook(SearchCriteria cri, Model model) throws Exception {
		List<MemberVO> mlist = mservice.listSearchCriteria(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(mservice.totalSearchCount(cri));
		
		model.addAttribute("cri", cri);
		model.addAttribute("mlist", mlist);
		model.addAttribute("pageMaker", pageMaker);
		
		return "/loan/returnbook";
	}
}
