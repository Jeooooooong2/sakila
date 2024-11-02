package com.example.sakila;

import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

// Spring Boot의 SpringBootServletInitializer를 확장하여 웹 애플리케이션 컨텍스트를 초기화하는 역할
public class ServletInitializer extends SpringBootServletInitializer {

	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(SakilaApplication.class);
	}

}
