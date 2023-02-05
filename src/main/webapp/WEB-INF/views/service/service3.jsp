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
				style="width:120px; height:50px; line-height:35px; background:#00388C; border-color:#00388C;">결제</a>
				<a href="<c:url value='service4'/>" class="btn btn-primary me-3" 
				style="width:120px; height:50px; line-height:35px; color:#666; border-color:#ccc; background-color:white;">교환/반품</a>
				<a href="<c:url value='service5'/>" class="btn btn-primary" 
				style="width:120px; height:50px; line-height:35px; color:#666; border-color:#ccc; background-color:white;">환불</a>
			</div>

			<!-- 결제 전 -->
			<div class="container mt-5">
				<div class="border-bottom border-dark pb-2" style="font-size:20px;">
					<i class="fas fa-question-circle" style="color:#00388C"></i> <b>결제 전</b>
				</div>
				<div>
					<p class="mt-2">
						<a class="w-100 btn btn-light" data-bs-toggle="collapse"
							href="#different" role="button" aria-expanded="false"
							style="text-align: left;"
							aria-controls="different">계좌 이체 시 주문자 이름과 입금자 이름이 달라도 상관없나요?<i class="fas fa-sort-down" style="float: right;"></i>
						</a>
					</p>
					<div class="collapse" id="different">
						<div class="card card-body">
							<p style="margin-bottom:0px; line-height:30px;">
								<b>금액만 같다면 주문자와 입금자가 달라도 괜찮습니다.</b><br>
								고객님 전용의 계좌번호가 생성되기 때문에, 입금자명이 달라도 입금 확인이 가능합니다.<br>
								다만, <b>주문 금액과 입금 금액이 다를 경우 입금 처리가 어려우니 이 점 꼭 유의해 주세요!</b><br>
								입금이 완료되면 입금 확인 문자를 보내드립니다.
							</p>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 결제 이후 -->
			<div class="container mt-5">
				<div class="border-bottom border-dark pb-2" style="font-size:20px;">
					<i class="fas fa-question-circle" style="color:#00388C"></i> <b>결제 이후</b>
				</div>
				<div>
					<p class="mt-2">
						<a class="w-100 btn btn-light" data-bs-toggle="collapse"
							href="#change" role="button" aria-expanded="false"
							style="text-align: left;"
							aria-controls="change">결제 후 결제 방법을 변경할 수 있나요?<i class="fas fa-sort-down" style="float: right;"></i>
						</a>
					</p>
					<div class="collapse" id="change">
						<div class="card card-body">
							<p style="margin-bottom:0px; line-height:30px;">
								결제 완료 상태에서 결제 수단 변경은 불가합니다.<br>
								결제 수단 변경을 원하실 경우 기존 주문 건 취소 후 다시 주문해 주세요.
							</p>
						</div>
					</div>
				</div>
				<div>
					<p class="mt-3">
						<a class="w-100 btn btn-light" data-bs-toggle="collapse"
							href="#receipt" role="button" aria-expanded="false"
							style="text-align: left;"
							aria-controls="receipt">현금영수증은 어떻게 받을 수 있나요?<i class="fas fa-sort-down" style="float: right;"></i>
						</a>
					</p>
					<div class="collapse" id="receipt">
						<div class="card card-body">
							<p style="margin-bottom:0px; line-height:30px;">
								무통장입금/가상 계좌 결제 시 현금 영수증 발행 여부를 선택할 수 있습니다.<br>
								현금영수증 발행 정보를 입력하지 못하신 경우 고객센터로 문의 남겨주세요.<br>
							</p>
						</div>
					</div>
				</div>
			</div>
		</article>
	</section>
</main>
<%@ include file="../inc/footer.jsp"%>