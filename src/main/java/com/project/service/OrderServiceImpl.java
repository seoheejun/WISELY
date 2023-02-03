package com.project.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.domain.OrderDTO;
import com.project.domain.OrderDetailDTO;
import com.project.mapper.CartMapper;
import com.project.mapper.OrderDetailMapper;
import com.project.mapper.OrderMapper;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderMapper orderMapper;

	@Autowired
	private OrderDetailMapper orderDetailMapper;
	
	@Autowired
	private CartMapper cartMapper;
	

	@Override
	public List<OrderDTO> getAll(int memNo) {
		return orderMapper.getAll(memNo);
	}

	@Override
	public OrderDTO get(int orderNo, int memNo) {// 주문 상세페이지
		OrderDTO orderDTO = orderMapper.get(orderNo, memNo);

		List<OrderDetailDTO> orderDetailDTOS = orderDetailMapper.get(orderNo);
		orderDTO.setDetails(orderDetailDTOS);
		System.out.println("orderDetail : "+ orderDetailDTOS);

		return orderDTO;
	}

	@Override
	public OrderDTO insert(OrderDTO order, int memNo) {
		order.setMemNo(memNo);
		orderMapper.insert(order);
		int orderNo = order.getOrderNo();
		
		List<OrderDetailDTO> details = order.getDetails();
		List<Integer> pNoList = new ArrayList<>();
		
		for(int i = 0; i<details.size(); i++) {
			System.out.println("details : "+details.size());
			OrderDetailDTO oDto = details.get(i);
			System.out.println("orderNo : "+orderNo);
			oDto.setOrderNo(orderNo);
			
			int no = oDto.getProductNo();
			pNoList.add(no);
		}
		orderDetailMapper.insert(details);
		cartMapper.delete(pNoList, memNo);
		
		return orderMapper.get(orderNo, memNo);
	}


}
