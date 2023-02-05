package com.project.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

public class AdminLoginInterceptor implements HandlerInterceptor {

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		HttpSession session = request.getSession();
		Object adminName = session.getAttribute("adminName");
		
		// 관리자 로그인이 안되어 있으면
		if(adminName == null) {
			response.sendRedirect("ad_login");
			return false;
		}
		return true;
	}
}
