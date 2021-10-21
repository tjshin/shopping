package com.study.orders;

import com.study.contents.ContentsDTO;

public interface OrdersService {

	ContentsDTO detail(int contentsno);

	int create(OrdersDTO dto);

}
