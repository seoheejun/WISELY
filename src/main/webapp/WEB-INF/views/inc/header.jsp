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
<!-- <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css' rel='stylesheet'>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link
	href='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css'
	rel='stylesheet'>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src='https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js'></script>
<script
	src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js'></script>
<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css' rel='stylesheet'>
<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js'></script> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<link href='https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css' rel='stylesheet'>
<script src='https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js'></script>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" >
<!-- custom CSS -->
<link href="resources/css/user_join.css" rel="stylesheet"/> 
<link href="resources/css/my111.css" rel="stylesheet"/> 

<link href="resources/css/my_page.css" rel="stylesheet"/> 
</head>
<body>
<header>
	<nav class="navbar navbar-expand-sm">
		<div class="container">
	    	<a href="<c:url value='/'/>" class="navbar-brand" style="margin-right:50px;">L O G O</a>
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
			        		<a href="<c:url value='service_center'/>" class="nav-link">고객센터</a>
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
		    	<%-- 
                <!-- 로그인 안한 상태 -->
		        	<c:if test="${member == null }">
		        		
                  	  <div class=""><a href="">로그인</a></div>
                 	   <span><a href="">회원가입</a></span>                
                </c:if>    
 
		       
                <!-- 로그인한 상태 -->
		        	<c:if test="${member != null }">
							<div class="login_success_area">
                       <span>${member.mem_name}님 로그인중</span>
                        <div class=""><a href="<c:url value='my_page'/>">마이페이지</a></div>
                        <div class=""><a href="">로그아웃</a></div>
                   
                    </div>
		        	</c:if> --%>
		    </div>
		</div>
	</nav>
</header>