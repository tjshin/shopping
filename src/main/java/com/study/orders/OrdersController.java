package com.study.orders;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.study.contents.ContentsDTO;

@RestController
public class OrdersController {

	@Autowired
	@Qualifier("com.study.order.OrdersServiceImpl")
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
	public String create(OrdersDTO dto, HttpServletRequest request) throws IOException {
		if (service.create(dto) > 0) {
			return "redirect:./list";
		} else {
			return "error";
		}//미완성
	}

}
