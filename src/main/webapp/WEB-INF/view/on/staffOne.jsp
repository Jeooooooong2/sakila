<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>
.login_input_text {
    width: 330px;
    height: 50px;
    border-radius: 11px;
    border: solid 1px #dfdfdf;
    background: #fff;
    margin-top: -5px;
    margin-bottom: 15px;
    padding: 15px;
    box-sizing: border-box;
    font-size: 16px;
}
</style>
</head>
<body class="container-flud">
	<div class="row">
		<div class="col-sm-2">
			<!--  leftMenu.jsp include -->
			<c:import url="/WEB-INF/view/on/inc/leftMenu.jsp"></c:import>
		</div>
		<div class="col-sm-10">
			<!--  main content -->
		<div>
			<h1> staff One </h1>
		</div>
	
		<div class="pb-3">
			<div style="text-align: center;">
				<img src="${pageContext.request.contextPath}/img/test2.jpg" alt="Test Image" style=" width: 200px; height: 200px; border-radius: 50%;">
			</div>
			<div class="pt-3" style="text-align: center;">
				<p>Staff ID: ${staff.staffId}</p>
			</div>
		</div>
		<div style="display: flex;justify-content: space-evenly;">
			<div class="mb-3 mt-3">
				<p> First Name : </p>
			 	<input type="text" class="login_input_text" value="${staff.firstName}">
			</div>
			<div class="mb-3 mt-3">
			 	<p> Last Name : </p>
			 	<input type="text" class="login_input_text" value="${staff.lastName}">
			 </div>
		</div>
		<div style="display: flex;justify-content: space-evenly;">
			<div class="mb-3 mt-3">
		 		<p> Address ID : </p>
		 		<input type="text" class="login_input_text" value="${staff.addressId}">
			</div>
			<div class="mb-3 mt-3">
		 		<p> Email : </p>
				<input type="text" class="login_input_text" value="${staff.email}">
			</div>
		</div>
		<div style="display: flex;justify-content: space-evenly;">
			<div class="mb-3 mt-3">
		 		<p> Store ID : </p>
		 		<input type="text" class="login_input_text" value="${staff.storeId}">
			</div>
			<div class="mb-3 mt-3">
		 		<p> Username : </p>
		 		<input type="text" class="login_input_text" value="${staff.username}">
			</div>
		</div>
		<div style="display: flex;justify-content: space-evenly;">
			<div class="mb-3 mt-3">
		 		<p> Store ID : </p>
		 		<input type="text" class="login_input_text" value="${staff.storeId}">
			</div>
			<div class="mb-3 mt-3">
		 		<p> Store Address : </p>
		 		<input type="text" class="login_input_text" value="${staff.storeAddress}">
			</div>
		</div>
		<div style="display: flex;justify-content: space-evenly;">
			<div class="mb-3 mt-3">
		 		<p> Manager Staff ID : </p>
		 		<input type="text" class="login_input_text" value="${staff.managerStaffId}">
			</div>
			<div class="mb-3 mt-3">
		 		<p> Manager Name : </p>
		 		<input type="text" class="login_input_text" value="${staff.managerName}">
			</div>
		</div>
	
	 
	<%-- <p>Last Name: ${staff.lastName}</p>
	<p>Address ID: ${staff.addressId}</p>
	<p>Email: ${staff.email}</p>
	<p>Store ID: ${staff.storeId}</p>
	<p>Username: ${staff.username}</p>
	<p>Last Update: ${staff.lastUpdate}</p>
	<p>스토어 정보: ${staff.storeId}</p>
	<p>스토어 주소: ${staff.storeAddress}</p>
	<p>매니저 Id: ${staff.managerStaffId}</p>
	<p>매니저 이름: ${staff.managerName}</p> --%>
		</div>
	</div>
	
</body>
</html>