package com.group1.springboot.milton.model;

import java.io.Serializable;
import java.text.NumberFormat;

import javax.persistence.Entity;

import com.group1.springboot.milton.model.ProductInfo;


public class LineItem implements Serializable {

	ProductInfo prodinfo;
	ProductInfo product;
	int quantity;

	public ProductInfo getProduct() {
		return product;
	}

	public void setProduct(ProductInfo product) {
		this.product = product;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getTotal() {
		double total = product.getProductprice() * quantity;
		return total;
	}

	public String getTotalCurrencyFormat() {
		NumberFormat currency = NumberFormat.getCurrencyInstance();
		return currency.format(this.getTotal());
	}

}
