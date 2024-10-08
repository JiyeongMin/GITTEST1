package com.mbc.mjy_test0906;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {
	
	@RequestMapping(value = "/")
	public String home(HttpServletRequest request) {	
		HttpSession hs = request.getSession();
		hs.setAttribute("loginstate", false);
		return "main";
	}
	@RequestMapping(value = "/main")
	public String home1() {
		
		
		return "main";
	}
	
}
