package com.project.shopping;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.project.domain.CategoryDTO;

@Controller
@RequestMapping("/category")
public class CategoryController {
	
	@GetMapping("/input")
	public String input() {
		return "admin/cat_input";
	}
	
	@PostMapping("/add")
	public String add(CategoryDTO category, Model m) throws Exception{
		// 1. 유효성 검사
		if(!isValid(category)) {
			String msg = URLEncoder.encode("카테고리를 등록하지 못했습니다.", "utf-8");
			
			m.addAttribute("msg", msg);
			return "forward:/admin/category/add";
		}
		return "admin/category/input";
	}
	
	private boolean isValid(CategoryDTO category) {
		return false;
	}
}