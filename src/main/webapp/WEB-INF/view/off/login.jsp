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
<style>

@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);

* {
    margin: 0;
    padding: 0;
    font-family: 'Noto Sans KR', sans-serif;
}

html,
body {
    height: 100%;
}

body {
    background-color: #f5f5f5;
}

a {
    text-decoration: none;
}

#content {
    position: relative;
    top: calc(50vh - 270px);
    width: 500px;
    height: 500px;
    background-color: rgba(255, 255, 255, 0.5);

    border-radius: 20px;
    border: solid 1px rgba(0, 0, 0, 0.08);
    box-shadow: 0 0 50px 0 rgba(0, 0, 0, 0.04);
    margin: 0 auto;

    text-align: center;

}

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

.login_input_text::placeholder {
    color: #c6c6c6;

}

.login_input_btn {
    width: 330px;
    height: 50px;
    border-radius: 11px;
    background-color: #5f29e2;
    font-weight: bold;
    border: none;
    color: white;
    font-size: 16px;
    cursor: pointer;

}

.login_input_btn:hover {
    background-color: #410BC4;

}

.small {
   font-size: 20px;
    color: red;
    font-weight: bold;
    }

@media screen and (max-width: 768px) {
    #content {
        width: 100%;
        height: auto;
        background-color: rgba(255, 255, 255, 0);
        border: none;
        box-shadow: none;

    }
    .login_input_text, .login_input_btn {
        width: 80%;
    }
}


</style>
</head>
<body class="container" id="content"  style="padding: 110px 0px;">
	<h1> staff login </h1>
	<small class="small"> ${msg} </small>
	<form id="form" action="${pageContext.request.contextPath}/off/login" method="post">
	  <div class="mb-3 mt-3">
	    <input type="text" class="login_input_text" id="staffId" name="staffId" placeholder="ID">
	  </div>
	  <div class="mb-3">
	    <input type="password" class="login_input_text" id="password" name="password" placeholder="Password">
	  </div>
	  <button id="btn" type="button" class="login_input_btn">Submit</button>
	</form>
</body>

<script>
	// btn 버튼 클릭 시 폼값 유효성 검사 >> 직접 하기 : 무조건 숫자여야 하고, 공백만 아니면 된다.
	$('#btn').click(function(){
	    console.log('click');
	    // 숫자가 아니면 isNaN() or $.isNumeric
	    if($.isNumeric($('#staffId').val()) == false){
	        alert('staffId는 숫자만 입력 가능');
	    } else if($('#password').val().length < 4 ){
	        alert('password는 4자 이상 가능');
	    } else {
	        $('#form').submit();
	    }
	});


</script>
</html>