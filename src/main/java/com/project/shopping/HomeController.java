package com.project.shopping;




import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.annotation.ManagedAttribute;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.domain.MemberDTO;
import com.project.service.MemberService;

@Controller
public class HomeController {
	//spring container에 존재하는 ~를 찾아서 객체를 채워줌  
	@Autowired // DI(Dependency Injection : 의존성 주입) 
	private MemberService memberService;


	@RequestMapping("/")
	public String home() {
		return "home";
	}

	@RequestMapping("ad_login")
	public String ad_login() {
		return "admin/ad_login";
	}

	@RequestMapping("user_list")
	public String user_list() {
		return "admin/user_list";
	}

	@RequestMapping("cat_list")
	public String cat_list() {
		return "admin/cat_list";
	}

	@RequestMapping("pd_list")
	public String pd_list() {
		return "admin/pd_list";
	}

	@RequestMapping("user_login")
	public String user_login() {
		return "customer/user_login";
	}

	@RequestMapping("user_join")
	public String user_join() {
		return "customer/user_join";
	}

	@RequestMapping("cart_list")
	public String cart_list() {
		return "customer/cart_list";
	}

	//회원가입 ok
	@RequestMapping("user_joinOk")
	public String memberInsert(MemberDTO dto) {		
		System.out.println(dto);
		memberService.memberRegister(dto);
		return "customer/join";
	}

	// 로그인 
	@RequestMapping(value="user_loginOk", method=RequestMethod.POST)
	public String loginPOST(HttpServletRequest request, MemberDTO dto, RedirectAttributes rttr) throws Exception{
		//view의 submit으로 데이터 받아옴 
		System.out.println("login 메서드 진입");
		System.out.println("전달된 데이터 : " + dto); 

		// 세션 사용
		HttpSession session = request.getSession();
		MemberDTO lvo = memberService.loginCheck(dto);
		if(lvo == null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우

			int result = 0;
			rttr.addFlashAttribute("result", result);
			return "redirect:/user_login";

		}

		session.setAttribute("member", lvo);             // 일치하는 아이디, 비밀번호 경우 (로그인 성공)

		return "redirect:/";	
		
	}
	
	// 마이페이지로 이동
	@RequestMapping("my_page")
	public String myPage() {
		return "customer/my_page";
	}
	
	// 고객센터로 이동
	
	@RequestMapping("service_center")
	public String service_center() {
		return "customer/service_center";
	}
	
	//이메일 찾기로 이동
	@RequestMapping("email_find")
	public String email_find() {
		return "customer/email_find";
	}


//	@RequestMapping(value="email_findOk",method=RequestMethod.POST )
//	public ModelAndView  email_findOk(@ModelAttribute MemberDTO dto) throws Exception {
//		ModelAndView mav = new ModelAndView ();
//		List<MemberDTO> memberList = memberService.userFindId(dto);
//		System.out.println(dto);
//		System.out.println("리스트 : "+memberList);
//		
//		mav.setViewName("customer/email_findOk");
//		mav.addObject("email_find", memberList);
//		return mav;
//	}
	
	@RequestMapping(value="email_findOk",method=RequestMethod.POST )
	public String findIdAction(MemberDTO dto, Model model) throws Exception {
		MemberDTO user = memberService.emailFind(dto);
		System.out.println("유저 " +user);
			
		if(user == null) { 
			int check = 1; 
			model.addAttribute("check", check);
			return "customer/email_findOk";
		} else { 
			model.addAttribute("check", 0);
			model.addAttribute("email", user.getMem_email());
		}
	
		System.out.println(model.addAttribute("email", user.getMem_email()));
		return "customer/email_findOk";
	}
		
}