<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="/resources/css/login.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" >
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" ></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <title>Login Page</title>
    <!-- header -->
    <%@include file="/WEB-INF/views/include/navigation.jsp" %>
    
    <style type="text/css">

    </style>
    
    <!-- 검사 -->
    <script>
    	let msg = "${msg}";
    	if(msg == "idFailure"){
    		alert("아이디를 확인하세요.")
    	}else if(msg == "passwdFailure"){
    		alert("비밀번호를 확인하세요.")
    	}
    </script>
</head>

<body>
    <div id="content" style="width: 350px;">
    <img class="logo" src="images/logo.png" alt="로고이미지삽입">
        <form id="loginForm" action="login" method="post">
			<input type="text" class="form-control mb-3" id="mem_id" name="mem_id" placeholder="EmailID">
		    <input type="password" class="form-control mb-3" id="mem_pw" name="mem_pw" placeholder="password">
		    <div class="form-check mb-3 col-lg-6">
			  <input class="form-check-input text-left" type="checkbox" id="defaultCheck1">
			  <label class="form-check-label" for="defaultCheck1">
			    	로그인 유지하기
			  </label>
			</div>
            <button type="submit" class="btn btn-dark btn-block">로그인</button>
        </form>
        <div class="find_info"><br>
            <a id="find_id" href="/member/searchID">아이디 찾기</a><a> |</a>
            <a id="find_password" href="/member/searchPW">비밀번호 찾기</a><a> |</a>
            <a id="go_join" href="/member/join">회원가입</a><br><br>
            <a class="sub_font_style" href="#"><b style="color:#7b7b7b">개인정보처리방침</b></a><br>
            <a class="question" href="#">회원 정보 문의: admin@site.net</a>
        </div>
        <p id="copyright">Copyright © Jun All Rights Reserved.</p>
    </div>
    <!-- footer -->
    <%@include file="/WEB-INF/views/include/footer.jsp" %>
    <script>

		/* 로그인 */
	//html문서와 내용을 브라우저가 읽고 난 이후에 동작되는 특징
	$(document).ready(function(){

		let loginForm = $("#loginForm");

		//로그인 정보전송.  <button type="submit" id="btnJoin"> 클릭하면, 전송이벤트가 동작된다. <form>태그의 이벤트 설정
		$("#loginForm").on("submit", function(){

			console.log("로그인 진행");

			//유효성 검사작업 해야 함.
			if($("#mem_id").val() == ""){
				alert("아이디를 입력하세요.");
				$("#mem_id").focus();
				return false;
			}

			if($("#mem_pw").val() == ""){
				alert("비밀번호를 입력하세요.");
				$("#mem_pw").focus();
				return false;
			}

			return true;
		});

		
	});
		
	</script>
</body>

    