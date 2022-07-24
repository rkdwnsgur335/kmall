<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Product example · Bootstrap v4.6</title>



    
<!-- CSS -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"></script>


    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/4.6/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/4.6/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/4.6/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
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
      }

      
.banner {

}
      
      
      .inner_item{

      }
      
       .img_box{

       
       }
      
      .banner_img {
		height: 480px;
		width: 100%;
      }
      
    </style>

    
    <script>
    	if('${msg}' == 'logout' ){
    		alert("로그아웃 되었습니다.");
    	}
    	
    	$('.carousel').carousel({
    		  interval: 2000
    		})
    </script>
    
  </head>
  <body>
<!-- https://velog.io/@dain-choi/%EC%B2%AB-%ED%99%94%EB%A9%B4-%EB%A7%8C%EB%93%A4%EA%B8%B02 -->
<!-- header -->
<%@include file="/WEB-INF/views/include/navigation.jsp" %>


<!-- body -->
<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner inner_item">
    <div class="carousel-item active img_box">
      <img src="/resources/img/mainimg1.jpg" class="banner_img d-block w-100" alt="...">
    </div>
    <div class="carousel-item img_box">
      <img src="/resources/img/mainimg1.jpg"  class="banner_img d-block w-100" alt="..." >
    </div>
    <div class="carousel-item img_box">
      <img src="/resources/img/mainimg1.jpg" class="banner_img d-block w-100" alt="..." >
    </div>
  </div>
 <button class="carousel-control-prev" type="button" data-target="#carouselExampleControls" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-target="#carouselExampleControls" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </button>
</div>


<!-- footer -->
<%@include file="/WEB-INF/views/include/footer.jsp" %>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>

      
  </body>
</html>
