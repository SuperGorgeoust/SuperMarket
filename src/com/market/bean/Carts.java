package com.market.bean;

public class Carts {
	private Long cartsId;
	private String cartsName;
	private String typeName;
	private String cartsImg;
	private String note;
	public Long getCartsId() {
		return cartsId;
	}
	public void setCartsId(Long cartsId) {
		this.cartsId = cartsId;
	}
	public String getCartsName() {
		return cartsName;
	}
	public void setCartsName(String cartsName) {
		this.cartsName = cartsName;
	}
	public String getCartsType() {
		return typeName;
	}
	public void setCartsType(String cartsType) {
		this.typeName = cartsType;
	}
	public String getCartsImg() {
		return cartsImg;
	}
	public void setCartsImg(String cartsImg) {
		this.cartsImg = cartsImg;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	@Override
	public String toString() {
		return "Carts [cartsId=" + cartsId + ", cartsName=" + cartsName + ", cartsType=" + typeName + ", cartsImg="
				+ cartsImg + ", note=" + note + "]";
	}
	
}
