package com.mbc.mjy_test0906.book;

import java.io.File;
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
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Controller
public class BookController {
	String path="C:\\MBC6\\spring\\day9_test\\src\\main\\webapp\\image";
	@Autowired
	SqlSession sqlSession;
	@RequestMapping(value = "/bin")
	public String book1() {
		return "bookinput";
	}
	@RequestMapping(value = "/booksave" , method = RequestMethod.POST)
	public String book2(MultipartHttpServletRequest mul) throws IllegalStateException, IOException {
	String bookname = mul.getParameter("bookname");
	String writer = mul.getParameter("writer");
	String bookcompany = mul.getParameter("bookcompany");
	int price = Integer.parseInt(mul.getParameter("price"));
	String bookdate = mul.getParameter("bookdate");
	String content = mul.getParameter("content");
	MultipartFile fm=mul.getFile("cover");
	String fname = fm.getOriginalFilename();
	fm.transferTo(new File(path+"\\"+fname));
	BookService bs = sqlSession.getMapper(BookService.class);
	bs.insertb(bookname,writer,bookcompany,price,bookdate,content,fname);
		return "redirect:/";
	}
	@RequestMapping(value = "/bookout")
	public String book3(Model mo , HttpServletRequest request, HttpServletResponse response) throws IOException {
		HttpSession hs = request.getSession();
		boolean member = (Boolean)hs.getAttribute("loginstate");
		if(member) {
			BookService bs = sqlSession.getMapper(BookService.class);
			ArrayList<BookDTO>list = bs.bout();
			mo.addAttribute("list",list);
			return "bookout";
		}
		else {
			response.setContentType("text/html;charset=utf-8");
			PrintWriter pw = response.getWriter();
			pw.print("<script> alert('로그인 후 사용하세요')</script>");
			pw.print("<script> location.href='main'</script>");
			pw.close();
			return "redirect:/main";
		}
		
	}///
	
	@RequestMapping(value = "/detail")
	public String book4(Model mo , HttpServletRequest request) {
		int number = Integer.parseInt(request.getParameter("number"));
		BookService bs = sqlSession.getMapper(BookService.class);
		BookDTO dto = bs.bdetail(number);
		mo.addAttribute("dto",dto);
		bs.readcnt(number);
		
		return "detailview";
	}
	
	private void readcnt(int number) {
		// TODO Auto-generated method stub
		
	}
	@RequestMapping(value = "/delete")
	public String book5(Model mo , HttpServletRequest request) {
		int number = Integer.parseInt(request.getParameter("number"));
		BookService bs = sqlSession.getMapper(BookService.class);
		ArrayList<BookDTO>list= bs.delete(number);
		mo.addAttribute("list",list);
	
		return "deleteview";
	}
	
	@RequestMapping(value = "/delete2")
	public String book6(Model mo , HttpServletRequest request) {
		int number2 = Integer.parseInt(request.getParameter("booknumber"));
		BookService bs = sqlSession.getMapper(BookService.class);
		bs.delete2(number2);
		
		return "redirect:/bookout";
	}
	
	@RequestMapping(value = "/update")
	public String book7(Model mo , HttpServletRequest request) {
		int number = Integer.parseInt(request.getParameter("number"));
		BookService bs = sqlSession.getMapper(BookService.class);
		ArrayList<BookDTO>list =bs.update1(number);
		mo.addAttribute("list",list);
		
		return "updateview";
	}
	@RequestMapping(value = "/update2",method = RequestMethod.POST)
	public String book8(Model mo , MultipartHttpServletRequest mul) throws IllegalStateException, IOException {
		int number = Integer.parseInt(mul.getParameter("booknumber"));
		String bookname = mul.getParameter("bookname");
		String writer = mul.getParameter("writer");
		String bookcompany = mul.getParameter("bookcompany");
		int price = Integer.parseInt(mul.getParameter("price"));
		String bookdate = mul.getParameter("bookdate");
		String content = mul.getParameter("content");
		MultipartFile fm=mul.getFile("cover");
		String fname = fm.getOriginalFilename();
		fm.transferTo(new File(path+"\\"+fname));
		BookService bs = sqlSession.getMapper(BookService.class);
		bs.update2(number,bookname,writer,bookcompany,price,bookdate,content,fname);
		
		return "main";
	}
	@RequestMapping(value = "/search")
	public String book9() {
		return "search";
	}
	@RequestMapping(value = "/searchsave")
	public String book10(HttpServletRequest request,Model mo) {
		String key=request.getParameter("key");
		String svalue=request.getParameter("svalue");
		BookService bs = sqlSession.getMapper(BookService.class);
		
		ArrayList<BookDTO>list;
		if(key.equals("bookname")) {
			list=bs.booknamesearch(svalue);
		}
		else if(key.equals("writer")) {
			list=bs.bookwritersearch(svalue);
		}
		else {
			list=bs.contentsearch(svalue);
		}
		mo.addAttribute("list",list);
		
		return "bookout";
	}
	
	
}
