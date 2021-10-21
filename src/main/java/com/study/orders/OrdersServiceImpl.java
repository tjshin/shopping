package com.study.orders;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("com.study.order.OrdersServiceImpl")
public class OrdersServiceImpl implements OrdersService {
	
	@Autowired
	private OrdersMapper mapper;

}
