package com.mbc.mjy_test0906.login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
public class LoginController {

	@Autowired
	SqlSession sqlSession;
	@RequestMapping(value = "/login")
	public String login1() {
		return "logininput";
	}
	
	@RequestMapping(value = "/loginsave", method = RequestMethod.POST)
	public String login2(HttpServletRequest request) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		LoginService ls = sqlSession.getMapper(LoginService.class);
		LoginDTO dto = ls.login1(id,pw);
		if(dto!=null) {
			HttpSession hs = request.getSession();
			hs.setAttribute("loginstate", true);
			hs.setAttribute("login10", dto);
			hs.setMaxInactiveInterval(1800);
			return "redirect:/main";
		}
		else {
			return "redirect:/login";
		}
	}
	@RequestMapping(value = "/logout")
	public String login3(HttpServletRequest request) {
		HttpSession hs = request.getSession();
		hs.setAttribute("loginstate", false);
		hs.removeAttribute("login10");
		return "redirect:/main";
	}
	
}
