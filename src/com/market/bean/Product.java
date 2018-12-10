package com.market.bean;

public class Product {
	private Long pid;
	private String pname;
	private String pprice;
	private String cost;
	private String inprice;
	private String ptype;
	private String jieshao;
	private String pimg;
	public Long getPid() {
		return pid;
	}
	public void setPid(Long pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPprice() {
		return pprice;
	}
	public void setPprice(String pprice) {
		this.pprice = pprice;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	public String getInprice() {
		return inprice;
	}
	public void setInprice(String inprice) {
		this.inprice = inprice;
	}
	public String getPtype() {
		return ptype;
	}
	public void setPtype(String ptype) {
		this.ptype = ptype;
	}
	public String getJieshao() {
		return jieshao;
	}
	public void setJieshao(String jieshao) {
		this.jieshao = jieshao;
	}
	public String getPimg() {
		return pimg;
	}
	public void setPimg(String pimg) {
		this.pimg = pimg;
	}
	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", pprice=" + pprice + ", cost=" + cost + ", inprice="
				+ inprice + ", ptype=" + ptype + ", jieshao=" + jieshao + ", pimg=" + pimg + "]";
	}
	
}
