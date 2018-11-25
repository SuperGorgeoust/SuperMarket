package com.market.bean;

public class Type {
	private Long typeId;
	//大类型得id
	private Long isMain;
	//类型级别
	private String stypeId;
	//小类型得id
	private String typeName;
	//类型名
	public Long getTypeId() {
		return typeId;
	}
	public void setTypeId(Long typeId) {
		this.typeId = typeId;
	}
	public Long getIsMain() {
		return isMain;
	}
	public void setIsMain(Long isMain) {
		this.isMain = isMain;
	}
	public String getStypeId() {
		return stypeId;
	}
	public void setStypeId(String stypeId) {
		this.stypeId = stypeId;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	@Override
	public String toString() {
		return "Type [typeId=" + typeId + ", isMain=" + isMain + ", stypeId=" + stypeId + ", typeName=" + typeName
				+ "]";
	}
	
	
	
	
	
}
