package com.edu.test.dto;

public class TestBean {
	private int no;
	private String id;
	private String score;
	private String classname;
	
	public TestBean() {
		super();
	}

	public TestBean(int no, String id, String score, String classname) {
		super();
		this.no = no;
		this.id = id;
		this.score = score;
		this.classname = classname;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getClassname() {
		return classname;
	}

	public void setClassname(String classname) {
		this.classname = classname;
	}

	@Override
	public String toString() {
		return "TestBean [no=" + no + ", id=" + id + ", score=" + score + ", classname=" + classname + "]";
	}
	
	
	
	
}
