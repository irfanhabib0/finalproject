package com.Demoregister.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int productid;
	private String productname;
	private String productdescrip;
	private double productdprice;
	private String productdbrand;
	private String productcategory;

	@Transient
	 MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public int getProductid() {
		return productid;
	}
	public void setProductid(int productid) {
		this.productid = productid;
	}
	public String getProductname() {
		return productname;
	}
	public void setProductname(String productname) {
		this.productname = productname;
	}
	public String getProductdescrip() {
		return productdescrip;
	}
	public void setProductdescrip(String productdescrip) {
		this.productdescrip = productdescrip;
	}
	public double getProductdprice() {
		return productdprice;
	}
	public void setProductdprice(double productdprice) {
		this.productdprice = productdprice;
	}
	public String getProductdbrand() {
		return productdbrand;
	}
	public void setProductdbrand(String productdbrand) {
		this.productdbrand = productdbrand;
	}
	
	

}
