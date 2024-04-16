package com.empform;

public class Employee {
	
	private int id;
	private String fname;
	private String lname;
	private String email;
	private String contact;
	private String yop;
	private String gender;
	private String lpa;
	private String cloc;
	private String ploc;
	public Employee(int id, String fname, String lname, String email, String contact, String yop, String gender, String lpa,
			String cloc, String ploc) {
		super();
		this.id = id;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.contact = contact;
		this.yop = yop;
		this.gender = gender;
		this.lpa = lpa;
		this.cloc = cloc;
		this.ploc = ploc;
	}
	
	
	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getYop() {
		return yop;
	}
	public void setYop(String yop) {
		this.yop = yop;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getLpa() {
		return lpa;
	}
	public void setLpa(String lpa) {
		this.lpa = lpa;
	}
	public String getCloc() {
		return cloc;
	}
	public void setCloc(String cloc) {
		this.cloc = cloc;
	}
	public String getPloc() {
		return ploc;
	}
	public void setPloc(String ploc) {
		this.ploc = ploc;
	}
	
	
}
