<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
  <head>
<style>
#navpading{
 padding-bottom: 0px;
 padding-top: 0px;
 }
</style>
  </head>
</html>
 <!-- 
<div class="nav-scroller bg-light shadow-sm border-bottom">
 <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom" id="navpading">
  <div class="collapse navbar-collapse justify-content-end">
    <ul class="navbar-nav">
      <li class="nav-item active firstnav">
        <a class="nav-link" href="#">정보수정<span class="sr-only">(current)</span></a>
      <li class="nav-item active firstnav">
        <a class="nav-link" href="#">고객센터</a>
      </li>    
      <li class="nav-item active firstnav">
        <a class="nav-link" href="#">Shop</a>
      </li>
    </ul>
  </div>
  <div>
  	<form class="form-inline my-2 my-lg-0">
    </form>
  </div>
</nav>
</div>
 -->
 
<nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
   </button>
   
  <a class="navbar-brand" href="/"><img src="/resources/img/Logo.png" width="200px"></a>

  <div class="collapse navbar-collapse justify-content-end" id="navbarTogglerDemo01" >
    <ul class="navbar-nav ">
      <c:if test="${sessionScope.loginStatus == null }">
      <!-- 로그인 이전상태 -->
      <li class="nav-item active">
        <a class="nav-link" href="/member/join">Join</a>
      <li class="nav-item active">
        <a class="nav-link" href="/member/login">Login<span class="sr-only">(current)</span></a>
      </li>
      </c:if>
  
       <c:if test="${sessionScope.loginStatus != null }">
    <!-- 로그인 이후상태 -->
      <li class="nav-item active">
        <a class="nav-link" href="/member/logout">Logout<span class="sr-only">(current)</span></a>
      <li class="nav-item active">
        <a class="nav-link" href="/member/confirmPW">Modify</a>
      </li>
      </c:if>
      
      <li class="nav-item active">
        <a class="nav-link" href="/user/product/productList">Shop</a>
      </li>
    </ul>
  </div>

  <div>
  	<form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
     <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>