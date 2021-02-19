package com.edu.login.dto;

public class EduTeaBean {
	private int no;
	private String id;
	private String name;
	private String pw;
	private String email;
	private String address;
	private String hp;
	private String birth;
	private String pwq;
	private String pwa;
	private String teachercode;
	
	public EduTeaBean() {
		super();
	}
	public EduTeaBean(int no, String id, String name, String pw, String email, String address, String hp, String birth,
			String pwq, String pwa, String teachercode) {
		super();
		this.no = no;
		this.id = id;
		this.name = name;
		this.pw = pw;
		this.email = email;
		this.address = address;
		this.hp = hp;
		this.birth = birth;
		this.pwq = pwq;
		this.pwa = pwa;
		this.teachercode = teachercode;
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
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getPwq() {
		return pwq;
	}
	public void setPwq(String pwq) {
		this.pwq = pwq;
	}
	public String getPwa() {
		return pwa;
	}
	public void setPwa(String pwa) {
		this.pwa = pwa;
	}
	public String getTeachercode() {
		return teachercode;
	}
	public void setTeachercode(String teachercode) {
		this.teachercode = teachercode;
	}
	
	@Override
	public String toString() {
		return "EduTeaBean [no=" + no + ", id=" + id + ", name=" + name + ", pw=" + pw + ", email=" + email
				+ ", address=" + address + ", hp=" + hp + ", birth=" + birth + ", pwq=" + pwq + ", pwa=" + pwa
				+ ", teachercode=" + teachercode + "]";
	}
	
	
	
}
