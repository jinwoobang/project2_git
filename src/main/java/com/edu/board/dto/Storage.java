package com.edu.board.dto;

public class Storage {
	private int no;
	private String title;
	private String contents;
	private String regdate;
	private int hit;
	private String fileName;
	private int teaNo;

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

	public String getFileName() {
		return fileName;
	}

	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public int getTeaNo() {
		return teaNo;
	}

	public void setTeaNo(int teaNo) {
		this.teaNo = teaNo;
	}

	@Override
	public String toString() {
		return "Storage [no=" + no + ", title=" + title + ", contents=" + contents + ", regdate=" + regdate + ", hit="
				+ hit + ", fileName=" + fileName + ", teaNo=" + teaNo + "]";
	}

}
