package com.project.mapper;


import com.project.domain.OrderDTO;

import java.util.List;

public interface OrderMapper {
	
	public List<OrderDTO> getAll(int memNo);

	public OrderDTO get(int orderNo, int memNo);

	public int insert(List<OrderDTO> order);

}
