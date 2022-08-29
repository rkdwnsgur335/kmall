<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<!--
This is a starter template page. Use this page to start your new project from
scratch. This page gets rid of all links and provides the needed markup only.
-->
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>List</title>
    <!-- Bootstrap core CSS -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">


	<!-- bundle -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.slim.min.js"></script>
  
  <%@include file="/WEB-INF/views/include/navigation.jsp" %>
  
</head>

	<body>
	<div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse" >
		<div class="card" style="margin-top: 5%; ">
			<article class="card-group-item">
				<header class="card-header">
					<h6 class="title">브랜드 </h6>
				</header>
				<div class="filter-content">
					<div class="card-body">
					<form>
						<label class="form-check">
						  <input class="form-check-input" type="checkbox" value="">
						  <span class="form-check-label">
						   브랜드1
						  </span>
						</label> <!-- form-check.// -->
						<label class="form-check">
						  <input class="form-check-input" type="checkbox" value="">
						  <span class="form-check-label">
						    브랜드2
						  </span>
						</label>  <!-- form-check.// -->
						<label class="form-check">
						  <input class="form-check-input" type="checkbox" value="">
						  <span class="form-check-label">
						    브랜드3
						  </span>
						</label>  <!-- form-check.// -->
					</form>
		
					</div> <!-- card-body.// -->
				</div>
			</article> <!-- card-group-item.// -->
			
			<article class="card-group-item">
				<header class="card-header">
					<h6 class="title">성별 </h6>
				</header>
				<div class="filter-content">
					<div class="card-body">
					<label class="form-check">
					  <input class="form-check-input" type="radio" name="exampleRadio" value="">
					  <span class="form-check-label">
					    	남성
					  </span>
					</label>
					<label class="form-check">
					  <input class="form-check-input" type="radio" name="exampleRadio" value="">
					  <span class="form-check-label">
					    	여성
					  </span>
					</label>
					</div> <!-- card-body.// -->
				</div>
			</article> <!-- card-group-item.// -->
		</div>
    </nav>

    <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-md-4" style="margin-top: 5%"><div class="chartjs-size-monitor"><div class="chartjs-size-monitor-expand"><div class=""></div></div><div class="chartjs-size-monitor-shrink"><div class=""></div></div></div>
      <div class="table-responsive">
        <table class="table table-striped table-sm">
		      <div class="container">
				<div class="row">
		        <c:forEach items="${productList }" var="productVO" varStatus="status">
		        <div class="col-md-4">
		          <div class="card mb-4 border-0">
		            <!-- <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg> -->
		            <!-- 상품이미지 -->
		            <a class="move" href="${productVO.pdt_num }">
		            	<img src="/user/product/displayFile?folderName=${productVO.pdt_img_folder }&fileName=${productVO.pdt_img }" 
			      			alt="" class="bd-placeholder-img card-img-top" width="100%" style="background-color: rgb(245, 245, 245);">
			      	</a>
		
		            <div class="card-body">
		              <p class="card-text">
		              	  ${cateList[status.index].cate_name}<br>
			              ${productVO.pdt_name }<br>
			              <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${productVO.pdt_price }" currencySymbol="\\"></fmt:formatNumber>
			              <br>
		              </p>
		            </div>
		          </div>
		        </div>
		        </c:forEach>
		      </div>
		    </div>
        </table>
      </div>
    </main>
  </div>
  
  <div class="row">
      	<div class="col-12">
      		<nav aria-label="...">
			  <ul class="pagination" style="margin-left: 23%;">
			    <!-- 이전표시 -->
			    <c:if test="${pageMaker.prev }">
				    <li class="page-item">
				      <a class="page-link" href="${pageMaker.startPage - 1 }">Previous</a>
				    </li>
			    </c:if>
			    
			    <!-- 페이지번호 표시.  1  2  3  4  5 -->
			    
			    <c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="num" >
			    	<li class='page-item ${pageMaker.cri.pageNum == num ? "active": "" }'><a class="page-link" href="${num}">${num}</a></li>
			    </c:forEach>
			    <!-- 
			    <li class="page-item active" aria-current="page">
			      <span class="page-link">2</span>
			    </li>
			    <li class="page-item"><a class="page-link" href="#">3</a></li>
			     -->
			    <!-- 다음표시 -->
			    <c:if test="${pageMaker.next }">
				    <li class="page-item">
				      <a class="page-link" href="${pageMaker.endPage + 1 }">Next</a>
				    </li>
			    </c:if>
				
			  </ul>
			  <!--1)페이지 번호 클릭시 2)상품수정버튼 클릭시 3)상품삭제버튼 클릭시-->
				<form id="actionForm" action="productDetail" method="get">
					<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
					<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
					<input type="hidden" name="type" value="${pageMaker.cri.type}">
					<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
				</form>
			</nav>
      	</div>
      </div>
     
     
 <script>

    $(function(){

      $("button[name='btnBuyCart']").on("click", function(){

        $("#modal_productDetail").modal('show');

        let url = "/user/product/productDetail/" + $(this).data("pdt_num");
        
        $.getJSON(url, function(result) {

          //모달 대화상자에서 상품상세정보 표시
          //console.log("상품상세정보" + result.pdt_num);
			
          //상품코드
          $("div#modal_productDetail input#pdt_num").val(result.pdt_num);
          //상품이름
          $("div#modal_productDetail input#pdt_name").val(result.pdt_name);
          //판매가격
          $("div#modal_productDetail input#pdt_price").val(result.pdt_price);
          //제조사
          $("div#modal_productDetail input#pdt_company").val(result.pdt_company);
          //상품이미지
          // /user/product/displayFile?folderName=${productVO.pdt_img_folder }&fileName=s_${productVO.pdt_img }
          let url = "/user/product/displayFile?folderName=" + result.pdt_img_folder + "&" + "fileName=" + result.pdt_img;
          
          //console.log("이미지파일경로: " + url);
          $("div#modal_productDetail img#modal_detail_image").attr("src", url);
          

        });

      });

      //장바구니 담기
      $("button[name='btnModalCart']").on("click", function(){

        $.ajax({
          url : '/user/cart/cart_add',
          data: { pdt_num : $("div#modal_productDetail input#pdt_num").val(), cart_amount : $("div#modal_productDetail input#pdt_amount").val()},
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

      
      //actionForm 참조 : 1)페이지번호 클릭 2)검색버튼 클릭
      let actionForm = $("#actionForm");
      
    //3)페이지번호 클릭
      $("ul.pagination li a.page-link").on("click", function(e){

        e.preventDefault(); // <a>태그의 링크기능 무력화

        let pageNum = $(this).attr("href");

        actionForm.find("input[name='pageNum']").val(pageNum);

        //pageNum 필드는 actionForm에 수동으로 작업되어 있어, 추가하는 것이 아니라, 참조하여 값을 변경한다.
        
        let url = "/user/product/productList/${cate_code}/" + encodeURIComponent("${cate_name}");

        actionForm.attr("method", "get");
        actionForm.attr("action", url);
        actionForm.submit();

       
      });

      
      let searchForm = $("#searchForm");
      //검색버튼 클릭시 pageNum 초기화
      $("#btnSearch").on("click", function(){

        searchForm.find("input[name='pageNum']").val(1);
        searchForm.submit();
      });

      //상품이미지, 상품제목 클릭
      $("div.container a.move").on("click", function(e){
        e.preventDefault();

        let pdt_num = $(this).attr("href");
		let cate_code = $(this).attr("href");

        actionForm.attr("method", "get");
        actionForm.attr("action", "/user/product/productDetail");

        actionForm.append("<input type='hidden' name='pdt_num' value='" + pdt_num + "'>");
        actionForm.submit();

      });
      
    });  //jquery ready이벤트 끝

  </script>
     
    </body>
</html>