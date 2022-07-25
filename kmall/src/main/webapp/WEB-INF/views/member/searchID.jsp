<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!doctype html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link href="/resources/css/login.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
    <title>Login Page</title>
    <%@include file="/WEB-INF/views/include/navigation.jsp" %>
</head>

<body>
    <div id="content" style="width: 350px;">
    <br>
    <h3 style="margin-bottom: 20px;">이메일 아이디 찾기</h3><hr>
    <p>가입시 등록한 휴대폰 번호를 입력해주세요.</p>
        <form id="loginForm" action="resultID" method="post">
			<input type="text" class="form-control mt-4" id="mem_phone" name="mem_phone" placeholder="핸드폰 번호 입력">
		    <div class="form-check mb-3">
			</div>
            <button type="submit" class="btn btn-dark btn-block mt-4">이메일 아이디 찾기</button>
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

    