package com.project.mapper;


import com.project.domain.OrderDTO;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface OrderMapper {
	
	public List<OrderDTO> getAll(int memNo);

	public OrderDTO get(@Param("orderNo") int orderNo, @Param("memNo") int memNo);

	public int insert(List<OrderDTO> order);

}
