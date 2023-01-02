package com.project.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.domain.ProductDTO;
import com.project.mapper.ProductMapper;

@Service
public class ProductServiceImpl implements ProductService {
	
	private ProductMapper mapper;
	
	@Autowired
	public ProductServiceImpl(ProductMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public void prodInsert(Map<String, String> map) {
		mapper.productInsert(map);
		
	}

	@Override
	public List<ProductDTO> prodList() {
		return mapper.productList();
	}

	@Override
	public ProductDTO prodInfo(int pNo) {
		return mapper.productInfo(pNo);
	}

	@Override
	public int prodUpdate(Map<String, String> map) {
		return mapper.productUpdate(map);
	}
	
	@Override
	public int prodDelete(int pNo) {
		return mapper.productDelete(pNo);
	}	
	
}
