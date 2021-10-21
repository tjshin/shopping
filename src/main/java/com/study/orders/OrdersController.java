package com.study.orders;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class OrdersController {
	
	private static final Logger log = LoggerFactory.getLogger(OrdersController.class);
	
	@Autowired
	@Qualifier("com.study.order.OrdersServiceImpl")
	private OrdersService service;
	
	@PostMapping("/orders/create")
	public ResponseEntity < String > create(@RequestBody OrdersDTO dto) {
		return null;
	}

}
