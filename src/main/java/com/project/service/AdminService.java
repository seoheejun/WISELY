package com.project.service;

import javax.servlet.http.HttpServletRequest;

import com.project.domain.AdminDTO;

public interface AdminService {
	public void adminLogin(AdminDTO dto, HttpServletRequest request);
}
