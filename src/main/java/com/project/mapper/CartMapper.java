package com.project.mapper;

import com.project.domain.CartDTO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface CartMapper {
	
	// 장바구니 추가
	public int addCart(CartDTO cDto) throws Exception;
	
	// 장바구니 리스트
	public List<CartDTO> getCartList(CartDTO cDto);

	public List<CartDTO> get(@Param("cartNos") List<Integer> cartNos, @Param("memNo") int memNo);
	
	// 장바구니 수량 수정
	public int modifyCount(CartDTO cDto);

	// 장바구니 수량 증가
	public int increase(@Param("pNo") int pNo, @Param("memNo") int memNo);

	// 장바구니 수량 감소
	public int decrease(@Param("pNo") int pNo, @Param("memNo") int memNo);

	// 장바구니 제거
	public int delete(@Param("pNoList") List<Integer> pNoList, @Param("memNo") int memNo);

	// 장바구니 삭제
	public int deleteCart(int cart_no);
	
	// 장바구니 확인
	public CartDTO checkCart(CartDTO cart);
}