package com.project.shopping;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.project.domain.CategoryDTO;
import com.project.domain.ProductDTO;
import com.project.service.CategoryService;
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
		
		Map map = productService.prodInsert(mhr, request);
		model.addAttribute("map", map); // 맵을 바인딩
		
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
		
		String UPLOAD_DIR = "/resources/prod_img";
		
		// 서버의 물리적인 경로 얻어오기
		String uploadPath = request.getServletContext().getRealPath("")+File.separator+UPLOAD_DIR;
		
		// 파라미터명과 파라미터값을 담기 위해서 Map 생성
		Map map = new HashMap();
		
		// 파라미터명을 가져오기(input태그의 name속성의 값을 가져오기)
		// Enmeration 컬렉션 : Iterator와 비슷한 객체
		// getParameterNames()는 리턴 타입이 Enumeration<String>
		Enumeration<String> enu = mhr.getParameterNames();
		
		while(enu.hasMoreElements()) {
			// 파라미터명을 가져오기
			String paramName = enu.nextElement();
			// 파라미터값 가져오기
			String paramValue = mhr.getParameter(paramName);
			System.out.println(paramName + ": " + paramValue);
			
			// 일반 파라미터의 파라미터명(key), 파라미터값을 map에 추가
			map.put(paramName, paramValue);
		}
		
		System.out.println(map);

		// 파일명을 갖고 있는 파라미터 읽어오기 
		//getFileNames() : input의 name속성에 있는 파라미터 값을 가져옴(file1, file2, file3,...)
		Iterator<String> iter = mhr.getFileNames();
		List<String> fileList = new ArrayList<String>();
		
		int cnt = 1;		
		while(iter.hasNext()) {
			String pImage = iter.next();
			System.out.println("pImage : " + pImage);
			
			// getFile(input의 name파라미터값) : 파일정보를 가져오기(파일명, 파일타입, 파일크기....)
//			MultipartFile : 파일정보를 갖고 있는 객체 
//			getFile()의 리턴 타입은 MultipartFile
			MultipartFile mFile = mhr.getFile(pImage);
			 
			// 업로드된 파일명을 가져오기
			String originalName = mFile.getOriginalFilename();
			System.out.println("orginalName : " + originalName);
			 
			File file = new File(uploadPath + "//" + pImage);
			 
			if(mFile.getSize() != 0) { // 업로드된 경우
				// 최초에는 폴더 생성이 안되어있기 때문에..파일을 처음 업로드할 때 폴더를 생성해줌
				// 두번째 파일을 업로드시에는 아래의 if문은 수행안됨
				if(!file.exists()) { // 경로에 파일이 있는지 확인하고, 없으면 실행(처음에 한번만 실행)
					if(file.getParentFile().mkdir()) { // uploadPath에 지정된 폴더 생성
						file.createNewFile(); // 임시로 파일 생성 : file1
					} // if
				}// if
				
				// 실제 업로드된 파일을 저장하기 위해 File객체를 생성 
				File uploadFile = new File(uploadPath + "//" + originalName);
				
				// 중복처리
//				if(uploadFile.exists()) {
//					originalName = System.currentTimeMillis()+ "_" + originalName;
//					uploadFile = new File(uploadPath + "//" + originalName);
//				}
				
				// 실제 파일 업로드
				mFile.transferTo(uploadFile);
				fileList.add(originalName); // 파일명을 리스트에 추가
				
				map.put("pImage_"+ cnt, originalName);
			 } //if
			 
			 cnt++; 
		}// while문
		
		map.put("fileList", fileList); // 파일 리스트를 맵에 추가
		
		System.out.println("fileList : " + fileList);
		System.out.println("map: " + map);
		model.addAttribute("map", map); // 맵을 바인딩
		
		productService.prodUpdate(map);
		return "redirect:/pd_list";
	}
	
	@RequestMapping("pd_delete")
	public String productDelete(int pNo) {
		productService.prodDelete(pNo);
		return "redirect:/pd_list";
	}
	
}