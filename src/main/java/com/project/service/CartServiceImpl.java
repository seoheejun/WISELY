package com.project.service;

import com.project.domain.CartDTO;
import com.project.mapper.CartMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceImpl implements CartService {
	
	@Autowired
	private CartMapper cartMapper;

	// 장바구니 추가
	@Override
	public int addCart(CartDTO cDto, int memNo) {
		
		// 0 : 등록 실패 / 1 : 등록 성공 / 2 : 등록된 데이터 존재 / 5 : 로그인 필요
		
		cDto.setMemNo(memNo);
		// 장바구니 데이터 체크
		CartDTO checkCart = cartMapper.checkCart(cDto);
		
		if(checkCart != null) {
			System.out.println("2번 : 장바구니에 이미 있는 상품");
			return 2;
		}
		try {
			// 장바구니 추가 시 1반환
			int result = cartMapper.addCart(cDto);
			System.out.println("1번 : 장바구니 추가 완료");
			System.out.println("result : "+result);
			return result;
			
		}catch(Exception e) {
//			// 장바구니 추가 실패 시 0반환
//			System.out.println("0번 : 장바구니 추가 실패");
			System.out.println("장바구니 추가 실패");
			return 0;
		}
		
	}

	// 장바구니 리스트
	@Override
	public List<CartDTO> getCartList(CartDTO cDto) {
		List<CartDTO> cart = cartMapper.getCartList(cDto);
		
		return cart;
	}

	@Override
	public List<CartDTO> get(List<Integer> cartNos, int memNo){
		List<CartDTO> cartList = cartMapper.get(cartNos, memNo);
		return cartList;
	}

	@Override
	public int increase(int pNo, int memNo){
		return cartMapper.increase(pNo, memNo);
	}

	@Override
	public int decrease(int pNo, int memNo){
		return cartMapper.decrease(pNo, memNo);
	}

	@Override
	public int delete(List<Integer> pNoList, int memNo){
		return cartMapper.delete(pNoList, memNo);
	}

	// 장바구니 수량 수정
	@Override
	public int cartModify(CartDTO cDto) {
		
		return cartMapper.modifyCount(cDto);
	}

	// 장바구니 삭제
	@Override
	public int cartRemove(int cartNo) {

		return cartMapper.deleteCart(cartNo);
	}
	
	
}
