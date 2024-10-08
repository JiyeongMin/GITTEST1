package com.mbc.mjy_test0906.member;

public class MemberDTO {
	String id,pw,name,phone,sb,address,hobby,memo;

	public MemberDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberDTO(String id, String pw, String name, String phone, String sb, String address, String hobby,
			String memo) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.phone = phone;
		this.sb = sb;
		this.address = address;
		this.hobby = hobby;
		this.memo = memo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getSb() {
		return sb;
	}

	public void setSb(String sb) {
		this.sb = sb;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getHobby() {
		return hobby;
	}

	public void setHobby(String hobby) {
		this.hobby = hobby;
	}

	public String getMemo() {
		return memo;
	}

	public void setMemo(String memo) {
		this.memo = memo;
	}
	
	
}
