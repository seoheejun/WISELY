package com.project.domain;

public class MemberDTO {
	private int mem_no;
	private String mem_name;
	private String mem_email;
	private String mem_pw;
	private String mem_tel;

	private String mem_zipcode;
	private String mem_road_addr;
	private String mem_jibun_addr;
	private String mem_detail_addr;
	public int getMem_no() {
		return mem_no;
	}
	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_email() {
		return mem_email;
	}
	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}
	public String getMem_pw() {
		return mem_pw;
	}
	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}
	public String getMem_zipcode() {
		return mem_zipcode;
	}
	public void setMem_zipcode(String mem_zipcode) {
		this.mem_zipcode = mem_zipcode;
	}
	public String getMem_road_addr() {
		return mem_road_addr;
	}
	public void setMem_road_addr(String mem_road_addr) {
		this.mem_road_addr = mem_road_addr;
	}
	public String getMem_jibun_addr() {
		return mem_jibun_addr;
	}
	public void setMem_jibun_addr(String mem_jibun_addr) {
		this.mem_jibun_addr = mem_jibun_addr;
	}
	public String getMem_detail_addr() {
		return mem_detail_addr;
	}
	public void setMem_detail_addr(String mem_detail_addr) {
		this.mem_detail_addr = mem_detail_addr;
	}
	
	public String getMem_tel() {
		return mem_tel;
	}
	public void setMem_tel(String mem_tel) {
		this.mem_tel = mem_tel;
	}
	@Override
	public String toString() {
		return "MemberDTO [mem_no=" + mem_no + ", mem_name=" + mem_name + ", mem_email=" + mem_email + ", mem_pw="
				+ mem_pw + ", mem_tel=" + mem_tel + ", mem_zipcode=" + mem_zipcode + ", mem_road_addr=" + mem_road_addr
				+ ", mem_jibun_addr=" + mem_jibun_addr + ", mem_detail_addr=" + mem_detail_addr + "]";
	}

	

	
}
