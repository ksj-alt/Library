package com.yi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.BookVO;
import com.yi.domain.Criteria;
import com.yi.domain.PageMaker;
import com.yi.domain.SearchCriteria;
import com.yi.service.BookService;

@Controller
@RequestMapping("/book/*")
public class BookController {
	
	@Autowired
	BookService service;
	
	@RequestMapping(value="register", method=RequestMethod.GET)
	public String registerGet() {
		return "book/register";
	}
	
	@RequestMapping(value="register", method=RequestMethod.POST)
	public String registerPost(BookVO vo) throws Exception {
		service.create(vo);
		
		return "redirect:/book/list";
	}
	
	@RequestMapping(value="list", method=RequestMethod.GET)
	public String list(Model model) throws Exception {
		List<BookVO> list = service.list();
		model.addAttribute("list", list);
		return "/book/list";
	}
	
	@RequestMapping(value="read", method=RequestMethod.GET)
	public String read(int bookno, Model model) throws Exception {
		BookVO vo = service.readByNo(bookno);
		model.addAttribute("book", vo);
		return "/book/read";
	}
	
	@RequestMapping(value="remove", method=RequestMethod.GET)
	public String remove(int bookno) throws Exception {
		service.delete(bookno);
		return "redirect:/book/list";
	}
	
	@RequestMapping(value="modify", method=RequestMethod.GET)
	public String modify(int bookno, Model model) throws Exception {
		BookVO vo = service.readByNo(bookno);
		model.addAttribute("book", vo);
		return "/book/modify";
	}
	
	@RequestMapping(value="modify", method=RequestMethod.POST)
	public String update(BookVO vo, Model model) throws Exception {
		service.update(vo);
		model.addAttribute("book", vo);
		return "/book/read";
	}
	
//	@RequestMapping(value="listPage", method=RequestMethod.GET)
//	public String listPage(Criteria cri, Model model) throws Exception {
//		List<BookVO> list = service.listCriteria(cri);
//		
//		PageMaker pageMaker = new PageMaker();
//		pageMaker.setCri(cri);
//		pageMaker.setTotalCount(service.totalCount());
//		
//		model.addAttribute("list", list);
//		model.addAttribute("pageMaker", pageMaker);
//		
//		return "book/listPage";
//	}
	
	@RequestMapping(value="listPage", method=RequestMethod.GET)
	public String listPage(SearchCriteria cri, Model model) throws Exception {
		List<BookVO> list = service.listSearchCriteria(cri);
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.totalSearchCount(cri));
		
		model.addAttribute("cri", cri);
		model.addAttribute("list", list);
		model.addAttribute("pageMaker", pageMaker);
		
		return "book/listPage";
	}
	
	@RequestMapping(value="readPage", method=RequestMethod.GET)
	public String readPage(int bookno, Criteria cri, Model model) throws Exception {
		BookVO vo = service.readByNo(bookno);
		model.addAttribute("book", vo);
		model.addAttribute("cri", cri);
		return "/book/readPage";
	}
	
	@RequestMapping(value="removePage", method=RequestMethod.GET)
	public String removePage(int bookno, Criteria cri, Model model) throws Exception {
		service.delete(bookno);
		return "redirect:/book/listPage?page=" + cri.getPage();
	}
	
	@RequestMapping(value="modifyPage", method=RequestMethod.GET)
	public String modifyPage(int bookno, Criteria cri, Model model) throws Exception {
		BookVO vo = service.readByNo(bookno);
		model.addAttribute("book", vo);
		model.addAttribute("cri", cri);
		return "/book/modifyPage";
	}
	
	@RequestMapping(value="modifyPage", method=RequestMethod.POST)
	public String updatePage(BookVO vo, Criteria cri, Model model) throws Exception {
		service.update(vo);
		model.addAttribute("book", vo);
		model.addAttribute("cri", cri);
		return "redirect:/book/readPage?bookno="+vo.getBookno() + "&page=" + cri.getPage();
	}

}
