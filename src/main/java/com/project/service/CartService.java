package com.project.service;

import java.util.List;

import com.project.domain.CartDTO;

public interface CartService {
	
	// 장바구니 추가
	public int addCart(CartDTO cDto, int memNo);
	
	// 장바구니 리스트
	public List<CartDTO> getCartList(CartDTO cDto);
	
	// 장바구니 상품 수량 수정
	public int cartModify(CartDTO cDto);

	public List<CartDTO> get(List<Integer> cartNos, int memNo);

	// 장바구니 상품 수량 증가
	public int increase(int pNo, int memNo);

	public int decrease(int pNo, int memNo);

	public int delete(List<Integer> pNoList, int memNo);
	
	// 장바구니 삭제
	public int cartRemove(int cartNo);
}
