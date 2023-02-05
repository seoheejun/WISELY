<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<aside class="w-25" style="width: 220px;">
	<h3 class="mb-5">마이페이지</h3>
	<ul class="submenu p-0 m-0" style="list-style: none; font-size:20px;">
		<li class="mb-3">
			<a class="button" href="<c:url value='/order'/>">주문/배송조회 <i class="fas fa-angle-right pt-1" style="float:right;"></i></a>
		</li>
		<li class="mb-3">
			<a class="button" href="<c:url value='/recentView'/>">최근 본 상품<i class="fas fa-angle-right pt-1" style="float:right;"></i></a>
		</li>
		<li class="mb-3">
			<a class="button" href="<c:url value='/board'/>">문의 내역<i class="fas fa-angle-right pt-1" style="float:right;"></i></a>
		</li>
		<li class="mb-3">
			<a class="button" href="<c:url value='/service1'/>">고객센터 <i class="fas fa-angle-right pt-1" style="float:right;"></i></a>
		</li>
		<li class="mb-3">
			<a class="button" href="<c:url value='/memberModify'/>">회원정보 수정 <i class="fas fa-angle-right pt-1" style="float:right;"></i></a>
		</li>
		<li>
			<a class="button" href="memberLogout">로그아웃<i class="fas fa-angle-right pt-1" style="float:right;"></i></a>
		</li>
	</ul>
</aside>