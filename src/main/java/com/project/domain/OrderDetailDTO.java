package com.project.domain;

public class OrderDetailDTO {

    private Integer orderDetailNo;
    private Integer orderNo;
    private String productName;
    private Integer productCount;
    private Integer productPrice;
    private String productImagePath;
    private Integer productNo;
    
    public Integer getProductNo() {
		return productNo;
	}

	public void setProductNo(Integer productNo) {
		this.productNo = productNo;
	}

	public Integer getOrderDetailNo() {
        return orderDetailNo;
    }

    public Integer getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(Integer orderNo) {
        this.orderNo = orderNo;
    }

    public void setOrderDetailNo(Integer orderDetailNo) {
        this.orderDetailNo = orderDetailNo;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public Integer getProductCount() {
        return productCount;
    }

    public void setProductCount(Integer productCount) {
        this.productCount = productCount;
    }

    public Integer getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(Integer productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductImagePath() {
        return productImagePath;
    }

    public void setProductImagePath(String productImagePath) {
        this.productImagePath = productImagePath;
    }

	@Override
	public String toString() {
		return "OrderDetailDTO [orderDetailNo=" + orderDetailNo + ", orderNo=" + orderNo + ", productName="
				+ productName + ", productCount=" + productCount + ", productPrice=" + productPrice
				+ ", productImagePath=" + productImagePath + ", productNo=" + productNo + "]";
	}
    
    

}