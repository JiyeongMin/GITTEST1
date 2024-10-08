package com.mbc.mjy_test0906.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mbc.mjy_test0906.member.MemberDTO;
import com.mbc.mjy_test0906.member.MemberService;

@Controller
public class MemberController {
	@Autowired
	SqlSession sqlSession;
	
	@RequestMapping(value = "/min")
	public String memberhome1() {
		
		return "memberinput";
				
	}//
	
	 @RequestMapping(value = "/membersave", method = RequestMethod.POST)
	   public String memberhome2(HttpServletRequest request) {
	      String id=request.getParameter("id");
	      String pw=request.getParameter("pw");
	      String name=request.getParameter("name");
	      String phone=request.getParameter("phone");
	      String sb=request.getParameter("sb");
	      String address=request.getParameter("address");
	      String hobby=request.getParameter("hobby");
	      String memo=request.getParameter("memo");
	      
	      MemberService ms = sqlSession.getMapper(MemberService.class);
	      ms.minsert(id,pw,name,phone,sb,address,hobby,memo);
	      
	      return "redirect:/";
	   }//
	
	 @RequestMapping(value = "/mout")
	   public String memberhome3(Model mo, HttpServletRequest request, HttpServletResponse response) throws IOException {
			HttpSession hs = request.getSession();
			boolean member = (Boolean)hs.getAttribute("loginstate");
			if(member) {
				MemberService ms = sqlSession.getMapper(MemberService.class);
				ArrayList<MemberDTO> memberlist = ms.mout();
				mo.addAttribute("memberlist",memberlist);
				return "memberout";
			}
			else {
				response.setContentType("text/html;charset=utf-8");
				PrintWriter pw = response.getWriter();
				pw.print("<script> alert('로그인 후 사용하세요')</script>");
				pw.print("<script> location.href='main'</script>");
				pw.close();
				return "redirect:/main";
			}
	   }//
	 
	 @ResponseBody //비동기식
	   @RequestMapping(value = "/idoverlapcheck2")
	   public String memberhome4(String id) {
	      MemberService ms = sqlSession.getMapper(MemberService.class);
	      int count = ms.idoverlapcheck(id);
	      if(count==0)
	      {
	         return "notduplicated";
	      }
	      else
	      {
	         return "no";
	      }
	      
	   }//
	
}