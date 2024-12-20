package com.example.sakila.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.sakila.mapper.StaffMapper;
import com.example.sakila.service.StaffService;
import com.example.sakila.vo.Staff;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller

public class LoginController {
	@Autowired StaffService staffService;
	
	@GetMapping("/on/logout")
	public String logout(HttpSession session) {
		// 로그아웃 했으니까 세션 무효화
		session.invalidate();
		log.debug("로그아웃 성공");
		return "redirect:/off/login";
	}
	// 스프링 api에서 servlet 이 노출되는 건 그닥 선호하지 않지만 우리나라에서는 많이 쓰인다~
	
	
	
	
	
	@GetMapping("/off/login")
	// 로그인 폼
	public String login() {
		log.debug("/off/login 실행됨");
		return "off/login";
	}
	
	// 로그인 액션
	@PostMapping("/off/login")
	public String login(Model model, HttpSession session,
	//  @RequestParam = 클라이언트에서 전송된 요청 파라미터를 메서드의 매개변수로 바인딩
		@RequestParam(name = "staffId", defaultValue = "1") int staffId,
		@RequestParam(name = "password") String password) {
		// => int staffId = Interger.parseInt(request.getParameter("staffId"))
		// => String password = request.getParameter("password")
		
			// 객체 생성
			Staff paramStaff = new Staff();
			// staffId, password 값 세팅
			paramStaff.setStaffId(staffId);
			paramStaff.setPassword(password);
			
			
			Staff loginStaff = staffService.login(paramStaff);
			
			if(loginStaff == null) {
				model.addAttribute("msg", "로그인실패");
				return "/off/login";
			}
			session.setAttribute("loginStaff", loginStaff);
			return "redirect:/on/main";
		}
	}
