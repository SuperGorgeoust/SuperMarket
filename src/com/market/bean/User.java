package com.market.bean;

public class User {
	private Long id;
	private String name;
	private String account;
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	private String tel;
	private Long email;
	private String pwd;
	private int isadmin;
	
	public int getIsadmin() {
		return isadmin;
	}
	public void setIsadmin(int isadmin) {
		this.isadmin = isadmin;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public Long getEmail() {
		return email;
	}
	public void setEmail(Long email) {
		this.email = email;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", account=" + account + ", tel=" + tel + ", email=" + email
				+ ", pwd=" + pwd + ", isadmin=" + isadmin + "]";
	}
	
}
