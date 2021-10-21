package com.study.cart;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CartController {

	@Autowired
	@Qualifier("com.study.cart.CartServiceImpl")
	private CartService service;

	@GetMapping("/cart/list")
	public String list(HttpServletRequest request, HttpSession session) {

		String id = (String) session.getAttribute("id");
		
		if (id == null) {
			return "redirect:./login/";
		} else {

			List<JoinDTO> list = service.list(id);
			request.setAttribute("list", list);

			return "/cart/list";
		}
	}

}
