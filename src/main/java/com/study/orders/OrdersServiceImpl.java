package com.study.orders;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.study.contents.ContentsDTO;

@Service("com.study.orders.OrdersServiceImpl")
public class OrdersServiceImpl implements OrdersService {
	
	@Autowired
	private OrdersMapper mapper;

	@Override
	public ContentsDTO detail(int contentsno) {
		// TODO Auto-generated method stub
		return mapper.detail(contentsno);
	}

	@Override
	public int create(OrdersDTO dto) {
		// TODO Auto-generated method stub
		return mapper.create(dto);
	}

	@Override
	public int readcartno(String id) {
		// TODO Auto-generated method stub
		return mapper.readcartno(id);
	}

	@Override
	public String readmname(String id) {
		// TODO Auto-generated method stub
		return mapper.readmname(id);
	}

}
