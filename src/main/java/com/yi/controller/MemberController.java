package com.yi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.Criteria;
import com.yi.domain.MemberVO;
import com.yi.domain.PageMaker;
import com.yi.domain.SearchCriteria;
import com.yi.service.MemberService;

@Controller
public class MemberController {

	@Autowired
	MemberService service;
	
	@RequestMapping(value="/member/register", method=RequestMethod.GET)
	public String registerGet() {
		return "/member/register";
	}
	
	@RequestMapping(value="/member/register", method=RequestMethod.POST)
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
	
	@RequestMapping(value="member/read", method=RequestMethod.GET)
	public String read(int userno, Model model) throws Exception {
		MemberVO vo = service.readByNo(userno);
		model.addAttribute("member", vo);
		return "/member/read";
	}
	
	@RequestMapping(value="member/remove", method=RequestMethod.GET)
	public String remove(int userno) throws Exception{
		service.delete(userno);
		return "redirect:/member/list";
	}
	
	@RequestMapping(value="member/modify", method=RequestMethod.GET)
	public String modify(int userno, Model model) throws Exception {
		MemberVO vo = service.readByNo(userno);
		model.addAttribute("member", vo);
		return "/member/modify";
	}
	
	@RequestMapping(value="member/modify", method=RequestMethod.POST)
	public String update(MemberVO vo, Model model) throws Exception {
		service.update(vo);
		model.addAttribute("member", vo);
		return "/member/read";
	}
	
//	@RequestMapping(value="member/listPage", method=RequestMethod.GET)
//	public String listPage(Criteria cri, Model model) throws Exception {
//		List<MemberVO> list = service.listCriteria(cri);
//		
//		PageMaker pageMaker = new PageMaker();
//		pageMaker.setCri(cri);
//		pageMaker.setTotalCount(service.totalCount());
//		
//		model.addAttribute("list", list);
//		model.addAttribute("pageMaker", pageMaker);
//		
//		return "member/listPage";
//	}
	
	@RequestMapping(value="member/listPage", method=RequestMethod.GET)
	public String listPage(SearchCriteria cri, Model model) throws Exception {
		List<MemberVO> list = service.listSearchCriteria1(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.totalSearchCount(cri));
		
		model.addAttribute("cri", cri);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "member/listPage";
	}
	
	@RequestMapping(value="member/readPage", method=RequestMethod.GET)
	public String readPage(int userno, Criteria cri, Model model) throws Exception {
		MemberVO vo = service.readByNo(userno);
		model.addAttribute("member", vo);
		model.addAttribute("cri", cri);
		return "/member/readPage";
	}
	
	@RequestMapping(value="/member/removePage", method=RequestMethod.GET)
	public String removePage(int userno, Criteria cri, Model model) throws Exception {
		service.delete(userno);
		return "redirect:/member/listPage?page=" + cri.getPage();
	}
	
	@RequestMapping(value="/member/modifyPage", method=RequestMethod.GET)
	public String modifyPage(int userno, Criteria cri, Model model) throws Exception {
		MemberVO vo = service.readByNo(userno);
		model.addAttribute("member", vo);
		model.addAttribute("cri", cri); 
		return "/member/modifyPage";
	}
	
	@RequestMapping(value="/member/modifyPage", method=RequestMethod.POST)
	public String updatePage(MemberVO vo, Criteria cri, Model model) throws Exception {
		service.update(vo);
		model.addAttribute("member", vo);
		model.addAttribute("cri", cri);
		return "redirect:/member/readPage?userno=" + vo.getUserno() + "&page=" + cri.getPage();
	}
}
