package com.edu.registration.dto;

public class Apply {
	private int studNo;
	private String id;
	private int classNo;
	private int teaNo;
	private String className;
	private String week;
	private String time;

	public int getStudNo() {
		return studNo;
	}

	public void setStudNo(int studNo) {
		this.studNo = studNo;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getClassNo() {
		return classNo;
	}

	public void setClassNo(int classNo) {
		this.classNo = classNo;
	}

	public int getTeaNo() {
		return teaNo;
	}

	public void setTeaNo(int teaNo) {
		this.teaNo = teaNo;
	}

	public String getClassName() {
		return className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getWeek() {
		return week;
	}

	public void setWeek(String week) {
		this.week = week;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "Apply [studNo=" + studNo + ", id=" + id + ", classNo=" + classNo + ", teaNo=" + teaNo + ", className="
				+ className + ", week=" + week + ", time=" + time + "]";
	}

}
