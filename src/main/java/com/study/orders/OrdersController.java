package com.study.orders;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.study.contents.ContentsDTO;

@RestController
public class OrdersController {

	@Autowired
	@Qualifier("com.study.order.OrdersServiceImpl")
	private OrdersService service;

	@PostMapping("/orders/create")
	public ResponseEntity<String> create(@RequestBody OrdersDTO dto) {

		ContentsDTO cdto = service.detail(dto.getContentsno());
		dto.setPname(cdto.getPname());
		dto.setTotal(cdto.getPrice() * dto.getQuantity());

		
		int flag = service.create(dto);

		return flag == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}

}
