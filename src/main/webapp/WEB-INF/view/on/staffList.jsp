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
.rowheader {background-color: #2980b9 !important; font-weight: 900;  color: #ffffff;}
tr td {width: 200px; height: 50px;}
td {border-bottom: 1px solid #ddd; }
tr {text-align: center;}
</style>
</head>
<body class="container-fluid">
	<div class="row">
		<div class="col-sm-2">
			<!--  leftMenu.jsp include -->
			<c:import url="/WEB-INF/view/on/inc/leftMenu.jsp"></c:import>
		</div>
		<div class="col-sm-10">
			<!--  main content -->
			<h1> staffList </h1>
			
			<table class="table-striped">
				<tr class="rowheader">
					<td>staffId</td>
					<td>firstName</td>
					<td>lastName</td>
					<td>addressId</td>
					<td>email</td>
					<td>storeId</td>
					<td>username</td>
					<td>lastUpdate</td>
					<td>active</td>
				</tr>	
			<c:forEach var = "s" items="${staffList}">
				<tr>
					<td>${s.staffId}</td>
					<td>${s.firstName}</td>
					<td>${s.lastName}</td>
					<td>${s.addressId}</td>
					<td>${s.email}</td>
					<td>${s.storeId}</td>
					<td>${s.username}</td>
					<td>${s.lastUpdate}</td>
					<td>${s.active}</td>
					<td>
						<a href="">
							<c:if test="${s.active == 1}"> 비활성화 </c:if>
							<c:if test="${s.active == 0}"> 활성화 </c:if>
						</a>
					</td>
				</tr>
			</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>