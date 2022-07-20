<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="/">LOGO</a>

  <div class="collapse navbar-collapse justify-content-end" id="navbarTogglerDemo02">
    <ul class="navbar-nav">
      <c:if test="${sessionScope.loginStatus == null }">
      <!-- 로그인 이전상태 -->
      <li class="nav-item active">
        <a class="nav-link" href="/member/login">Login<span class="sr-only">(current)</span></a>
      <li class="nav-item active">
        <a class="nav-link" href="/member/join">Join</a>
      </li>
      </c:if>
      
       <c:if test="${sessionScope.loginStatus != null }">
    <!-- 로그인 이후상태 -->
      <li class="nav-item active">
        <a class="nav-link" href="/member/logout">Logout<span class="sr-only">(current)</span></a>
      <li class="nav-item active">
        <a class="nav-link" href="/member/join">Join</a>
      </li>
      </c:if>
      
      <li class="nav-item active">
        <a class="nav-link" href="#">Shop</a>
      </li>
    </ul>
  </div>
  <div>
  	<form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search">
      <button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
    </form>
  </div>
</nav>