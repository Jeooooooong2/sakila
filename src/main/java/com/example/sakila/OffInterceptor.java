package com.example.sakila;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Component
public class OffInterceptor implements HandlerInterceptor{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 로그인이 되어 있다면
		log.debug(request.getRequestURL().toString() + "요청 가로챔");
		// 로그인을 하지 않았다면 session.setAttribute("loginStaff")
		HttpSession session = request.getSession();
		// loginStaff 가 null이 아니라면 (로그인이 되어있다면)
		if(session.getAttribute("loginStaff") != null) {
			// on/main 페이지로 이동시키고
			response.sendRedirect(request.getContextPath() + "/on/main");
			// false를 리턴한다.
			return false;
		}
		// 로그아웃 상태라면 preHandle 메서드 호출
		return HandlerInterceptor.super.preHandle(request, response, handler);
	}
}



// 수업 마칠 때 커밋 앤 푸시 같이 하고 수업 시작 전에 pull이나 패치 해주기
