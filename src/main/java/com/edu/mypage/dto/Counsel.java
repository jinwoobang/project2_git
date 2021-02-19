package com.edu.mypage.dto;

public class Counsel {
	private int no;
	private String title;
	private String contents;
	private int step;
	private int lev;
	private int reply;
	private int pnum;
	private int ref;
	private String regdate;
	private int hit;
	private int studno;

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

	public int getStep() {
		return step;
	}

	public void setStep(int step) {
		this.step = step;
	}

	public int getLev() {
		return lev;
	}

	public void setLev(int lev) {
		this.lev = lev;
	}

	public int getReply() {
		return reply;
	}

	public void setReply(int reply) {
		this.reply = reply;
	}

	public int getPnum() {
		return pnum;
	}

	public void setPnum(int pnum) {
		this.pnum = pnum;
	}

	public int getRef() {
		return ref;
	}

	public void setRef(int ref) {
		this.ref = ref;
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

	public int getStudno() {
		return studno;
	}

	public void setStudno(int studno) {
		this.studno = studno;
	}

	@Override
	public String toString() {
		return "Counsel [no=" + no + ", title=" + title + ", contents=" + contents + ", step=" + step + ", lev=" + lev
				+ ", reply=" + reply + ", pnum=" + pnum + ", ref=" + ref + ", regdate=" + regdate + ", hit=" + hit
				+ ", studno=" + studno + "]";
	}

}
