package com.example.sakila.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.example.sakila.vo.Staff;

@Mapper
public interface StaffMapper {
	// on/staffOne.jsp
	Map<String, Object> selectStaffOne(int staffId);
	
	
	
	
	// 로그인할 때
	Staff login(Staff staff);
}
