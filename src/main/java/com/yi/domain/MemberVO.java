package com.yi.domain;

public class MemberVO {
	private int userno;
	private String username;
	private String birthday;
	private String phone;
	private String email;
	private int totallend;

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

	public int getTotallend() {
		return totallend;
	}

	public void setTotallend(int totallend) {
		this.totallend = totallend;
	}

	@Override
	public String toString() {
		return "MemberVO [userno=" + userno + ", username=" + username + ", birthday=" + birthday + ", phone=" + phone
				+ ", email=" + email + ", totallend=" + totallend + "]";
	}

}
