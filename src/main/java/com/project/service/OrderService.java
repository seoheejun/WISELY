package com.project.service;

import com.project.domain.OrderDTO;

import java.util.List;

public interface OrderService {

	public List<OrderDTO> getAll(int memNo);

	public OrderDTO get(int orderNo, int memNo);
	
	public OrderDTO insert(OrderDTO order, int memNo);

}
