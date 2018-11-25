package com.market.bean;

public class Type {
	private Long typeId;
	private String typeName;
	private Long isMain;
	public Long getTypeId() {
		return typeId;
	}
	public void setTypeId(Long typeId) {
		this.typeId = typeId;
	}
	public String getTypeName() {
		return typeName;
	}
	public void setTypeName(String typeName) {
		this.typeName = typeName;
	}
	public Long getIsMain() {
		return isMain;
	}
	public void setIsMain(Long isMain) {
		this.isMain = isMain;
	}
	@Override
	public String toString() {
		return "Type [typeId=" + typeId + ", typeName=" + typeName + ", isMain=" + isMain + "]";
	}
	
}
