<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<main style="width:1000px; margin:auto;">
	<section class="container">
		<div class="container d-flex justify-content-between mt-5">
			<a href="<c:url value='pd_all'/>" class="btn btn-outline-secondary" 
				style="width:150px; height:50px; line-height:35px">전체</a>
			<a href="<c:url value='pd_cat?pCategory_fk=영양제'/>" class="btn btn-outline-secondary" 
				style="width:150px; height:50px; line-height:35px">영양제</a>
			<a href="<c:url value='pd_cat?pCategory_fk=면도/제모용품'/>" class="btn btn-outline-secondary" 
				style="width:150px; height:50px; line-height:35px">면도/제모용품</a>
			<a href="<c:url value='pd_cat?pCategory_fk=스킨케어'/>" class="btn btn-outline-secondary" 
				style="width:150px; height:50px; line-height:35px">스킨케어</a>
			<a href="<c:url value='pd_cat?pCategory_fk=헤어케어'/>" class="btn btn-outline-secondary" 
				style="width:150px; height:50px; line-height:35px">헤어케어</a>
			<a href="<c:url value='pd_cat?pCategory_fk=덴탈케어'/>" class="btn btn-outline-secondary" 
				style="width:150px; height:50px; line-height:35px">덴탈케어</a>
		</div>
		<div class="container d-flex justify-content-between mt-3">
			<a href="<c:url value='pd_cat?pCategory_fk=바디케어'/>" class="btn btn-outline-secondary" 
				style="width:150px; height:50px; line-height:35px">바디케어</a>
			<a href="<c:url value='pd_cat?pCategory_fk=휴지/물티슈'/>" class="btn btn-outline-secondary" 
				style="width:150px; height:50px; line-height:35px">휴지/물티슈</a>
			<a href="<c:url value='pd_cat?pCategory_fk=생리대/여성용품'/>" class="btn btn-outline-secondary" 
				style="width:150px; height:50px; line-height:35px">생리대/여성용품</a>
			<a href="<c:url value='pd_cat?pCategory_fk=주방/청소용품'/>" class="btn btn-outline-secondary" 
				style="width:150px; height:50px; line-height:35px">주방/청소용품</a>
			<a href="<c:url value='pd_cat?pCategory_fk=식품보관'/>" class="btn btn-outline-secondary" 
				style="width:150px; height:50px; line-height:35px">식품보관</a>
			<a href="<c:url value='pd_cat?pCategory_fk=욕실용품'/>" class="btn btn-outline-secondary" 
				style="width:150px; height:50px; line-height:35px">욕실용품</a>
		</div>
	</section>
		
	<section class="mt-5">
		<c:if test="${pCategory_fk == null}">
			<h2 class="text-center mb-4">[전체보기]</h2>
			<div class="row row-cols-1 row-cols-md-3 g-4">
			<c:forEach var="dto" items="${list}">
			<div class="col">
		    	<div class="card h-100 text-center border-light">
		    		<a href="<c:url value='pd_view?pNo=${dto.pNo}'/>">
			      		<img src="prod_img/${dto.pImage_1}" class="card-img-top">		    		
		    		</a>
		      		<div class="card-body">
			        	<h5 class="card-title">${dto.pName}</h5>
			        	<p class="card-text"><b><fmt:formatNumber value="${dto.price}"/>원</b></p>
		      		</div>
   					<a href="#" class="btn btn-outline-success">장바구니 담기</a>
		    	</div>
		  	</div>
		  	</c:forEach>
		</div>
		</c:if>
		<c:if test="${pCategory_fk != null}">
		<h2 class="text-center mb-4">[${pCategory_fk}]</h2>
		<div class="row row-cols-1 row-cols-md-3 g-4">
			<c:forEach var="dto" items="${list}">
			<div class="col">
		    	<div class="card h-100 text-center border-light">
		    		<a href="<c:url value='pd_view?pNo=${dto.pNo}'/>">
			      		<img src="prod_img/${dto.pImage_1}" class="card-img-top">		    		
		    		</a>
		      		<div class="card-body">
			        	<h5 class="card-title">${dto.pName}</h5>
			        	<p class="card-text"><b><fmt:formatNumber value="${dto.price}"/>원</b></p>
		      		</div>
   					<a href="#" class="btn btn-outline-success">장바구니 담기</a>
		    	</div>
		  	</div>
		  	</c:forEach>
		</div>
		</c:if>
	</section>
</main>
<%@ include file="../inc/footer.jsp" %>