package com.study.cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CartController {
	
	@Autowired
	@Qualifier("com.study.cart.CartServiceImpl")
	private CartService service;
	
	@GetMapping("/cart/list")
	public String list(HttpServletRequest request, String id) {
		
		List < JoinDTO > list = service.list(id);
		request.setAttribute("list", list);
		
		return "/cart/list";
	}

}
