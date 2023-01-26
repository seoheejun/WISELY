package com.project.service;

import com.project.domain.OrderDTO;
import com.project.domain.OrderDetailDTO;
import com.project.mapper.OrderDetailMapper;
import com.project.mapper.OrderMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper orderMapper;

	@Autowired
	private OrderDetailMapper orderDetailMapper;

	@Override
	public List<OrderDTO> getAll(int memNo) {
		return orderMapper.getAll(memNo);
	}

	@Override
	public OrderDTO get(int orderNo, int memNo) {// 주문 상세페이지
		OrderDTO orderDTO = orderMapper.get(orderNo, memNo);

		List<OrderDetailDTO> orderDetailDTOS = orderDetailMapper.get(orderNo);
		orderDTO.setDetails(orderDetailDTOS);

		return orderDTO;
	}
}
