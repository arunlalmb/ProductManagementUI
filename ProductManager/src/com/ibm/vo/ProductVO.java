package com.ibm.vo;

import java.util.List;

public class ProductVO {
	
	private String productId;
	private String productName;
	private String productDescription;
	private String relatedProducts;
	private List<String> relatedProductsList;
	
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	public List<String> getRelatedProductsList() {
		return relatedProductsList;
	}
	public void setRelatedProductsList(List<String> relatedProductsList) {
		this.relatedProductsList = relatedProductsList;
	}
	public String getRelatedProducts() {
		return relatedProducts;
	}
	public void setRelatedProducts(String relatedProducts) {
		this.relatedProducts = relatedProducts;
	}


}
