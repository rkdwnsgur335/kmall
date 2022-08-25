<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <!-- Bootstrap core CSS -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">


	<!-- bundle -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="/resources/js/bootstrap.bundle.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>

	<!-- moment -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.4/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.24.0/locale/ko.js"></script>

<%@include file="/WEB-INF/views/include/navigation.jsp" %>

<style>


 /* 상품후기 별 평점*/
      /*별평점 기본스타일*/
      .star_rv_score a.rv_score {
        font-size: 22px;
        text-decoration: none;
        color: lightgray;
      }

	  /*별 평점 클릭시 jquery의  addClass(), removeClass() 메서드를 이용하여 사용할 css선택자.*/
      .star_rv_score a.rv_score.on {
		color: red;
      }

      
	.buttonbox a{
		background-color:#ededed;
		border-radius:20px;
		border:1px solid #ededed;
		display:inline-block;
		cursor:pointer;
		color:#000000;
		font-family:Trebuchet MS;
		font-size:12px;
		padding:3px 10px;
		text-decoration:none;
		text-shadow:0px 0px 0px #e1e2ed;
		}

	.buttonbox a:hover{
		text-decoration: none;
		color: black;
	}	
	
	.buttonbox a {
		position:relative;
		top:1px;
	}
	
	.modify {
		position:relative;
		top:1px;
	}

	
	.modify {
		margin-right: 3px;
	}

	.submit {
		margin-right: 3px;
	}
	
	#viewstar {
		color: red;
		font-size: 20px;
	}
	
	#viewdate{
		margin-right: 70%;
		font-size: .23em;
		color:gray;
	}
	
	#reviewbox{
		border: 2px solid;
		color: lightgray;
		border-radius: 6px;
	}
	
	#btnReviewWrite{
		background:linear-gradient(to bottom, #ededed 5%, #ededed 100%);
		background-color:lightgray;
		display:inline-block;
		cursor:pointer;
		color:#000000;
		font-family:Trebuchet MS;
		font-size:17px;
		padding:13px 30px;
		text-decoration:none;
		text-shadow:0px 1px 0px #e1e2ed;
	}
</style>



<script id="reviewTemplate" type="text/x-handlebars-template">
    {{#each .}}
	{{div rv_num}}
      <div class="d-flex w-100 justify-content-between mt-3 style=height: 55px;">
          <h6>{{idfourdisplay mem_id}}</h6>
		<small id="viewdate">{{prettifyDate rv_date_reg}}</small>
          <p>
			<span id="viewstar">{{displayStar rv_score}}</span>
      <input type="hidden" name="rv_score" value="{{rv_score}}">
		  </p>
      </div>
      <div class="d-flex w-100 justify-content-between">
        <p class="mb-1"><span class="rv_content">{{rv_content}}</span></p>
        <p class="buttonbox">
        {{modifyview mem_id rv_num}}{{deleteview mem_id rv_num}}
        </p>
      </div>			   
    </div>
</div>
    <hr style="margin-bottom: 0px; margin-top: 0px;">
  {{/each}}
  </script>
</head>
<body>
<section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6">
                    <img src="/user/product/displayFile?folderName=${productVO.pdt_img_folder }&fileName=${productVO.pdt_img }" 
	      			alt="" class="bd-placeholder-img card-img-top" width="100%" onerror="this.onerror=null; this.src='/image/no_images.png'">
                    </div>
                    <div class="col-md-6">
                        <div class="small mb-1">${productVO.pdt_gender }</div>
                        <h1 class="display-5 fw-bolder">${productVO.pdt_name }</h1>
                        <div class="fs-5 mt-5">
                            <span class="text-decoration-line-through" style="margin-right: 50px;">판매가</span>
                            <span>${productVO.pdt_price }원</span>
                            <input type="hidden" id="pdt_num" value="${productVO.pdt_num }">
                        </div>
                        <div class="fs-5 mb-5">
                            <span class="text-decoration-line-through" style="margin-right: 50px;">배송비</span>
                            <span>무료</span>
                        </div>
                        <div class="fs-5 mb-5">
								<tr>
								    <th scope="row">
								       <span class="text-decoration-line-through" style="margin-right: 50px;">수량</span>
								    </th>
								    <td>
								    	<input type="number" class="form-control w-25" id="pdt_amount" min="1" value="1">
								        <!--<select option_select_element="ec-option-select-finder" option_sort_no="1" option_type="T" item_listing_type="S" product_type="product_option" id="pdt_amount" option_style="select" required="true">
								            <option value="*" selected="">- [필수] 옵션을 선택해 주세요 -</option>
								            <option value="**" disabled="">-------------------</option>
								        <option value="230">230</option>
								            <option value="235">235</option>
								            <option value="240">240</option>
								            <option value="245">245</option>
								            <option value="250">250</option>
								            <option value="255">255</option>
								            <option value="260">260</option>
								            <option value="265">265</option>
								            <option value="270">270</option>
								            <option value="275">275</option>
								            <option value="280">280</option>
								            <option value="285">285</option>
								            <option value="290">290</option>
								            <option value="300">300</option>
								            <option value="305">305</option>
								            <option value="310">310</option> 
								        </select>-->
								      <p class="value"></p>
								 </td>
							</tr>
                        </div>
                        <div class="d-flex">      
                            <button type="button" id="btnCart" class="btn btn btn-light mr-1">ADD TO CART</button>
							<button type="button" id="btnOrder" class="btn btn-outline-dark btn-lg">BUY NOW</button>
                        </div>
                    </div>
                </div>
                
               
                
                
                
                <ul class="nav nav-tabs" id="myTab" role="tablist">
				  <li class="nav-item" role="presentation">
				    <button class="nav-link active" id="home-tab" data-toggle="tab" data-target="#home" type="button" role="tab" aria-controls="home" aria-selected="true">상품상세</button>
				  </li>
				  <li class="nav-item" role="presentation">
				    <button class="nav-link" id="profile-tab" data-toggle="tab" data-target="#profile" type="button" role="tab" aria-controls="profile" aria-selected="false">리뷰</button>
				  </li>
				</ul>
				
				<div class="tab-content" id="myTabContent">
				  <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
				<p style="text-align: center;">${productVO.pdt_detail }</p>
				</div>
				  <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
					<!--상품후기 출력위치-->
					 <div id="reviewListResult">
		         
		      		 </div>
					
					
				 	<form class="mb-3 justify-content-end"  name="myform" id="myform" method="post">
			 			<!--상품후기 페이징 출력위치-->
				        <div>
				          <nav aria-label="Page navigation example">
				            <ul class="pagination mt-3" id="reviewPagingResult">
				            </ul>
				          </nav>
				        </div>
				        <h5 class="text-bold">리뷰작성</h5>
				        <div id="reviewbox">	 
						<fieldset>
					            <p class="star_rv_score">
					            	<a class="rv_score" style="margin-left: 13px;" href="#">★</a>
					            	<a class="rv_score" href="#">★</a>
					            	<a class="rv_score" href="#">★</a>
					            	<a class="rv_score" href="#">★</a>
					            	<a class="rv_score" href="#">★</a>
					            </p>  
						</fieldset>
							<input type="hidden" id="pdt_num" value="${productVO.pdt_num }">
						
							<textarea class="form-control" id="rv_content" name="rv_content" style="border: none; height: 48px; width: 97.5%; margin-left:13px;" placeholder="댓글 작성칸"></textarea>
							<input type="hidden" name="rv_num" id="rv_num">
							<div id="whitebox" style="margin-top: 20px">
							</div>
							<div style="border-top: 2px solid; color: lightgrey;">
							<a type="button" id="btnReviewWrite">리뷰등록</a>	
							</div>
						</div>
					</form>
				  </div>
			    </div>
			    
			    
 
            </div>
        </section>
        
        


<script>

$(function(){
	
    // 직접구매 버튼 클릭시. non-ajax
    $("#btnOrder").on("click", function(){

      let pdt_num = $("#pdt_num").val(); // 구매상품코드
      let odr_amount = $("#pdt_amount").val(); // 구매수량

      let url = "/user/order/orderListInfo?pdt_num="+pdt_num+"&odr_amount="+odr_amount+"&type=direct";
      //console.log("직접구매 주소: " + url);
      location.href = url;

    });
	
	// 평점 별 클릭시 색상변경
	$(".star_rv_score a.rv_score").on("click", function(e){

		e.preventDefault();
		
		$(this).parent().children().removeClass("on"); // 별평점 <a>태그에 on 클래스선택자를 제거
		$(this).addClass("on").prevAll("a").addClass("on")

	});
	
	
	
	//장바구니 담기
    $("#btnCart").on("click", function(){

      $.ajax({
        url : '/user/cart/cart_add',
        data: { pdt_num : $("input#pdt_num").val(), cart_amount : $("input#pdt_amount").val()},
        dataType: 'text',
        success: function(result) {
          if(result == "success") {
            alert("장바구니에 추가되었습니다.");
            if(confirm("장바구니로 이동하시겠습니까?")) {
              location.href = "/user/cart/cart_list";
            }

          }
        }
      });
    });
	
});
		

		
		
		
		
		//상품후기쓰기 버튼 클릭
	      $("#btnReviewWrite").on("click", function(){
	        
	        
	        let rv_score = 0;
	        let rv_content = $("#rv_content").val();
	        let pdt_num = $("#pdt_num").val();

	        // 별평점이 5개
	        $(".star_rv_score a.rv_score").each(function(index, item){
	          if($(this).attr('class') == 'rv_score on') {
	            rv_score += 1;
	          }
	        });

	        console.log("별 평점: " + rv_score );

	        if(rv_score == 0){
	          alert("별 평점을 선택해주세요.");
	          return;
	        }

	        if(rv_content == "") {
	          alert("상품후기를 입력하세요.");
	          return;
	        }

	        //자바스트립트 Object객체 구문
	        let data = { pdt_num : pdt_num, rv_content : rv_content, rv_score : rv_score };
	        
	        $.ajax({
	          url: '/user/review/new',
	          /*컨트롤러에서 전송데이터 포맷이 설정되어 있으므로, 클라이언트에서 보내는 데이터의 MIME설정을 헤더에 추가해야 한다. */
	          headers: {
	              "Content-Type" : "application/json", "X-HTTP-Method-Override" : "POST"
	            },
	          type: 'post',
	          dataType: 'text',
	          data : JSON.stringify(data), /* JSON 문자열데이타 */
	          success : function(result) {
	            if(result == "success") {
	              alert("상품후기가 등록됨.");
	              
	              //상품후기 목록
	              reviewPage = 1;

	              url = "/user/review/list/" + $("#pdt_num").val() + "/" + reviewPage;

	              getPage(url);
	              
	              $(".star_rv_score a.rv_score").parent().children().removeClass("on");
	              $("#rv_content").val("");

	            }
	          }
	        });
	        
	      });
		
	      let reviewPage = 1;
	      url = "/user/review/list/" + $("#pdt_num").val() + "/" + reviewPage;
	      
	      console.log("상품후기요청주소: " + url);
	      
	      getPage(url);
		
	      function getPage(pageInfo) {

	          $.getJSON(pageInfo, function(data) {
	            // console.log("목록: " + data.list[0].rv_num);
	            // console.log("페이지정보: " + data.pageMaker.startPage);

	            if(data.list.length > 0) {

	              //함수 : 상품후기목록
	              printReviewList(data.list, $("#reviewListResult"), $("#reviewTemplate"));
	              
	              //함수 : 페이징기능
	              printReviewPaging(data.pageMaker, $("#reviewPagingResult"));
	            }
	                	  
	          });
	        }
	      
	      
	    //상품후기 출력하는 함수
	      let printReviewList = function(reviewArrData, target, templateObj) {

	        //핸들바 코드가 존재하는 상품후기 디자인코드를 컴파일 함.
	        let template = Handlebars.compile(templateObj.html());

	        let html = template(reviewArrData); // 상품후기목록 데이타 + 상품후기UI템플릿 결합된 결과소스

	        target.children().remove();
	        target.append(html);
	      }
	    
	    

	    //상품후기 등록일 : 사용자정의 Helper함수.  템플릿에서 사용함.
	      Handlebars.registerHelper("prettifyDate", function(value) {
			

			var start = new Date(value);

			moment.locale("ko"); // 언어를 한국어로 설정
			return moment(start).fromNow(); // start부터 end까지 계산

			
	      });












	      //별평점 표시하기
	      Handlebars.registerHelper("displayStar", function(rating){

	        let stars = "";
	        switch(rating) {
	          case 1:
	            stars = "★ 1";
	            break;
	          case 2:
	            stars = "★ 2";
	            break;
	          case 3:
	            stars = "★ 3";
	            break;
	          case 4:
	            stars = "★ 4";
	            break;
	          case 5:
	            stars = "★ 5";
	            break;
	            
	        }

	        return stars;

	      });



	      // 아이디 4글자만 보여주기
	      Handlebars.registerHelper("idfourdisplay", function(userid){

	          return userid.substring(0, 4) + "*****";
	      });
	
	      
	    //로그인사용자와댓글작성자가 일치할 경우 수정,삭제버튼 표시
	      Handlebars.registerHelper("modifyview", function(review_mem_id, rv_num) {

	        let result = "";
	        let login_mem_id = "${sessionScope.loginStatus.mem_id}";
	        if (review_mem_id == login_mem_id) {
				result = "<a id='modify' class='modify' name='button_mnd' href='" + rv_num + "'>수정</a>";
	        }

	        return new Handlebars.SafeString(result);

	      });

	      Handlebars.registerHelper("deleteview", function(review_mem_id, rv_num) {

	      let result = "";
	      let login_mem_id = "${sessionScope.loginStatus.mem_id}";
	      if (review_mem_id == login_mem_id) {
	        result = "<a id='delete' class='delete' name='button_mnd' href='" + rv_num + "'>삭제</a>";
	        
	      }

	      return new Handlebars.SafeString(result);

	      });

		 Handlebars.registerHelper("div", function(rv_num) {

	      let result = "";


	        result = "<div id='rid"+rv_num+"' data-rvnum='"+rv_num+"'>";

	      return new Handlebars.SafeString(result);

	      });

	      
	    //상품후기 페이징 함수
	      let printReviewPaging = function(pageMaker, target) {

	        let pagingStr = "";

	        // 이전표시
	        if(pageMaker.prev) {
	          pagingStr += "<li class='page-item'><a class='page-link' href='" + (pageMaker.startPage - 1) + "'> << </a></li>";
	        }

	        //페이지번호 표시
	        for(let i= pageMaker.startPage; i <= pageMaker.endPage; i++) {
	          let classStr = pageMaker.cri.pageNum == i ? "active'" : "";
	          pagingStr += "<li  class='page-item " + classStr + "'><a  class='page-link' href='" + i + "'>" + i + "</a></i>";
	        }

	        // 다음표시
	        if(pageMaker.next) {
	          pagingStr += "<li class='page-item'><a class='page-link' href='" + (pageMaker.endPage + 1) + "'> >> </a></li>";
	        }

	        //console.log("페이지문자열: " + pagingStr);
	        target.children().remove();
	        target.append(pagingStr);
	      }
	    


		  //변경된 폼에서 확인 누를시 수정
		  $("#modifysubmit").on("click", function(){

			let rv_num = $("#rv_num").val();
	        let rv_score = 0;
	        let rv_content = $(".rv_content").val();
		 

			
			// 별평점이 5개
	        $(".star_rv_score a.rv_score").each(function(index, item){
	          if($(this).attr('class') == 'rv_score on') {
	            rv_score += 1;
	          }
	        });
			

	        console.log("별 평점: " + rv_score );

	        if(rv_score == 0){
	          alert("별 평점을 선택해주세요.");
	          return;
	        }

	        if(rv_content == "") {
	          alert("상품후기를 입력하세요.");
	          return;
	        }

	        //자바스트립트 Object객체 구문
	        let data = { rv_num : rv_num, rv_content : rv_content, rv_score : rv_score };
	        
	        $.ajax({
	          url: '/user/review/modify',
	          /*컨트롤러에서 전송데이터 포맷이 설정되어 있으므로, 클라이언트에서 보내는 데이터의 MIME설정을 헤더에 추가해야 한다. */
	          headers: {
	              "Content-Type" : "application/json", "X-HTTP-Method-Override" : "PATCH"
	            },
	          type: 'patch',
	          dataType: 'text',
	          data : JSON.stringify(data), /* JSON 문자열데이타 */
	          success : function(result) {
	            if(result == "success") {
	              alert("상품후기가 수정됨.");
	              
	              //상품후기 목록
	              //reviewPage = 1;
	              // "/user/review/list/상품코드/첫번째 페이지"
	              url = "/user/review/list/" + $("#pdt_num").val() + "/" + reviewPage;

	              getPage(url);
	              
	              $(".star_rv_score a.rv_score").parent().children().removeClass("on");
	              $("#rv_content").val("");

	            }
	          }
	        });

		  });

	//상품후기 목록에서 modify 버튼 클릭
      $("div#reviewListResult").on("click", "p a.modify", function(e){

        e.preventDefault();

        let rv_num = $(this).attr("href"); // 상품후기번호

        console.log("상품후기 번호: " + rv_num);

		let rv_score = 0;
	    


		$('#rid'+rv_num+' span.rv_content').html(
			"<textarea class='md_rv_content' name='rv_content' style='height: 34px; width: 500px;'></textarea>"
		);

		$('#rid'+rv_num+' p.buttonbox').html(
			"<a class='submit' name='button_mnd' href='" + rv_num + "'>확인</a>"+
			"<a class='cancle' name='button_mnd'>취소</a>"
		);

		$('#rid'+rv_num+' #viewstar').html(

			'<fieldset>'+
					'<p class="star_rv_score">'+
						'<a class="rv_score" href="#">★</a>'+
						'<a class="rv_score" href="#">★</a>'+
						'<a class="rv_score" href="#">★</a>'+
						'<a class="rv_score" href="#">★</a>'+
						'<a class="rv_score" href="#">★</a>'+
					'</p>'+
			'</fieldset>'
		);


		  
		//변경된 폼에서 취소버튼 클릭
		 $(".cancle").on("click", function(e){

	    
			e.preventDefault();
			
			let reviewPage = 1;
	     	 url = "/user/review/list/" + $("#pdt_num").val() + "/" + reviewPage;

			 getPage(url);
		
	      });

		  $("div#reviewListResult").on("click", "p a.delete", function(e){
			
			
			e.preventDefault();
     	});

		  
		  //변경된 폼에서 확인버튼 클릭
		 $(".submit").on("click", function(e){

			let rv_content = $(".rv_content").val();
			e.preventDefault();

			// 별평점 읽어오기
			$(".star_rv_score a.rv_score").each(function(index, item){
			if($(this).attr('class') == 'rv_score on') {
				rv_score += 1;
			}
			});

			console.log("별 평점: " + rv_score );
			console.log("콘텐츠: " + rv_content);

			if(rv_score == 0){
			alert("별 평점을 선택해주세요.");
			return;
			}

			if(rv_content == "") {
			alert("상품후기를 입력하세요.");
			return;
			}

			//자바스트립트 Object객체 구문
			let data = { rv_num : rv_num, rv_content : rv_content, rv_score : rv_score };
			
			$.ajax({
			url: '/user/review/modify',
			/*컨트롤러에서 전송데이터 포맷이 설정되어 있으므로, 클라이언트에서 보내는 데이터의 MIME설정을 헤더에 추가해야 한다. */
			headers: {
				"Content-Type" : "application/json", "X-HTTP-Method-Override" : "PATCH"
				},
			type: 'patch',
			dataType: 'text',
			data : JSON.stringify(data), /* JSON 문자열데이타 */
			success : function(result) {
				if(result == "success") {
				alert("수정완료");
				
				//상품후기 목록
				//reviewPage = 1;
				// "/user/review/list/상품코드/첫번째 페이지"
				url = "/user/review/list/" + $("#pdt_num").val() + "/" + reviewPage;

				getPage(url);
				
				// 상품후기 대화상자 숨김.
				$("#star_rv_score a.rv_score").parent().children().removeClass("on");
				$("#rv_content").val("");

				}
			}
			});

		
	      });

		// 평점 별 클릭시 색상변경
	    $(".star_rv_score a.rv_score").on("click", function(e){

			e.preventDefault();
			
			$(this).parent().children().removeClass("on"); // 별평점 <a>태그에 on 클래스선택자를 제거
			$(this).addClass("on").prevAll("a").addClass("on")

	      });
		  
      });
	

	  //상품후기 목록에서 삭제 버튼 클릭
      $("div#reviewListResult").on("click", "p a.delete", function(e){

        e.preventDefault();

        let rv_num = $(this).attr("href"); // 상품후기번호

        console.log("상품후기 번호: " + rv_num);

        if(!confirm('상품후기' + rv_num + ' 번을 삭제하시겠습니까?')) return;
      

        $.ajax({
          url: '/user/review/delete/' + rv_num, // 주소를 경로형식을 사용한다.
          headers: {
              "Content-Type" : "application/json", "X-HTTP-Method-Override" : "DELETE"
            },
          type: 'delete',
          dataType: 'text',
          success : function(result) {
            if(result == "success") {
              alert("상품후기가 삭제됨.");
              //상품후기 목록
              url = "/user/review/list/" + $("#pdt_num").val() + "/" + reviewPage;

              getPage(url);

            }
          }
        });
        
        
        


      });



</script>

        
</body>
</html>