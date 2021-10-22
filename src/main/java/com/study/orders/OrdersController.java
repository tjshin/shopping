package com.study.orders;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.study.contents.ContentsDTO;

@Controller
public class OrdersController {

	@Autowired
	@Qualifier("com.study.orders.OrdersServiceImpl")
	private OrdersService service;

//	@PostMapping("/orders/create")
//	public ResponseEntity<String> create(@RequestBody OrdersDTO dto) {
//
//		ContentsDTO cdto = service.detail(dto.getContentsno());
//		dto.setPname(cdto.getPname());
//		dto.setTotal(cdto.getPrice() * dto.getQuantity());
//
//		
//		int flag = service.create(dto);
//
//		return flag == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
//				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
//	}
	
	@GetMapping("/orders/create")
	public String create(int contentsno, Model model) {
		
		ContentsDTO cdto = service.detail(contentsno);		

		model.addAttribute("cdto", cdto);
		
		return "/orders/create";
	}
	
	@PostMapping("/orders/create")
	public String create(OrdersDTO dto, HttpSession session, HttpServletRequest request) throws IOException {
		
		String id = (String) session.getAttribute("id");
		int cartno = service.readcartno(id);
		int contentsno = Integer.parseInt((String)request.getAttribute("contentsno"));
		
		dto.setId(id);
		dto.setCartno(cartno);
		dto.setContentsno(contentsno);
		int price = Integer.parseInt(request.getParameter("price"));
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		dto.setTotal(price * quantity);
		dto.setPname((String)request.getParameter("pname"));
		
		
		if (service.create(dto) > 0) {
			return "redirect:../cart/list";
		} else {
			return "error";
		}//미완성
	}

}
