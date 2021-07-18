package com.group1.springboot.milton.dao;

import java.io.Serializable;
import java.util.ArrayList;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Cart")
public class Cart implements Serializable {
	
	@Id
	Integer orderId;
	Integer productid;
	String productname;
	Integer productquantity;
	Integer productprice;
	Integer productamount;

	
	public Integer getProductid() {
		return productid;
	}

	public void setProductid(Integer productid) {
		this.productid = productid;
	}

	
	private ArrayList<LineItem> items;

	public Cart() {
		
	}

	public ArrayList<LineItem> getItems() {
		return items;
	}

	public int getCount() {
		return items.size();
	}

	public Integer getOrderId() {
		return orderId;
	}

	public void setOrderId(Integer orderId) {
		this.orderId = orderId;
	}

	public String getProductname() {
		return productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public Integer getProductquantity() {
		return productquantity;
	}

	public void setProductquantity(Integer productquantity) {
		this.productquantity = productquantity;
	}

	public Integer getProductprice() {
		return productprice;
	}

	public void setProductprice(Integer productprice) {
		this.productprice = productprice;
	}

	public Integer getProductamount() {
		return productamount;
	}

	public void setProductamount(Integer productamount) {
		this.productamount = productamount;
	}

	public Cart(Integer productid,Integer productquantity) {
		super();
		this.productid = productid;
		
		this.productquantity = productquantity;
		
	}




}
