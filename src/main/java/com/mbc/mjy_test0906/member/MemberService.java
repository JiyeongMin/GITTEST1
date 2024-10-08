package com.mbc.mjy_test0906.member;

import java.util.ArrayList;

public interface MemberService {

	public void minsert(String id, String pw, String name, String phone, String sb, String address, String hobby, String memo);

	public ArrayList<MemberDTO> mout();

	public int idoverlapcheck(String id);

}
