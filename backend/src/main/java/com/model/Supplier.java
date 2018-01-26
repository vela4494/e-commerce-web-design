package com.model;

import javax.persistence.*;

@Entity
@Table
public class Supplier 
{

	@Id
	int sid;
	String sname, sadr, snum;
	public int getSid() {
		return sid;
	}
	public void setSid(int sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public String getSadr() {
		return sadr;
	}
	public void setSadr(String sadr) {
		this.sadr = sadr;
	}
	public String getSnum() {
		return snum;
	}
	public void setSnum(String snum) {
		this.snum = snum;
	}
	
}