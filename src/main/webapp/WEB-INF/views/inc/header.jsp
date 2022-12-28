 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css' rel='stylesheet'>
<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js'></script>
</head>
<body>
<header>
	<nav class="navbar navbar-expand-sm">
		<div class="container">
	    	<a href="<c:url value='/'/>" class="navbar-brand" style="margin-right:50px;">W I S E L Y</a>
	    	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
	    		<span class="navbar-toggler-icon"></span>
	    	</button>
		    <div class="collapse navbar-collapse" id="collapsibleNavbar">
		    	<ul class="navbar-nav w-100">
			        <c:if test="${sessionScope.isLogin == null}">
			 
			        	<li class="nav-item" style="margin-right:20px;">
			          		<a href="<c:url value='user_list'/>" class="nav-link">회원관리</a>
			        	</li>
			        	<li class="nav-item" style="margin-right:20px;">
			          		<a href="<c:url value='cat_list'/>" class="nav-link">카테고리관리</a>
			        	</li>
			        	<li class="nav-item" style="margin-right:20px;">
			          		<a href="<c:url value='pd_list'/>" class="nav-link">상품관리</a>
			        	</li>
			        	
			        	<li class="nav-item ms-auto">
			        		<a href="<c:url value='user_login'/>" class="nav-link">로그인</a>
			        	</li>
			        	<li class="nav-item ms-3">
			        		<a href="<c:url value='/user_join'/>" class="nav-link">회원가입</a>
			        	</li>
			        	<li class="nav-item ms-3">
			        		<a href="<c:url value='cart_list'/>" class="nav-link">장바구니</a>
			        	</li>
			        	<li class="nav-item ms-3">
			        		<a href="<c:url value='/'/>" class="nav-link">고객센터</a>
			        	</li>
		        	</c:if>
		    		<%-- <c:if test="${sessionScope.isLogin != null && sessionScope.memberInfo == 'admin'}">
			        	<li class="nav-item" style="margin-right:20px;">
			          		<a href="<c:url value='/admin/member_list'/>" class="nav-link">회원관리</a>
			        	</li>
			        	<li class="nav-item" style="margin-right:20px;">
			          		<a href="<c:url value='/admin/cat_list'/>" class="nav-link">카테고리관리</a>
			        	</li>
			        	<li class="nav-item me-auto">
			          		<a href="<c:url value='/admin/pd_list'/>" class="nav-link">상품관리</a>
			        	</li>
			        	<li class="nav-item me-auto">
			          		<a href="<c:url value='/admin/indent_list'/>" class="nav-link">주문관리</a>
			        	</li>
			        	<li class="nav-item dropdown" style="color:gray;">
			        		<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">프로필</a>
			        		<ul class="dropdown-menu">
	          					<li><a class="dropdown-item" href="${ctx}/ad_logout.do">로그아웃</a></li>
	          				</ul>
			        	</li>
		        	</c:if>
		        	<c:if test="${sessionScope.isLogin != null && sessionScope.memberInfo == 'user'}">
		        		<li class="nav-item dropdown ms-auto" style="color:gray;">
			        		<a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">프로필</a>
			        		<ul class="dropdown-menu">
	          					<li><a class="dropdown-item" href="#">마이페이지</a></li>
	          					<li><a class="dropdown-item" href="${ctx}/user_logout.do">로그아웃</a></li>
	          				</ul>
			        	</li>
			        	<li class="nav-item ms-3">
			        		<a href="<c:url value='/customer/cart_list'/>" class="nav-link">장바구니</a>
			        	</li>
		        	</c:if> --%>
		    	</ul>
		    </div>
		</div>
	</nav>
</header>