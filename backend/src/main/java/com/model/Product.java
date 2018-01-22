package com.model;

import javax.persistence.*;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table
public class Product  {

	@Id
	int pid;
	
	String pname,pdesc,catname;
	int pstock,pprice,supid;
	/*@ManyToOne(fetch= FetchType.EAGER)
	@JoinColumn(name="catid")
	private Category category;
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="supid")
	private Supplier supplier;*/
	@Transient
	MultipartFile pimage;
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPdesc() {
		return pdesc;
	}
	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}
	public int getPstock() {
		return pstock;
	}
	public void setPstock(int pstock) {
		this.pstock = pstock;
	}
	public int getPprice() {
		return pprice;
	}
	public void setPprice(int pprice) {
		this.pprice = pprice;
	}
	public String getCatname() {
		return catname;
	}
	public void setCatname(String catname) {
		this.catname = catname;
	}
	public int getSupid() {
		return supid;
	}
	public void setSupid(int supid) {
		this.supid = supid;
	}
	public MultipartFile getPimage() {
		return pimage;
	}
	public void setPimage(MultipartFile pimage) {
		this.pimage = pimage;
	}
	
	
}