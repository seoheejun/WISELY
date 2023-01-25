package com.project.shopping;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.domain.CategoryDTO;
import com.project.domain.MemberDTO;
import com.project.domain.ProductDTO;
import com.project.service.CategoryService;
import com.project.service.MemberService;
import com.project.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("pd_list")
	public String productList(Model model) {
		List<ProductDTO> productList = productService.prodList();
		
		model.addAttribute("list", productList);
		return "admin/pd_list";
	}
	
	@RequestMapping("pd_input")
	public String productInput(Model model) {
		List<CategoryDTO> categoryList = categoryService.catList();
		model.addAttribute("list", categoryList);
		
		return "admin/pd_input";
	}
	
	@RequestMapping("pd_insert")
	public String productInsert(MultipartHttpServletRequest mhr, HttpServletRequest request, Model model) throws Exception {
		
		productService.prodInsert(mhr, request);
//		model.addAttribute("map", map); // 맵을 바인딩
		
		return "redirect:/pd_list";
	}
	
	@RequestMapping("pd_info")
	public String productInfo(int pNo, Model model) {
		List<CategoryDTO> cat_dto = categoryService.catList();
		model.addAttribute("cat_dto", cat_dto);
		
		ProductDTO pd_dto = productService.prodInfo(pNo);
		model.addAttribute("pd_dto", pd_dto);
		
		return "admin/pd_info";
	}
	
	@RequestMapping("pd_update")
	public String productUpdate(MultipartHttpServletRequest mhr, HttpServletRequest request, Model model) throws Exception {
		
		productService.prodUpdate(mhr, request);
//		model.addAttribute("map", map); // 맵을 바인딩
		
		return "redirect:/pd_list";
	}
	
	@RequestMapping("pd_delete")
	public String productDelete(int pNo) {
		productService.prodDelete(pNo);
		return "redirect:/pd_list";
	}
	
	@RequestMapping("pd_spec")
	public String productSpec(String pSpec, Model model) {
		List<ProductDTO> list = productService.getProdBySpec(pSpec);
		
		model.addAttribute("list", list);
		return "customer/prod_spec";
	}
	
	@RequestMapping("pd_cat")
	public String productCat(String pCategory_fk, Model model) {
		List<ProductDTO> list = productService.getProdByCategory(pCategory_fk);
		
		model.addAttribute("list", list);
		model.addAttribute("pCategory_fk", pCategory_fk);
		return "customer/prod_cat";
	}
	
	@RequestMapping("pd_all")
	public String productAll(Model model) {
		List<ProductDTO> list = productService.getProdAll();
		
		model.addAttribute("list", list);
		return "customer/prod_cat";
	}
	
	@RequestMapping("pd_search")
	public String productSearch(String pName, Model model) {
		List<ProductDTO> list = productService.getProdBySearch(pName);
		System.out.println(list);
		
		model.addAttribute("list", list);
		model.addAttribute("pName", pName);
		
		return "customer/prod_search";
	}
	
	@RequestMapping("pd_view")
	public String productView(int pNo, Model model, MemberDTO mDto) {
		
		int member = mDto.getMemNo();
		
		ProductDTO dto = productService.prodView(pNo);
		model.addAttribute("dto", dto);
		
		System.out.println(dto);
		System.out.println(member);
		
		return "customer/prod_view";
	}
	
}