package com.study.cart;

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

}
