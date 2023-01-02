package com.project.service;

import java.util.List;
import java.util.Map;

import com.project.domain.ProductDTO;

public interface ProductService {
	public List<ProductDTO> prodList();
	public void prodInsert(Map<String, String> map);
	public ProductDTO prodInfo(int pNo);
	public int prodUpdate(Map<String, String> map);
	public int prodDelete(int pNo);
}
