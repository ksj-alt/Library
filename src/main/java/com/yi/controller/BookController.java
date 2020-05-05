package com.yi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.yi.domain.BookVO;
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
	
}
