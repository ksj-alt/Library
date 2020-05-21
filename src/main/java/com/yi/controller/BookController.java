package com.yi.controller;

import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.yi.domain.BookVO;
import com.yi.domain.PageMaker;
import com.yi.domain.SearchCriteria;
import com.yi.service.BookService;
import com.yi.util.UploadFileUtils;

@Controller
@RequestMapping("/book/*")
public class BookController {
	
	@Autowired
	BookService service;
	
	@Resource(name="uploadPath")
	String uploadPath;
	
	@RequestMapping(value="register", method=RequestMethod.GET)
	public String registerGet() {
		return "book/register";
	}
	
	@RequestMapping(value="register", method=RequestMethod.POST)
	public String registerPost(BookVO vo, List<MultipartFile> imageFiles) throws Exception {
		System.out.println("register POST --------" + vo);
		
		ArrayList<String> fullNames = new ArrayList<String>();
		for(MultipartFile file : imageFiles) {
			System.out.println(file.getOriginalFilename());
			System.out.println(file.getSize());
		
			//upload처리
			String savedName = UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes());
			
			fullNames.add(savedName);
		
		}
		vo.setFiles(fullNames);
		
		service.create(vo);
		
		return "redirect:/book/listPage";
	}
	
//	@RequestMapping(value="list", method=RequestMethod.GET)
//	public String list(Model model) throws Exception {
//		List<BookVO> list = service.list();
//		model.addAttribute("list", list);
//		return "/book/list";
//	}
//	
//	@RequestMapping(value="read", method=RequestMethod.GET)
//	public String read(int bookno, Model model) throws Exception {
//		BookVO vo = service.readByNo(bookno);
//		model.addAttribute("book", vo);
//		return "/book/read";
//	}
//	
//	@RequestMapping(value="remove", method=RequestMethod.GET)
//	public String remove(int bookno) throws Exception {
//		service.delete(bookno);
//		return "redirect:/book/list";
//	}
//	
//	@RequestMapping(value="modify", method=RequestMethod.GET)
//	public String modify(int bookno, Model model) throws Exception {
//		BookVO vo = service.readByNo(bookno);
//		model.addAttribute("book", vo);
//		return "/book/modify";
//	}
//	
//	@RequestMapping(value="modify", method=RequestMethod.POST)
//	public String update(BookVO vo, Model model) throws Exception {
//		service.update(vo);
//		model.addAttribute("book", vo);
//		return "/book/read";
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
	public String readPage(int bookno, SearchCriteria cri, Model model) throws Exception {
		BookVO vo = service.readByNo(bookno);
		model.addAttribute("book", vo);
		model.addAttribute("cri", cri);
		model.addAttribute("lend", vo.getLend());
		model.addAttribute("booktitle", vo.getBooktitle());
		return "/book/readPage";
	}
	
	@RequestMapping(value="removePage", method=RequestMethod.GET)
	public String removePage(int bookno, SearchCriteria cri, Model model) throws Exception {
		service.delete(bookno);
		model.addAttribute("page", cri.getPage());
		model.addAttribute("searchType", cri.getSearchType());
		model.addAttribute("keyword", cri.getKeyword());
		return "redirect:/book/listPage";
	}
	
	@RequestMapping(value="modifyPage", method=RequestMethod.GET)
	public String modifyPage(int bookno, SearchCriteria cri, Model model) throws Exception {
		BookVO vo = service.readByNo(bookno);
		model.addAttribute("book", vo);
		model.addAttribute("cri", cri);
		return "/book/modifyPage";
	}
	
	@RequestMapping(value="modifyPage", method=RequestMethod.POST)
	public String updatePage(BookVO vo, SearchCriteria cri, Model model) throws Exception {
		service.update(vo);
		model.addAttribute("book", vo);
		model.addAttribute("cri", cri);
		model.addAttribute("keyword", cri.getKeyword());
		return "redirect:/book/readPage?bookno="+vo.getBookno() + "&page=" + cri.getPage() + "&searchType=" + cri.getSearchType();
	}

	@ResponseBody
	@RequestMapping(value="displayFile", method=RequestMethod.GET)
	public ResponseEntity<byte[]> displayFile(String filename){
		ResponseEntity<byte[]> entity = null;
		
		InputStream in = null;
		try {
			in = new FileInputStream(uploadPath+filename);
			
			String format = filename.substring(filename.lastIndexOf(".")+1);
			MediaType mType = null;
			if (format.equalsIgnoreCase("png")) {
				mType = MediaType.IMAGE_PNG;
			}else if(format.equalsIgnoreCase("jpg") || format.equalsIgnoreCase("jpeg")) {
				mType = MediaType.IMAGE_JPEG;
			}else if(format.equalsIgnoreCase("gif")) {
				mType = MediaType.IMAGE_GIF;
			}
			
			HttpHeaders headers = new HttpHeaders();
			headers.setContentType(mType);
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.OK);
			in.close();
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
}
