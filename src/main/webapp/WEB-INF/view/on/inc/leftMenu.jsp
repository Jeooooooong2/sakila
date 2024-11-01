<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="bg-light">
	<ul class="list-group text-center">
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/on/main"> 홈으로 </a></li>
	   <li class="list-group-item"><a href="${pageContext.request.contextPath}/on/staffOne"> ${loginStaff.username} 님</a></li>
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}/on/logout"> 로그아웃 </a></li>
	  
	  <li class="list-group-item"> ::: 스탭 관리 ::: </li>
	  <li class="list-group-item"><a href="${pageContext.request.contextPath}"> 스텝 추가 </a></li>
	  <li class="list-group-item"><a href="$"> 스텝 수정 </a></li>
	  
	   <li class="list-group-item"> ::: 고객 관리 ::: </li>
	  <li class="list-group-item"><a href="$"> 고객 추가 </a></li>
	  <li class="list-group-item"><a href="$"> 고객 수정 </a></li>
	</ul>
</div>



<%-- <div>
		<span style="font-weight: bold;"> ${loginStaff.username} </span> 님 환영합니다
	</div>
	<div>
		<a href="${pageContext.request.contextPath}/on/logout"> 로그아웃 </a>
	</div> --%>