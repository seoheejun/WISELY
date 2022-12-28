package com.project.domain;

public class CategoryDTO {
	private int catNo;
	private String catCode;
	private String catName;
	
	// 기본생성자
	public CategoryDTO() {}
	
	// DB에서 조회한 결과를 이용할 때 catNo 필요
	public CategoryDTO(int catNo, String catCode, String catName) {
		super();
		this.catNo = catNo;
		this.catCode = catCode;
		this.catName = catName;
	}
	
	// DB에 데이터 입력시 catNo 필요 없음
	public CategoryDTO(String catCode, String catName) {
		super();
		this.catCode = catCode;
		this.catName = catName;
	}
	
	public int getCatNo() {
		return catNo;
	}
	public void setCatNo(int catNo) {
		this.catNo = catNo;
	}
	public String getCatCode() {
		return catCode;
	}
	public void setCatCode(String catCode) {
		this.catCode = catCode;
	}
	public String getCatName() {
		return catName;
	}
	public void setCatName(String catName) {
		this.catName = catName;
	}
	
	@Override
	public String toString() {
		return "CategoryDTO [catNo=" + catNo + ", catCode=" + catCode + ", catName=" + catName + "]";
	}
}
