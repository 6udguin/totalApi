package com.basic.naverApi.service;

import com.basic.searchBlog.vo.SearchBlogVo;

public interface NaverService {
	
	// 블로그
	SearchBlogVo searchBlog(String display, String keyword, String sort, String start);

}
