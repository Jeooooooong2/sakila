<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="container-flud">
	<div class="row">
		<div class="col-sm-2 bg-light">
			<!-- leftMenu.jsp include -->
			<c:import url="/WEB-INF/view/on/inc/leftMenu.jsp"></c:import>
		</div>
		
		<div class="col-sm-10">
			<!-- main content -->
			<h1>ACTOR LIST</h1>
			<table class="table table-striped">
				<tr>
					<td>actorId</td>
					<td>name</td>
				</tr>
				<c:forEach var="a" items="${actorList}">
					<tr>
						<td>${a.actorId}</td>
						<td>
							<a href="${pageContext.request.contextPath}/on/actorOne?actorId=${a.actorId}">
								${a.firstName} ${a.lastName}
							</a>
						</td>
					</tr>
				</c:forEach>
			</table>
			<form id="formSearch" action="${pageContext.request.contextPath}/on/actorList" method="get">
				<input type="text" name="searchWord" id="searchWord">
				<button id="btnSearch">이름검색</button>
			</form>
			<!-- 페이징 UI -->
			<nav aria-label="Page navigation">
				<ul class="pagination">
					<c:if test="${currentPage > 1}">
						<li class="page-item">
							<a class="page-link" href="${pageContext.request.contextPath}/on/actorList?page=${currentPage - 1}&rowPerPage=${rowPerPage}&searchWord=${param.searchWord}" aria-label="Previous">
								<span aria-hidden="true">&laquo;</span>
							</a>
						</li>
					</c:if>
					
					<c:forEach begin="1" end="${totalPages}" var="i">
						<li class="page-item <c:if test="${i == currentPage}">active</c:if>">
							<a class="page-link" href="${pageContext.request.contextPath}/on/actorList?page=${i}&rowPerPage=${rowPerPage}&searchWord=${param.searchWord}">${i}</a>
						</li>
					</c:forEach>
					
					<c:if test="${currentPage < totalPages}">
						<li class="page-item">
							<a class="page-link" href="${pageContext.request.contextPath}/on/actorList?page=${currentPage + 1}&rowPerPage=${rowPerPage}&searchWord=${param.searchWord}" aria-label="Next">
								<span aria-hidden="true">&raquo;</span>
							</a>
						</li>
					</c:if>
				</ul>
			</nav>
		</div>
	</div>
</body>
<script>
	$('#btnSearch').click(function(){
		if($('#searchWord').val() == '') {
			alert('검색어를 입력하세요');
			return;
		} 
		$('#formSearch').submit();
	});
</script>
</html>