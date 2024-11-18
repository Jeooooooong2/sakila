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
<body>
    <h1>고객 상세 정보</h1>
    <table>
        <tr><th>Customer ID</th><td>${customer.customerId}</td></tr>
        <tr><th>First Name</th><td>${customer.firstName}</td></tr>
        <tr><th>Last Name</th><td>${customer.lastName}</td></tr>
        <tr><th>Email</th><td>${customer.email}</td></tr>
        <tr><th>Active</th><td>${customer.active}</td></tr>
        <tr><th>Create Date</th><td>${customer.createDate}</td></tr>
        <tr><th>Last Update</th><td>${customer.lastUpdate}</td></tr>
    </table>
</body>
</html>