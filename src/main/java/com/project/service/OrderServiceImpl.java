package com.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.domain.CartDTO;
import com.project.domain.OrderDTO;
import com.project.domain.OrderDetailDTO;
import com.project.mapper.OrderDetailMapper;
import com.project.mapper.OrderMapper;

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

	@Override
	public int insert(OrderDTO order, int memNo) {
		order.setMemNo(memNo);
		int orderNo = orderMapper.insert(order);
		
//		List<OrderDetailDTO> orderDetails 
//		orderDetailMapper.insert(orderDetails);
		List<OrderDetailDTO> details = order.getDetails();
		
		for(int i = 0; i<details.size(); i++) {
			System.out.println("details : "+details.size());
			OrderDetailDTO oDto = details.get(i);
			System.out.println("orderNo : "+orderNo);
			oDto.setOrderNo(orderNo);
		}
		orderDetailMapper.insert(details);
		
		CartDTO cDto = new CartDTO();
		
		
		return 0;
	}


}
