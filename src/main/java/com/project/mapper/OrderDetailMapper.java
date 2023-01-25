package com.project.mapper;

import com.project.domain.OrderDetailDTO;

import java.util.List;

public interface OrderDetailMapper {
	
	public List<OrderDetailDTO> get(int orderNo);

	public int insert(List<OrderDetailDTO> orderDetails);

}
