package com.project.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.domain.ProductDTO;

public interface ProductService {
	public List<ProductDTO> prodList();
	public Map prodInsert(MultipartHttpServletRequest mhr, HttpServletRequest request) throws Exception;
	public ProductDTO prodInfo(int pNo);
	public Map prodUpdate(MultipartHttpServletRequest mhr, HttpServletRequest request) throws Exception;
	public int prodDelete(int pNo);
	public List<ProductDTO> getProdAll();
	public List<ProductDTO> getProdBySpec(String pSpec);
	public List<ProductDTO> getProdByCategory(String pCategory_fk);
	public List<ProductDTO> getProdBySearch(String pName);
	public ProductDTO prodView(int pNo);
}