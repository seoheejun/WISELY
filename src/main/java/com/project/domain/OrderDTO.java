package com.project.domain;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;
import java.util.Objects;

import javax.swing.text.DateFormatter;

public class OrderDTO {

    private Integer orderNo;
    private Integer productTotalPrice;
    private Integer deliveryCharge;
    private List<OrderDetailDTO> details;
    private Integer memNo;

    private String receiverName;
    private String receiverPostcode;
    private String receiverAddress;
    private String receiverAddressDetail;
    private String receiverPhone;
    private String receiverEmail;
    private String receiverRequest;

    private String paymentType;
    private LocalDateTime createdAt;
    private int count;
    private String productName;

	public String getProductName() {
		
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public Integer getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(Integer orderNo) {
        this.orderNo = orderNo;
    }

    public Integer getProductTotalPrice() {
        return productTotalPrice;
    }

    public Integer getDeliveryCharge() {
        return deliveryCharge;
    }

    public void setDeliveryCharge(Integer deliveryCharge) {
        this.deliveryCharge = deliveryCharge;
    }

    public void setProductTotalPrice(Integer productTotalPrice) {
        this.productTotalPrice = productTotalPrice;
    }

    public List<OrderDetailDTO> getDetails() {
        return details;
    }

    public void setDetails(List<OrderDetailDTO> details) {
        this.details = details;
    }

    public Integer getMemNo() {
        return memNo;
    }

    public void setMemNo(Integer memNo) {
        this.memNo = memNo;
    }

    public String getReceiverName() {
        return receiverName;
    }

    public void setReceiverName(String receiverName) {
        this.receiverName = receiverName;
    }

    public String getReceiverPostcode() {
        return receiverPostcode;
    }

    public void setReceiverPostcode(String receiverPostcode) {
        this.receiverPostcode = receiverPostcode;
    }

    public String getReceiverAddress() {
        return receiverAddress;
    }

    public void setReceiverAddress(String receiverAddress) {
        this.receiverAddress = receiverAddress;
    }

    public String getReceiverAddressDetail() {
        return receiverAddressDetail;
    }

    public void setReceiverAddressDetail(String receiverAddressDetail) {
        this.receiverAddressDetail = receiverAddressDetail;
    }

    public String getReceiverPhone() {
        return receiverPhone;
    }

    public void setReceiverPhone(String receiverPhone) {
        this.receiverPhone = receiverPhone;
    }

    public String getReceiverEmail() {
        return receiverEmail;
    }

    public void setReceiverEmail(String receiverEmail) {
        this.receiverEmail = receiverEmail;
    }

    public String getreceiverRequest() {
        return receiverRequest;
    }

    public void setreceiverRequest(String receiverRequest) {
        this.receiverRequest = receiverRequest;
    }

    public String getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(String paymentType) {
        this.paymentType = paymentType;
    }

    public String getCreatedAt() {
    	String formatDate = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
//    	String createdAt = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss"));
//    	LocalDateTime date = LocalDateTime.parse(formatDate,DateTimeFormatter.ofPattern("yyyy-MM-dd"));
//    	LocalDateTime date2 = LocalDateTime.parse(createdAt,DateTimeFormatter.ofPattern(createdAt));
    	System.out.println("formatDate : " + formatDate);
//    	System.out.println(createdAt);
        return formatDate;
    }
    
    public String getDateTime() {
    	String formatDate = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss"));
//    	String createdAt = LocalDateTime.now().format(DateTimeFormatter.ofPattern("yyyy-MM-dd hh:mm:ss"));
//    	LocalDateTime date = LocalDateTime.parse(formatDate,DateTimeFormatter.ofPattern("yyyy-MM-dd"));
//    	LocalDateTime date2 = LocalDateTime.parse(createdAt,DateTimeFormatter.ofPattern(createdAt));
    	System.out.println("formatDate : " + formatDate);
//    	System.out.println(createdAt);
    	return formatDate;
    }
    
    
    
    

    public void setCreatedAt(LocalDateTime createdAt) {
        this.createdAt = createdAt;
    }

    public int getPaymentPrice(){
        return Objects.requireNonNullElse(productTotalPrice, 0) + Objects.requireNonNullElse(deliveryCharge, 0);
    }
    
    // 배송번호 
    public String getUniqueNo() {
    	return "20230126-00001";
    }
    
    // 상품명 + 외
    public String getProductEtc() {
    	
    	int cnt = getCount();
    	String prod = getProductName();
    	
    	if(cnt >= 2) {
    		return prod + " 외";
    	}
    	System.out.println("prod : "+ prod);
    	System.out.println("cnt : " + cnt);
    	return prod;
    }

	@Override
	public String toString() {
		return "OrderDTO [orderNo=" + orderNo + ", productTotalPrice=" + productTotalPrice + ", deliveryCharge="
				+ deliveryCharge + ", details=" + details + ", memNo=" + memNo + ", receiverName=" + receiverName
				+ ", receiverPostcode=" + receiverPostcode + ", receiverAddress=" + receiverAddress
				+ ", receiverAddressDetail=" + receiverAddressDetail + ", receiverPhone=" + receiverPhone
				+ ", receiverEmail=" + receiverEmail + ", receiverRequest=" + receiverRequest + ", paymentType="
				+ paymentType + ", createdAt=" + createdAt + ", count=" + count + ", productName=" + productName + "]";
	}
    
}
