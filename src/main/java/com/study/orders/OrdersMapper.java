package com.study.orders;

import com.study.contents.ContentsDTO;

public interface OrdersMapper {

	ContentsDTO detail(int contentsno);

	int create(OrdersDTO dto);

	

}
