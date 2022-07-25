<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
    <title>How To create Sign Up and Registration Form HTML Using Bootstrap 4</title>
<!-- CSS -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <%@include file="/WEB-INF/views/include/navigation.jsp" %>
</head>
<script>

</script>
<body>
<div class="container row" style="float: none; margin:auto;">
 <div class="col-md-4" style="float: none; margin:0 auto;">
        <!-- Sign Up form -->
        <form id="joinForm" action="join" method="post" class="Signup mt-5">
          <h3 style="text-align: center">회원가입</h3>
            <hr>
 
          <div class="input-group mb-3">
			  <div class="input-group-prepend">
			  </div>
			  <input type="text" class="form-control" placeholder="ID입력" name="mem_id" id="mem_id">
         <div class="invalid-feedback">
            	이메일 형식으로 작성해주세요.
         </div>
		    </div>
          
      		<div class="input-group mb-3">
			  <div class="input-group-prepend">
			  </div>
			  <input type="password" class="form-control" placeholder="PW입력" name="mem_pw" id="mem_pw">
		    </div>
		    
		    <div class="input-group mb-3">
			  <div class="input-group-prepend">
			  </div>
			  <input type="password" class="form-control" placeholder="PW확인" id="mem_psw">
         <div class="invalid-feedback">
            	비밀번호와 똑같이 입력해주세요.
         </div>
		    </div>
		    
		    <div class="input-group mb-3">
			  <div class="input-group-prepend">
			  </div>
			  <input type="text" class="form-control" placeholder="이름입력" name="mem_name" id="mem_name">
		    </div>
		    
		    <div class="input-group mb-3">
			  <div class="input-group-prepend">
			  </div>
			  <input type="text" class="form-control" placeholder="핸드폰 번호 입력" name="mem_phone" id="mem_phone">
		    </div>
		    		    			                         
          
           <div class="input-group mb-3">
			  <div class="input-group-prepend">
			    <button class="btn btn-outline-secondary" type="button" id="button-addon1" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">주소찾기</button>
			  </div>
			  <input type="text" class="form-control" placeholder="우편번호 입력" name="mem_zipcode" id="sample6_postcode">
			</div>
          
		    <div class="input-group mb-3">
			  <div class="input-group-prepend">
			  </div>
			  <input type="text" class="form-control" placeholder="주소입력" name="mem_addr" id="sample6_address">
		    </div>

		    <div class="input-group mb-3">
			  <div class="input-group-prepend">
			  </div>
			  <input type="text" class="form-control" placeholder="상세주소 입력" name="mem_addr_d" id="sample6_detailAddress">
			  <input type="hidden" id="sample6_extraAddress" placeholder="참고항목">
		    </div>
		    
		 
          <div class="form-group mb-3">
            <label class="term-policy"><input type="checkbox" name="mem_accept_e" value="Y">메일 수신 동의</label>
          </div>
          
          <button type="submit" id="submitbtn"  class="btn btn-outline-dark btn-block">Signup</button>
          
          <hr>
          <div class="form-group">
            <p class="not-yet">Already have an account? <a href="/member/login">Login</a></p>
          </div>
        </form>
    </div>
  </div>
</body>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } else {
                    document.getElementById("sample6_extraAddress").value = '';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode;
                document.getElementById("sample6_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("sample6_detailAddress").focus();
            }
        }).open();
    }
</script>

<script>

//닉네임의 유효성 여부를 저장할 변수
var regExp = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{3,}))$/;

let idjoin=false;

		
		//아이디(이메일 형식) 유효성 검사 
		document.querySelector("#mem_id").addEventListener("input", function(){
		    //1. 입력한 value 값을 읽어온다.
		    let inputMail=this.value;
		    //2. 유효하지 않다면 input요소에 is-invalid추가, 유효하다면 is-invalid제거
		    if(!regExp.test(inputMail)){
		       this.classList.add("is-invalid");
               return idjoin=false;
		    }else{
		       this.classList.remove("is-invalid");
               return idjoin=true;
		    }

});

		
	    $(document).ready(function(){
	    	
	    	$("#submitbtn").on("click", function(){
				
				if($("#mem_id").val() == "") {
					alert("아이디를 입력하세요");
					$("#mem_id").focus();
					return;
				}
			
			});
	    	
	    	
	    	

	        $('#submitbtn').on('click',function(e){

                if(idjoin == false){
                    alert("이메일 형식으로 ID를 입력해주세요.");
                    e.preventDefault();
                }

                console.log("통과");

	        });
	});
	    
	    document.querySelector("#mem_psw").addEventListener("input", function(){
            let inputpw= $('#mem_pw').val();
		    let inputpsw=this.value;

		    if(inputpw!=inputpsw){
		       this.classList.add("is-invalid");
               return pwjoin=false;
		    }else{
		       this.classList.remove("is-invalid");
               return pwjoin=true;
		    }

});	    

</script>
</html>