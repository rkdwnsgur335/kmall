<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>


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
        <p>여성추천</p>
      </div><!-- /.col-lg-4 -->
      
      
      <div class="col-lg-4">
        <a href="#"><img id="cardimg" src="https://kream-phinf.pstatic.net/MjAyMjA3MThfMjUz/MDAxNjU4MTIwNzM3NDA3.iWB06qnZY0ZYW2TDD4-H0LIIp7eYuvEH3QJQyjSq0Egg._YiJauFB1RyQAL6LH8qIqClGX6zSXGrWSh3Yc6HzCmAg.JPEG/a_760b35b9bb754ab4961e1b130c9ffbb7.jpg_webp" class="bd-placeholder-img rounded-circle" width="140" height="140"></a>
        <p>NEW</p>
     </div><!-- /.col-lg-4 -->
     
     
      <div class="col-lg-4">
       <a href="#"><img id="cardimg" src="https://kream-phinf.pstatic.net/MjAyMjA3MDZfMjg2/MDAxNjU3MDU5MTgxODY4.xxkBGO6bjeDTLhjO5s69bwX9Ydi0IVHrB-TOTWJJVx4g._qkxsrL2HGThsG-rY83N0zwCU1OHzYXshfrjU3LqJ-og.JPEG/a_4fb0df8b2fc64bd1a2df8509d2eb5a3c.jpg_webp" class="bd-placeholder-img rounded-circle" width="140" height="140"></a>
        <p>남성추천</p>
      </div><!-- /.col-lg-4 -->
    </div><!-- /.row -->


    <!-- START THE FEATURETTES -->

    <hr class="featurette-divider">
	
	<div class="container">
    
		<div class="card-deck card-group-scroll">
		  <div class="card">
		    <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjA3MjdfMjM4/MDAxNjU4ODg0ODEyMTQ5.Q9sUk60eFhMmHeW3edP8Oh4Q24FyHuqUI4S5q7uPzzEg.C8IjaCW31FLzfoU9mUMOiZphy13vOq_SbhDwSpdS24Ug.PNG/a_66a34970a50443fa97011c76a219e963.png?type=m_webp"  data-src="holder.js/100px180/" />
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		  <div class="card">
		    <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjA3MjVfNzcg/MDAxNjU4NzI5NzQwOTU5.aGlzho5scMJ7EH2zXqe2j8Jy0Py2bmLZ14FbsNvkxkEg.KaMGJJpNF0xJjffQVQL-xJ6XzjMT-SqdIdzTj3sEMwAg.PNG/a_900a080a687e4562b00204a1b1ce5033.png?type=m_webp"  data-src="holder.js/100px180/" />
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		  <div class="card">
		    <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMTA3MjhfMjIg/MDAxNjI3NDQxMDA1NjE5.HOgIYywGZaaBJDqUzx2OnX9HAxoOWPvuWHqUn_LZGcgg.VYIuOfA5_GgjBGRowv6dmQuAOPtUvmAxbGpOyUCOCtYg.PNG/p_9d8ed1a74d2540ab9842e63363607bf4.png?type=m_webp"  data-src="holder.js/100px180/" />
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		  <div class="card">
		    <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjA3MjFfMTkx/MDAxNjU4Mzc4NTM4MjMy.qfto-0YP1f6v-VhrShUzwqfSaBH8TOcwkArlDQA6QeMg.Q4W_RuAyw5xbH5_joe7taOoDMywE3JFKlLmz6cmz8hMg.PNG/a_b8acf1e9434245368bf87c2f42c5d983.png?type=m_webp"  data-src="holder.js/100px180/" />
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		  <div class="card">
		    <img class="card-img-top" src="https://kream-phinf.pstatic.net/MjAyMjA3MjdfMjM4/MDAxNjU4ODg0ODEyMTQ5.Q9sUk60eFhMmHeW3edP8Oh4Q24FyHuqUI4S5q7uPzzEg.C8IjaCW31FLzfoU9mUMOiZphy13vOq_SbhDwSpdS24Ug.PNG/a_66a34970a50443fa97011c76a219e963.png?type=m_webp"  data-src="holder.js/100px180/" />
		    <div class="card-body">
		      <h5 class="card-title">Card title</h5>
		      <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
		      <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
		    </div>
		  </div>
		</div>


	</div>


    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7 order-md-2">
        <h2 class="featurette-heading">Oh yeah, it’s that good. <span class="text-muted">See for yourself.</span></h2>
        <p class="lead">Another featurette? Of course. More placeholder content here to give you an idea of how this layout would work with some actual real-world content in place.</p>
      </div>
      <div class="col-md-5 order-md-1">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>

      </div>
    </div>

    <hr class="featurette-divider">

    <div class="row featurette">
      <div class="col-md-7">
        <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
        <p class="lead">And yes, this is the last block of representative placeholder content. Again, not really intended to be actually read, simply here to give you a better view of what this would look like with some actual content. Your content.</p>
      </div>
      <div class="col-md-5">
        <svg class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto" width="500" height="500" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 500x500" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#eee"/><text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>

      </div>
    </div>

    <hr class="featurette-divider">

    <!-- /END THE FEATURETTES -->

  </div><!-- /.container -->


  <!-- FOOTER -->
  <footer class="container">
    <p class="float-right"><a href="#">Back to top</a></p>
    <p>&copy; 2017-2022 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
  </footer>
</main>


      
  </body>
</html>


