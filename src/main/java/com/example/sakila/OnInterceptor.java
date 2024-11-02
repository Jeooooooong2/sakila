package com.example.sakila;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component 
public class OnInterceptor implements HandlerInterceptor{
	
	// 특정 컨트롤러 실행 전 request 와 response를 가로채어 먼저 실행됨
	@Override
							// 요청, 응답, 핸들러 정보를 매개값으로 받음
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		log.debug(request.getRequestURL().toString() + "요청 가로챔");
		// 세션에 현재 세션값을 추가하고
		HttpSession session = request.getSession();
		// 만약 loginStaff가 null이라면 (로그아웃 상태라면)
		if(session.getAttribute("loginStaff") == null) {
			// off/login 페이지로 보내버리고
			response.sendRedirect(request.getContextPath() + "/off/login"); // /off/login.jsp
			// false 값을 리턴함
			return false;
		}
		// 로그인을 했으면 preHandle 메서드를 호출
		return HandlerInterceptor.super.preHandle(request, response, handler);
	}
	
}
