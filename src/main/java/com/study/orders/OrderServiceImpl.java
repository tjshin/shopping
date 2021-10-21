package com.study.orders;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("com.study.order.OrderServiceImpl")
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderMapper mapper;

}
