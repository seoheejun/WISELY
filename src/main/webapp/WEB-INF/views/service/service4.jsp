<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp"%>
<link href="resources/css/my_page.css" rel="stylesheet"/> 
<main class="container mt-5">
	<section class="container d-flex" style="width:1000px; margin:auto;">
		<%@ include file="../inc/myPage.jsp"%>
		<article class="w-75 ms-4 ps-5">
			<div class="container d-flex">
				<h3 class="mb-3 me-4">고객센터</h3>
				<span class="my-1" style="color:#666;">평일 9:00 ~ 18:00</span>
			</div>
			<div class="container d-flex justify-content-between">
				<a href="<c:url value='service1'/>" class="btn btn-primary me-3" 
				style="width:120px; height:50px; line-height:35px; color:#666; border-color:#ccc; background-color:white;">회원정보</a>
				<a href="<c:url value='service2'/>" class="btn btn-primary me-3" 
				style="width:120px; height:50px; line-height:35px; color:#666; border-color:#ccc; background-color:white;">배송</a>
				<a href="<c:url value='service3'/>" class="btn btn-primary me-3" 
				style="width:120px; height:50px; line-height:35px; color:#666; border-color:#ccc; background-color:white;">결제</a>
				<a href="<c:url value='service4'/>" class="btn btn-primary me-3" 
				style="width:120px; height:50px; line-height:35px; background:#00388C; border-color:#00388C;">교환/반품</a>
				<a href="<c:url value='service5'/>" class="btn btn-primary" 
				style="width:120px; height:50px; line-height:35px; color:#666; border-color:#ccc; background-color:white;">환불</a>
			</div>
		
			<!-- 교환 및 반품 신청 -->
			<div class="container mt-5">
				<div class="border-bottom border-dark pb-2" style="font-size:20px;">
					<i class="fas fa-question-circle" style="color:#00388C"></i> <b>교환 및 반품 신청</b>
				</div>
				<div>
					<p class="mt-2">
						<a class="w-100 btn btn-light" data-bs-toggle="collapse"
							href="#refund" role="button" aria-expanded="false"
							style="text-align: left;"
							aria-controls="refund">교환/반품 신청<i class="fas fa-sort-down" style="float: right;"></i>
						</a>
					</p>
					<div class="collapse" id="refund">
						<div class="card card-body">
							<p style="margin-bottom:0px; line-height:30px;">
								<b>마이페이지 > 주문/배송 조회 > 교환/반품 버튼을 통해 신청가능합니다.</b>
								제품을 수령한 날로부터 1주일 이내 신청 가능하며 제품 개봉 및 사용 시 신청이 불가합니다.<br>
								단순 변심으로 인한 교환/반품 시 왕복 배송비 6,000원이 발생하며 제주 및 도서 산간 지역의 경우<br>
								추가 배송비가 발생할 수 있습니다.<br>
								(제품 불량의 경우 불량인 사실을 안 날로부터 30일 이내 신청 가능, 수령 후 90일 경과 시 신청 불가)
							</p>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 교환 및 반품 철회 -->
			<div class="container mt-5">
				<div class="border-bottom border-dark pb-2" style="font-size:20px;">
					<i class="fas fa-question-circle" style="color:#00388C"></i> <b>교환 및 반품 철회</b>
				</div>
				<div>
					<p class="mt-2">
						<a class="w-100 btn btn-light" data-bs-toggle="collapse"
							href="#cancel" role="button" aria-expanded="false"
							style="text-align: left;"
							aria-controls="cancel">교환/반품 신청을 취소하고 싶어요<i class="fas fa-sort-down" style="float: right;"></i>
						</a>
					</p>
					<div class="collapse" id="cancel">
						<div class="card card-body">
							<p style="margin-bottom:0px; line-height:30px;">
								마이페이지 > 주문/배송 조회 > 주문상세 > 교환/반품 철회 메뉴를 통해 신청하실 수 있습니다.<br>
								철회 신청하였으나 수거 매니저가 방문하였을 경우 교환/반품 철회 의사를 전달 부탁드립니다.
							</p>
						</div>
					</div>
				</div>
			</div>
		</article>
	</section>
</main>
<%@ include file="../inc/footer.jsp"%>