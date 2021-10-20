package com.study.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("com.study.cart.CartServiceImpl")
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartMapper mapper;

	@Override
	public List<JoinDTO> list(String id) {
		// TODO Auto-generated method stub
		return mapper.list(id);
	}

}
