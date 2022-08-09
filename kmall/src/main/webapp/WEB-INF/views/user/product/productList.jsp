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
      <h2></h2>
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
		              <div class="d-flex justify-content-between align-items-center">
		                <div class="btn-group">
		                  <button type="button" name="btnBuyCart" data-pdt_num="${productVO.pdt_num }" class="btn btn-sm btn-outline-secondary">Buy & Cart</button>                  
		                </div>
		                <small class="text-muted">9 mins</small>
		              </div>
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
     
    </body>
</html>