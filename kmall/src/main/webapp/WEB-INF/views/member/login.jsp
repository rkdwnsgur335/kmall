<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="/resources/css/login.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <title>Login Page</title>
    <%@include file="/WEB-INF/views/include/navigation.jsp" %>
</head>

<body>
    <div id="content" style="width: 350px;">
    <img class="logo" src="images/logo.png">
        <form>
			<input type="email" class="form-control mb-3" id="mem_id" placeholder="Email">
		    <input type="password" class="form-control mb-3" id="mem_pw" placeholder="password">
		    <div class="form-check mb-3">
			  <input class="form-check-input" type="checkbox" value="" id="defaultCheck1">
			  <label class="form-check-label" for="defaultCheck1">
			    	로그인 유지하기
			  </label>
			</div>
            <button type="submit" class="btn btn-dark btn-block">로그인</button>
        </form>
        <div class="find_info"><br>
            <a id="find_id" href="#">아이디 찾기</a><a> |</a>
            <a id="find_password" href="#">비밀번호 찾기</a><br><br>
            <a class="sub_font_style" href="#"><b style="color:#7b7b7b">개인정보처리방침</b></a><br>
            <a class="question" href="#">회원 정보 문의: admin@site.net</a>
        </div>
        <p id="copyright">Copyright © Jun All Rights Reserved.</p>
    </div>
</body>

    