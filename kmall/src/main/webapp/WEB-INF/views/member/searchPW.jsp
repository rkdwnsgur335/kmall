<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="/resources/css/login.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    <title>Login Page</title>
    <%@include file="/WEB-INF/views/include/navigation.jsp" %>
</head>

<body>
    <div id="content" style="width: 350px;">
    <br>
    <h3 style="margin-bottom: 20px;">임시 비밀번호 발급</h3><hr>
    <p>이메일아이디와 휴대폰 번호를 입력해주세요.</p>
    <p>해당 이메일로 임시비밀번호를 발급 해드립니다.</p>
        <form id="SearchPWForm" action="resultPW" method="post">
			<input type="text" class="form-control mt-4" id="mem_id" name="mem_id" placeholder="이메일 아이디 입력">
			<input type="text" class="form-control mt-4" id="mem_phone" name="mem_phone" placeholder="핸드폰 번호 입력">
            <button type="submit" class="btn btn-dark btn-block mt-4">임시 비밀번호 발급</button>
        </form>
    </div>
        <!-- footer -->
    <%@include file="/WEB-INF/views/include/footer.jsp" %>
    <script>
    $(document).on("keyup", "#mem_phone", function() { 
	
    //자동 하이픈 삽입 구문
    $(this).val( $(this).val().replace(/[^0-9]/g, "").replace(/(^02|^0505|^1[0-9]{3}|^0[0-9]{2})([0-9]+)?([0-9]{4})$/,"$1-$2-$3").replace("--", "-") );
    });

	</script>
</body>

    