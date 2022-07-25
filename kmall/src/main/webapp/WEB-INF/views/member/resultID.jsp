<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="/resources/css/login.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" >
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <title>Login Page</title>
    <%@include file="/WEB-INF/views/include/navigation.jsp" %>
</head>

<body>
    <div id="content" style="width: 350px;">
    <br>
    <h3 style="margin-bottom: 20px;">이메일 찾기 결과</h3><hr>
    <c:if test="${mem_id != null }">
    	<p>해당 번호로 가입된 아이디는</p><br>
    	<p>****${fn:substring(mem_id,4,fn:length(mem_id)) }입니다.</p>
    	<button type="submit" class="btn btn-dark btn-block mt-4" onclick="location.href='/member/login'">로그인 하러 가기</button>
    </c:if>
    
    <c:if test="${mem_id == null }">
    	<p>해당번호로 가입된 아이디가 존재하지 않습니다.</p><br>
    	<button type="submit" class="btn btn-dark btn-block mt-4" onclick="location.href='/member/searchID'">뒤로 가기</button>
    </c:if>
    </div>
        <!-- footer -->
    <%@include file="/WEB-INF/views/include/footer.jsp" %>
    <script>
$(document).ready(function(){


	});

	</script>
</body>

    