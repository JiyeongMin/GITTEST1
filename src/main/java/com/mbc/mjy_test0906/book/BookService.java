package com.mbc.mjy_test0906.book;

import java.util.ArrayList;

public interface BookService {
	public void insertb(String bookname, String writer, String bookcompany, int price, String bookdate, String content,
			String cover);

	public ArrayList<BookDTO> bout();

	public BookDTO bdetail(int number);

	public void readcnt(int number);

	public ArrayList<BookDTO> delete(int number2);

	public void delete2(int number);

	public ArrayList<BookDTO> update1(int number);

	public void update2(int number, String bookname, String writer, String bookcompany, int price, String bookdate, String content, String fname);

	public ArrayList<BookDTO> booknamesearch(String svalue);

	public ArrayList<BookDTO> bookwritersearch(String svalue);

	public ArrayList<BookDTO> contentsearch(String svalue);
}
