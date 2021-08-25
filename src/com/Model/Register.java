package com.Model;
import java.sql.Date;
public class Register {
	private int uid;
	private String fname;
	private String lname;
	private String bday;
	private String gender;
	private String email;
	private String mobno;
	public Register(int uid,String fname, String lname, String bday, String gender, String email, String mobno) {
		this.uid = uid;
		this.fname = fname;
		this.lname = lname;
		this.bday = bday;
		this.gender = gender;
		this.email = email;
		this.mobno = mobno;
	}
	public Register() {
		// TODO Auto-generated constructor stub
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getBday() {
		return bday;
	}
	public void setBday(String bday) {
		this.bday = bday;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobno() {
		return mobno;
	}
	public void setMobno(String mobno) {
		this.mobno = mobno;
	}
	
	
}
