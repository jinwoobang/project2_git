package com.edu.board.dto;

public class Notice {
	private int no;
	private String title;
	private String contents;
	private String regdate;
	private int hit;
	private String flag;
	private int adminNo;

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public int getAdminNo() {
		return adminNo;
	}

	public void setAdminNo(int adminNo) {
		this.adminNo = adminNo;
	}

	@Override
	public String toString() {
		return "Notice [no=" + no + ", title=" + title + ", contents=" + contents + ", regdate=" + regdate + ", hit="
				+ hit + ", flag=" + flag + ", adminNo=" + adminNo + "]";
	}

}
