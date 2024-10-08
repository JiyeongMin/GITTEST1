package com.mbc.mjy_test0906.book;

public class BookDTO {
	int booknumber;
	String bookname,writer,bookcompany;
	int price;
	String bookdate,content,cover;
	int breadcnt;
	public BookDTO() {}


	public BookDTO(int booknumber, String bookname, String writer, String bookcompany, int price, String bookdate,
			String content, String cover, int breadcnt) {
		super();
		this.booknumber = booknumber;
		this.bookname = bookname;
		this.writer = writer;
		this.bookcompany = bookcompany;
		this.price = price;
		this.bookdate = bookdate;
		this.content = content;
		this.cover = cover;
		this.breadcnt = breadcnt;
	}


	public int getBreadcnt() {
		return breadcnt;
	}
	public void setBreadcnt(int breadcnt) {
		this.breadcnt = breadcnt;
	}
	public int getBooknumber() {
		return booknumber;
	}
	public void setBooknumber(int booknumber) {
		this.booknumber = booknumber;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getBookcompany() {
		return bookcompany;
	}
	public void setBookcompany(String bookcompany) {
		this.bookcompany = bookcompany;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getBookdate() {
		return bookdate;
	}
	public void setBookdate(String bookdate) {
		this.bookdate = bookdate;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCover() {
		return cover;
	}
	public void setCover(String cover) {
		this.cover = cover;
	}

	}
