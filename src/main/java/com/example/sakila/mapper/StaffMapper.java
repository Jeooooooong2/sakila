package com.example.sakila.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.sakila.vo.Staff;

@Mapper
public interface StaffMapper {
	// on/staffOne.jsp
	Staff selectStaffOne(int staffId);
	
	
	
	
	// 로그인할 때
	Staff login(Staff staff);
}
