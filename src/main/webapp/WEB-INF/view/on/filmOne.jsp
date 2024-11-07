<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

    <meta charset="UTF-8">
    <title>Film Details</title>
</head>
<body class="container-fluid">
    <div class="row">
        <div class="col-sm-2 bg-light">
            <!-- leftMenu.jsp include -->
            <c:import url="/WEB-INF/view/on/inc/leftMenu.jsp"></c:import>
        </div>
        
        <div class="col-sm-10">
            <!-- main content -->
            <h1>FILM ONE</h1>
            
            <!-- Film Details Table -->
            <h2>영화 정보</h2>
            <table class="table">
                <tr>
                    <th>필드</th>
                    <th>값</th>
                </tr>
                <tr>
                    <td>영화 ID</td>
                    <td>${film.filmId}</td>
                </tr>
                <tr>
                    <td>제목</td>
                    <td>${film.title}</td>
                </tr>
                <tr>
                    <td>설명</td>
                    <td>${film.description}</td>
                </tr>
                <tr>
                    <td>최종 업데이트</td>
                    <td>${film.lastUpdate}</td>
                </tr>
                <!-- 추가 필드가 필요하면 여기에 더 추가 -->
            </table>
            <div>
            	<a href=""> 영화 수정</a>
            
            </div>
            <!-- Actors Table -->
            <h2>작품에 출연한 배우들</h2>
            <table class="table">
                <thead>
                    <tr>
                        <th>배우 이름</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="a" items="${actorList}">
                        <tr>
                            <td>
                                <a href="${pageContext.request.contextPath}/on/actorOne?actorId=${a.actorId}">
                                    ${a.firstName} ${a.lastName}
                                </a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
