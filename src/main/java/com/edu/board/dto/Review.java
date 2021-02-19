package com.edu.board.dto;

public class Review {
	private int no;
	private String title;
	private String contents;
	private String regdate;
	private int hit;
	private String className;
	private int studNo;

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

	public String getclassName() {
		return className;
	}

	public void setclassName(String className) {
		this.className = className;
	}

	public int getstudNo() {
		return studNo;
	}

	public void setstudNo(int studNo) {
		this.studNo = studNo;
	}

	@Override
	public String toString() {
		return "Review [no=" + no + ", title=" + title + ", contents=" + contents + ", regdate=" + regdate + ", hit="
				+ hit + ", className=" + className + ", studNo=" + studNo + "]";
	}

}
