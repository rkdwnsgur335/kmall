<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.101.0">
    <title>Carousel Template · Bootstrap v4.6</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/4.6/examples/carousel/">

    

    <!-- Bootstrap core CSS -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">


	<!-- bundle -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript" src="/resources/js/jquery.slim.min.js"></script>


    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/4.6/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/4.6/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/4.6/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/resources/js/manifest.json">
<link rel="mask-icon" href="/docs/4.6/assets/img/favicons/safari-pinned-tab.svg" color="#563d7c">
<link rel="icon" href="/docs/4.6/assets/img/favicons/favicon.ico">
<meta name="msapplication-config" content="/docs/4.6/assets/img/favicons/browserconfig.xml">
<meta name="theme-color" content="#563d7c">


    <style>
        
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
        
        .card-deck.card-group-scroll {
        overflow-x: auto;
        flex-wrap: nowrap;
   		 }
        
      }
      
    .card-deck.card-group-scroll > .card {
        flex-basis: 35%;
    }
    
      
      #mainimg{
     display:block;
    margin: 0 auto;
    min-width: 1044px;
    width: 100%;
      }
      
      #cardimg{
      background-color: black;
      }
      
    </style>

    
    <!-- Custom styles for this template -->
   <link href="/resources/css/carousel.css" rel="stylesheet">
   
  </head>
  <body style="padding-top: 0px;">
    
<header>
    <%@include file="/WEB-INF/views/include/navigation.jsp" %>
</header>

<main role="main">

  <div id="myCarousel" class="carousel slide bt-9" data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" role="img" aria-label=" :  " preserveAspectRatio="xMidYMid slice" focusable="false"><title> </title><rect width="100%" height="100%" fill="#777"/>
        	<img src="/resources/img/imgmain.jpg" id="mainimg">
        </svg>

      </div>
      <div class="carousel-item">
        <svg class="bd-placeholder-img" role="img" aria-label=" :  " preserveAspectRatio="xMidYMid slice" focusable="false"><title> </title><rect width="100%" height="100%" fill="#777"/>
        	<img src="https://kream-phinf.pstatic.net/MjAyMjA3MjVfNjUg/MDAxNjU4NzE3ODQ4NDUx.l869R-lXT1NuBCTWXYPeYNpVdZD7HQ4_hhF8nU_xbLog.Uw7-t2ZlFbbEMS7u1TzWeGWDWcu6fDAKfyGMf2157GYg.JPEG/a_ed3463e1166a44d8a5051ebfad40204e.jpg?type=m_2560" id="mainimg">
        </svg>

      </div>
      <div class="carousel-item">
        <svg class="bd-placeholder-img" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" role="img" aria-label=" :  " preserveAspectRatio="xMidYMid slice" focusable="false"><title> </title><rect width="100%" height="100%" fill="#777"/>
			<img src="https://kream-phinf.pstatic.net/MjAyMjA3MjVfNjUg/MDAxNjU4NzE3ODQ4NDUx.l869R-lXT1NuBCTWXYPeYNpVdZD7HQ4_hhF8nU_xbLog.Uw7-t2ZlFbbEMS7u1TzWeGWDWcu6fDAKfyGMf2157GYg.JPEG/a_ed3463e1166a44d8a5051ebfad40204e.jpg?type=m_2560" id="mainimg">
        </svg>

      </div>
    </div>
    <button class="carousel-control-prev" type="button" data-target="#myCarousel" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </button>
    <button class="carousel-control-next" type="button" data-target="#myCarousel" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </button>
  </div>


  <!-- Marketing messaging and featurettes
  ================================================== -->
  <!-- Wrap the rest of the page in another container to center all the content. -->

  <div class="container marketing">

    <!-- Three columns of text below the carousel -->
    <div class="row">
      <div class="col-lg-4">
		<a href="#"><img id="cardimg" src="https://kream-phinf.pstatic.net/MjAyMjA3MDZfMTgg/MDAxNjU3MDU5MTk2NTI3.ExlmPt2zfLCyEul39fWHwWCN_viumdk705L1cd-C1o8g.z2u7BBofKNM590ixdEhnI55GCmZ02cGSmAiRJy-kvtsg.JPEG/a_65850eadc0dd44b5be6b5cd56be60751.jpg_webp" class="bd-placeholder-img rounded-circle" width="140" height="140"></a>
        <p>여성</p>
      </div><!-- /.col-lg-4 -->
      
      
      <div class="col-lg-4">
        <a href="#"><img id="cardimg" src="https://kream-phinf.pstatic.net/MjAyMjA3MThfMjUz/MDAxNjU4MTIwNzM3NDA3.iWB06qnZY0ZYW2TDD4-H0LIIp7eYuvEH3QJQyjSq0Egg._YiJauFB1RyQAL6LH8qIqClGX6zSXGrWSh3Yc6HzCmAg.JPEG/a_760b35b9bb754ab4961e1b130c9ffbb7.jpg_webp" class="bd-placeholder-img rounded-circle" width="140" height="140"></a>
        <p>NEW</p>
     </div><!-- /.col-lg-4 -->
     
     
      <div class="col-lg-4">
       <a href="#"><img id="cardimg" src="https://kream-phinf.pstatic.net/MjAyMjA3MDZfMjg2/MDAxNjU3MDU5MTgxODY4.xxkBGO6bjeDTLhjO5s69bwX9Ydi0IVHrB-TOTWJJVx4g._qkxsrL2HGThsG-rY83N0zwCU1OHzYXshfrjU3LqJ-og.JPEG/a_4fb0df8b2fc64bd1a2df8509d2eb5a3c.jpg_webp" class="bd-placeholder-img rounded-circle" width="140" height="140"></a>
        <p>남성</p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->


    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">
	
<div class="container">
				<div class="row">
		        <c:forEach items="${productList }" var="productVO" varStatus="status">
		        <div class="col-md-4">
		          <div class="card mb-4 border-0">
		            <!-- <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"></rect><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg> -->
		            <!-- 상품이미지 -->
		            <a class="move" href="${productVO.pdt_num }">
		            	<img src="/user/product/displayFile?folderName=${productVO.pdt_img_folder }&fileName=${productVO.pdt_img }" 
			      			alt="" class="bd-placeholder-img card-img-top" width="100%" style="background-color: white;">
			      	</a>
		
		            <div class="card-body">
		              <p class="card-text">
		              	  ${cateList[status.index].cate_name}<br>
			              ${productVO.pdt_name }<br>
			              <fmt:setLocale value="ko_KR"/><fmt:formatNumber type="currency" value="${productVO.pdt_price }"></fmt:formatNumber>
			              <br>
		              </p>
		            </div>
		          </div>
		        </div>
		        </c:forEach>
		      </div>
		    </div>
		    
		    
	<div class="row">
      	<div class="col-12">
      		<nav aria-label="...">
			  <ul class="pagination">
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
		    

    <!-- /END THE FEATURETTES -->

  </div><!-- /.container -->


  <!-- FOOTER -->
  <footer class="container">
    <p class="float-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017-2022 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
  </footer>
</main>

<script>
$(function(){
	
    //actionForm 참조 : 1)페이지번호 클릭 2)검색버튼 클릭
    let actionForm = $("#actionForm");
	
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
    
    
});

</script>
      
  </body>
</html>


