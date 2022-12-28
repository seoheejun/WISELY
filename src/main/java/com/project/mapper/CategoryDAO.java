package com.project.mapper;

import java.util.List;

import com.project.domain.CategoryDTO;

public interface CategoryDao {
	CategoryDTO select(Integer cat_no) throws Exception;
	List<CategoryDTO> selectAll() throws Exception;
	int insert(CategoryDTO dto) throws Exception;
	int update(CategoryDTO dto) throws Exception;
	int delete(Integer cat_no) throws Exception;
}