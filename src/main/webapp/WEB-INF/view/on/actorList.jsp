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
</head>
<body class="container-fluid">
	<div class="row">
		<div class="col-sm-2">
			<!--  leftMenu.jsp include -->
			<c:import url="/WEB-INF/view/on/inc/leftMenu.jsp"></c:import>
		</div>
		<div class="col-sm-10">
			<!--  main content -->
			<h1> Actor list </h1>
			
			<table class="table table-striped">
				<tr>
					<td>actorId</td>
					<td>originname</td>
					<td>filename</td>
					<td>ext</td>
					<td>type</td>
					<td>size</td>
				</tr>	
			<c:forEach var = "a" items="${actorList}">
				<tr>
					<td>${a.actorId}</td>
					<td>${a.originname}</td>
					<td>${a.filename}</td>
					<td>${a.ext}</td>
					<td>${a.type}</td>
					<td>${a.size}</td>
				</tr>
			</c:forEach>
			</table>
		</div>
	</div>
</body>
</html>