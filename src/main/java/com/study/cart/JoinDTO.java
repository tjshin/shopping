package com.study.cart;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class JoinDTO {

	private String id;
	private String mname;
	private String tel;
	private String email;
	private String zipcode;
	private String address1;
	private String address2;
	private int cartno;
	private int orderno;
	private int contentsno;
	private String odate;
	private int quantity;
	private int total;
	private String payment;
	private String pname;
	private String filename;
	private int price;

}
