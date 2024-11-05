<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<style>
    .sidebar {
            height: 100vh; /* 전체 높이 */
            position: fixed; /* 고정 위치 */
            top: 0;
            left: 0;
            padding: 20px; /* 패딩 추가 */
            background-color: #f8f9fa; /* 배경 색상 */
        }
        
    a {
    		text-decoration: none;
   		}
</style>
<div class="sidebar">
    <ul class="list-group text-center">
        <li class="list-group-item"><a href="${pageContext.request.contextPath}/on/main">홈으로</a></li>
        <li class="list-group-item"><a href="${pageContext.request.contextPath}/on/staffOne">${loginStaff.username} 님</a></li>
        <li class="list-group-item"><a href="${pageContext.request.contextPath}/on/logout">로그아웃</a></li>
        
        <li class="list-group-item">::: 스탭 관리 :::</li>
        <li class="list-group-item"><a href="${pageContext.request.contextPath}/on/staffList">스텝 리스트</a></li>
        <li class="list-group-item"><a href="${pageContext.request.contextPath}/on/addStaff">스텝 추가</a></li>
        <li class="list-group-item"><a href="${pageContext.request.contextPath}/on/staffEdit">스텝 수정</a></li>
        
        <li class="list-group-item">::: 고객 관리 :::</li>
        <li class="list-group-item"><a href="${pageContext.request.contextPath}/on/customerAdd">고객 추가</a></li>
        <li class="list-group-item"><a href="${pageContext.request.contextPath}/on/customerEdit">고객 수정</a></li>
        
        <li class="list-group-item">::: 배우 관리 :::</li>
        <li class="list-group-item"><a href="${pageContext.request.contextPath}/on/actorList">배우 리스트</a></li>
        <li class="list-group-item"><a href="${pageContext.request.contextPath}/on/addActor">배우 추가 </a></li>
    </ul>
</div>



<%-- <div>
		<span style="font-weight: bold;"> ${loginStaff.username} </span> 님 환영합니다
	</div>
	<div>
		<a href="${pageContext.request.contextPath}/on/logout"> 로그아웃 </a>
	</div> --%>