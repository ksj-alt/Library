package com.yi.domain;

public class MemberVO {
	private int userno;
	private String username;
	private String userid;
	private String userpw;
	private String birthday;
	private String phone;
	private String email;

	public MemberVO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public MemberVO(int userno, String username, String birthday, String phone, String email) {
		super();
		this.userno = userno;
		this.username = username;
		this.birthday = birthday;
		this.phone = phone;
		this.email = email;
	}

	public MemberVO(String userid, String userpw) {
		super();
		this.userid = userid;
		this.userpw = userpw;
	}

	public int getUserno() {
		return userno;
	}

	public void setUserno(int userno) {
		this.userno = userno;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpw() {
		return userpw;
	}

	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "MemberVO [userno=" + userno + ", username=" + username + ", userid=" + userid + ", userpw=" + userpw
				+ ", birthday=" + birthday + ", phone=" + phone + ", email=" + email + "]";
	}

}
