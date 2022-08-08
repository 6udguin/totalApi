package com.basic.naverApi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.basic.naverApi.service.NaverService;
import com.basic.searchBlog.vo.SearchBlogVo;

@RequestMapping("/Naver")
@Controller
public class NaverApiHomeController {
	
	@Autowired
	private NaverService naverService;
	
	//네이버 블로그 
	@RequestMapping("/BlogForm")
	public ModelAndView blogForm() {
		System.out.println("NaverApi Home Controller BlogForm() check");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("naver/BlogForm");
		return mv;
	}
	@RequestMapping("/Blog")
	public ModelAndView blog(String display, String keyword, String sort) {
		
		System.out.println("NaverApi Home Controller Blog() display="+display+", keyword="+keyword+", sort="+sort);
		String start = "1";
		SearchBlogVo vo = naverService.searchBlog(display, keyword,sort,start);
		
		ModelAndView mv = new ModelAndView();
		
		return mv;
	}
	
}
