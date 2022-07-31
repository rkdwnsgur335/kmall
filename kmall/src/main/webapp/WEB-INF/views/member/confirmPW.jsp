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
    <title>shoemall</title>
    <!-- header -->
    <%@include file="/WEB-INF/views/include/navigation.jsp" %>
    
    <style type="text/css">

    </style>
   

</head>

<body>
    <div id="content" style="width: 350px;">
    	<h3>비밀번호 확인</h3><hr>
    	<p>비밀번호를 입력해 주세요.</p>
        <form id="loginForm" action="confirmPW" method="post">
		    <input type="hidden" class="form-control" id="mem_id" name="mem_id" value="${sessionScope.loginStatus.mem_id }" readonly>
		    <input type="password" class="form-control mb-3" id="mem_pw" name="mem_pw" placeholder="password">
            <button type="submit" class="btn btn-dark btn-block">확인</button>
        </form>
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

			if($("#mem_pw").val() == ""){
				alert("비밀번호를 입력하세요.");
				$("#mem_pw").focus();
				return false;
			}

			return true;
		});

		
	});
		
		

	let msg = "${msg}";
	if(msg == "noPW"){
		alert("비밀번호가 올바르지 않습니다.")
	}

		
	</script>
</body>

    