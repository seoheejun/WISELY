<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp"%>
<link href="resources/css/my_page.css" rel="stylesheet"/> 
<main class="container mt-5">
	<section class="container d-flex" style="width:1000px; margin:auto; margin-top:0;">
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
				style="width:120px; height:50px; line-height:35px; color:#666; border-color:#ccc; background-color:white;">교환/반품</a>
				<a href="<c:url value='service5'/>" class="btn btn-primary" 
				style="width:120px; height:50px; line-height:35px; background:#00388C; border-color:#00388C;">환불</a>
			</div>
		
			<!-- 환불 확인 -->
			<div class="container mt-5">
				<div class="border-bottom border-dark pb-2" style="font-size:20px;">
					<i class="fas fa-question-circle" style="color:#00388C"></i> <b>환불 확인</b>
				</div>
				<div>
					<p class="mt-2">
						<a class="w-100 btn btn-light" data-bs-toggle="collapse"
							href="#refund" role="button" aria-expanded="false"
							style="text-align: left;"
							aria-controls="refund">반품/취소 후 환불까지는 얼마나 소요되나요?<i class="fas fa-sort-down" style="float: right;"></i>
						</a>
					</p>
					<div class="collapse" id="refund">
						<div class="card card-body">
							<p style="margin-bottom:0px; line-height:30px;">
								반품 완료 후 평일 기준 1~3일 내로 환불이 완료됩니다.<br>
								다만, 카드사 및 결제사의 사정에 따라 1~2일 정도 추가 소요될 수 있습니다.
							</p>
						</div>
					</div>
				</div>
			</div>
		</article>
	</section>
</main>
<%@ include file="../inc/footer.jsp"%>