package com.basic.naverApi.serviceImpl;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Service;

import com.basic.naverApi.service.NaverService;
import com.basic.searchBlog.vo.SearchBlogVo;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service("NaverService")
public class NaverServiceImpl implements NaverService {

	private static String clientId = "RK8xxcu2ywx9mqjIDKlk";
	private static String clientSecret = "IsUhJac75h";

	// 0블로그
	@Override
	public SearchBlogVo searchBlog(String display, String keyword, String sort, String start) {

		String query = null;

		try {
			query = URLEncoder.encode(keyword, "UTF-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		String apiURL = null;

		apiURL = "https://openapi.naver.com/v1/search/blog?query=" + query;
		apiURL += "&display=" + display;
		apiURL += "&sort=" + sort;

		System.out.println("Naver ServiceImpl Blog URL= " + apiURL);

		Map<String, String> requestHeaders = new HashMap<String, String>();
		requestHeaders.put("X-Naver-Client-Id", clientId);
		requestHeaders.put("X-Naver-Client-Secret", clientSecret);
		requestHeaders.put("Content-Type", "application/json");

		// json response
		String responseBody = get(apiURL, requestHeaders);

		// json -> object
		ObjectMapper om = new ObjectMapper();
		SearchBlogVo vo = null;

		try {
			vo = om.readValue(responseBody, SearchBlogVo.class);
		} catch (JsonMappingException e) {

			e.printStackTrace();
		} catch (JsonProcessingException e) {

			e.printStackTrace();
		}

		return vo;
	}

	// * func * //
	private String get(String apiURL, Map<String, String> requestHeaders) {
		HttpURLConnection con = connect(apiURL);

		try {
			con.setRequestMethod("GET");
			for (Map.Entry<String, String> header : requestHeaders.entrySet()) {
				con.setRequestProperty(header.getKey(), header.getValue());
			}
			int responseCode = con.getResponseCode();
			if (responseCode == HttpURLConnection.HTTP_OK) {
				return readBody(con.getInputStream());
			} else {
				return readBody(con.getErrorStream());
			}
		} catch (IOException e) {
			throw new RuntimeException("API 요청과 응답 실피", e);
		} finally {
			con.disconnect();
		}

	}

	private String readBody(InputStream inputStream) {
		// TODO Auto-generated method stub
		return null;
	}

	private static HttpURLConnection connect(String apiURL) {
		try {
			URL url = new URL(apiURL);
			return (HttpURLConnection) url.openConnection();
		} catch (MalformedURLException e) {
			throw new RuntimeException("API URL이 잘못되었습니다. : " + apiURL, e);
		} catch (IOException e) {
			throw new RuntimeException("연결이 실패했습니다. : " + apiURL, e);
		}

	}

}
