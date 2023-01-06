package com.project.domain;

public class CategoryDTO {
	private int catNo;
	private String catName;
	
	// 기본생성자
	public CategoryDTO() {}
	
	// DB에서 조회한 결과를 이용할 때 catNo 필요
	public CategoryDTO(int catNo, String catName) {
		super();
		this.catNo = catNo;
		this.catName = catName;
	}

	// DB에 데이터 입력시 catNo 필요 없음
	public CategoryDTO(String catName) {
		super();
		this.catName = catName;
	}

	public int getCatNo() {
		return catNo;
	}

	public void setCatNo(int catNo) {
		this.catNo = catNo;
	}

	public String getCatName() {
		return catName;
	}

	public void setCatName(String catName) {
		this.catName = catName;
	}

	@Override
	public String toString() {
		return "CategoryDTO [catNo=" + catNo + ", catName=" + catName + "]";
	}
}
