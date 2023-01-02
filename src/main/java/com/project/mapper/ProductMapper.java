package com.project.mapper;

import java.util.List;
import java.util.Map;

import com.project.domain.ProductDTO;

public interface ProductMapper {
	public List<ProductDTO> productList();
	public int productInsert(Map<String, String> map);
	public ProductDTO productInfo(int pNo);
	public int productUpdate(Map<String, String> map);
	public int productDelete(int pNo);
}