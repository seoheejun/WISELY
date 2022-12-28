package com.project.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.domain.CategoryDTO;

@Repository
public class CategoryDaoImpl implements CategoryDao {
	@Autowired
	private SqlSession session;
	private static String namespace = "com.project.shopping.mapper.CategoryMapper.";
	
	@Override
	public CategoryDTO select(Integer cat_no) throws Exception {
		return session.selectOne(namespace + "select", cat_no);
	}
	
	@Override
	public List<CategoryDTO> selectAll() throws Exception {
		return session.selectList(namespace + "selectAll");
	}
	
	@Override
	public int insert(CategoryDTO dto) throws Exception {
		return session.insert(namespace + "insert", dto);
	}
	
	@Override
	public int update(CategoryDTO dto) throws Exception {
		return session.update(namespace + "update", dto);
	}
	
	@Override
	public int delete(Integer cat_no) throws Exception {
		Map map = new HashMap();
		map.put("cat_no", cat_no);
		return session.delete(namespace + "delete", map);
	}
	
}
