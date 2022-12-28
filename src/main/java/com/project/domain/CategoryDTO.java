package com.project.domain;

public class CategoryDTO {
	private int cat_no;
	private String cat_code;
	private String cat_name;
	
	public int getCat_no() {
		return cat_no;
	}
	
	public void setCat_no(int cat_no) {
		this.cat_no = cat_no;
	}
	
	public String getCat_code() {
		return cat_code;
	}
	
	public void setCat_code(String cat_code) {
		this.cat_code = cat_code;
	}
	
	public String getCat_name() {
		return cat_name;
	}
	
	public void setCat_name(String cat_name) {
		this.cat_name = cat_name;
	}
	
	@Override
	public String toString() {
		return "CategoryDto [cat_no=" + cat_no + ", cat_code=" + cat_code + ", cat_name=" + cat_name + "]";
	}
}
