package com.yi.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.BookVO;
import com.yi.domain.LoanVO;
import com.yi.domain.MemberVO;
import com.yi.domain.PageMaker;
import com.yi.domain.SearchCriteria;
import com.yi.service.BookService;
import com.yi.service.LoanService;
import com.yi.service.MemberService;

@Controller
@RequestMapping("/loan/*")
public class LoanController {
	
	@Autowired
	BookService bservice;
	
	@Autowired
	MemberService mservice;
	
	@Autowired
	LoanService lservice;
	
	@RequestMapping(value="lending", method=RequestMethod.GET)
	public String lending(SearchCriteria cri, Model model) throws Exception {
		System.out.println("-----------------------"+ cri); 
		List<MemberVO> mlist = mservice.listSearchCriteria2(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(mservice.totalSearchCount(cri));
		
		model.addAttribute("cri", cri);
		model.addAttribute("mlist", mlist);
		model.addAttribute("pageMaker", pageMaker);
		
		return "/loan/lending";
	}
	
	@RequestMapping(value="lendingSelBook", method=RequestMethod.GET)
	public String lendingSelBook(SearchCriteria cri, Model model, int userno) throws Exception {
		List<BookVO> blist = bservice.listSearchCriteria2(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(bservice.totalSearchCount(cri));
		
		model.addAttribute("cri", cri);
		model.addAttribute("blist", blist);
		model.addAttribute("pageMaker", pageMaker);
		model.addAttribute("userno", userno);
		
		return "/loan/lendingSelBook";
	}
	
//	@RequestMapping(value="lendingSelBook", method=RequestMethod.POST)
//	public String lendingSelBookPost(LoanVO vo, BookVO bvo, SearchCriteria cri, Model model, int userno) throws Exception {
//		List<BookVO> blist = bservice.listSearchCriteria2(cri);
//		
//		PageMaker pageMaker = new PageMaker();
//		pageMaker.setCri(cri);
//		pageMaker.setTotalCount(bservice.totalSearchCount(cri));
//		
//		model.addAttribute("cri", cri);
//		model.addAttribute("blist", blist);
//		model.addAttribute("pageMaker", pageMaker);
//		model.addAttribute("userno", userno);
//		
//		return "/loan/lendingSelBook";
//	}
	
	@RequestMapping(value="lendCheck", method=RequestMethod.GET)
	public String lendCheck(Model model, int userno, int bookno) throws Exception {
		model.addAttribute("userno", userno);
		model.addAttribute("bookno", bookno);		
		
		return "/loan/lendCheck";
	}
	
	@RequestMapping(value="lendCheck", method=RequestMethod.POST)
	public String lendCheckPost(LoanVO vo, Model model, BookVO bvo, MemberVO mvo) throws Exception {
		lservice.create(vo);
		lservice.update(bvo);
		lservice.updateMember(mvo);
		
		model.addAttribute("userno", vo.getUserno());
		model.addAttribute("bookno", vo.getBookno());

		return "redirect:/loan/lendingSelBook";
	}
	
	@RequestMapping(value="returnbook", method=RequestMethod.GET)
	public String returnbook(SearchCriteria cri, Model model) throws Exception {
		System.out.println("-----------------------"+ cri); 
		List<MemberVO> mlist = mservice.listSearchCriteria2(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(mservice.totalSearchCount(cri));
		
		model.addAttribute("cri", cri);
		model.addAttribute("mlist", mlist);
		model.addAttribute("pageMaker", pageMaker);
		
		return "/loan/returnbook";
	}
	
	@RequestMapping(value="returnSelBook", method=RequestMethod.GET)
	public String returnSelBook(Model model, int userno) throws Exception {
		List<LoanVO> list = lservice.returnBookList(userno);
		
		model.addAttribute("list", list);
		model.addAttribute("userno", userno);
		
		return "/loan/returnSelBook";
	}
	
	@RequestMapping(value="returnCheck", method=RequestMethod.GET)
	public String returnCheck(Model model, int userno, int bookno) throws Exception {
		model.addAttribute("userno", userno);
		model.addAttribute("bookno", bookno);
		
		return "/loan/returnCheck";
	}
	
	@RequestMapping(value="returnCheck", method=RequestMethod.POST)
	public String returnCheckPost(Model model, BookVO bvo, LoanVO vo) throws Exception{
		vo.setReturndate(new Date());
		lservice.updateReturn(bvo);
		lservice.returnLoan(vo);
		
		model.addAttribute("userno", vo.getBookno());
		model.addAttribute("bookno", vo.getBookno());
		
		return "redirect:/loan/returnSelBook";
	}
}
