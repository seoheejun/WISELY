package com.project.domain;

public class MemberDTO {
	private int memNo;
	private String memName;
	private String memEmail;
	private String memPw;
	private String memTel;
	private String memZipcode;
	private String memRoadAddr;
	private String memJibunAddr;
	private String memDetailAddr;
	
	public MemberDTO() {}
	
	public MemberDTO(String memName, String memEmail, String memPw, String memTel, String memZipcode,
			String memRoadAddr, String memJibunAddr, String memDetailAddr) {
		super();
		this.memName = memName;
		this.memEmail = memEmail;
		this.memPw = memPw;
		this.memTel = memTel;
		this.memZipcode = memZipcode;
		this.memRoadAddr = memRoadAddr;
		this.memJibunAddr = memJibunAddr;
		this.memDetailAddr = memDetailAddr;
	}
	
	public MemberDTO(int memNo, String memName, String memEmail, String memPw, String memTel, String memZipcode,
			String memRoadAddr, String memJibunAddr, String memDetailAddr) {
		super();
		this.memNo = memNo;
		this.memName = memName;
		this.memEmail = memEmail;
		this.memPw = memPw;
		this.memTel = memTel;
		this.memZipcode = memZipcode;
		this.memRoadAddr = memRoadAddr;
		this.memJibunAddr = memJibunAddr;
		this.memDetailAddr = memDetailAddr;
	}

	public int getMemNo() {
		return memNo;
	}
	public void setMemNo(int memNo) {
		this.memNo = memNo;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemEmail() {
		return memEmail;
	}
	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}
	public String getMemPw() {
		return memPw;
	}
	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}
	public String getMemTel() {
		return memTel;
	}
	public void setMemTel(String memTel) {
		this.memTel = memTel;
	}
	public String getMemZipcode() {
		return memZipcode;
	}
	public void setMemZipcode(String memZipcode) {
		this.memZipcode = memZipcode;
	}
	public String getMemRoadAddr() {
		return memRoadAddr;
	}
	public void setMemRoadAddr(String memRoadAddr) {
		this.memRoadAddr = memRoadAddr;
	}
	public String getMemJibunAddr() {
		return memJibunAddr;
	}
	public void setMemJibunAddr(String memJibunAddr) {
		this.memJibunAddr = memJibunAddr;
	}
	public String getMemDetailAddr() {
		return memDetailAddr;
	}
	public void setMemDetailAddr(String memDetailAddr) {
		this.memDetailAddr = memDetailAddr;
	}
	
	@Override
	public String toString() {
		return "MemberDTO [memNo=" + memNo + ", memName=" + memName + ", memEmail=" + memEmail + ", memPw=" + memPw
				+ ", memTel=" + memTel + ", memZipcode=" + memZipcode + ", memRoadAddr=" + memRoadAddr
				+ ", memJibunAddr=" + memJibunAddr + ", memDetailAddr=" + memDetailAddr + "]";
	}
}
