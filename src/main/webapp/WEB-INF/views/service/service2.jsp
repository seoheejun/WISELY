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
				style="width:120px; height:50px; line-height:35px; background:#00388C; border-color:#00388C;">배송</a>
				<a href="<c:url value='service3'/>" class="btn btn-primary me-3" 
				style="width:120px; height:50px; line-height:35px; color:#666; border-color:#ccc; background-color:white;">결제</a>
				<a href="<c:url value='service4'/>" class="btn btn-primary me-3" 
				style="width:120px; height:50px; line-height:35px; color:#666; border-color:#ccc; background-color:white;">교환/반품</a>
				<a href="<c:url value='service5'/>" class="btn btn-primary" 
				style="width:120px; height:50px; line-height:35px; color:#666; border-color:#ccc; background-color:white;">환불</a>
			</div>
		
			<!-- 군부대/해외 배송 문의 -->
			<div class="container mt-5">
				<div class="border-bottom border-dark pb-2" style="font-size:20px;">
					<i class="fas fa-question-circle" style="color:#00388C"></i> <b>군부대/해외 배송 문의</b>
				</div>
				<div>
					<p class="mt-2">
						<a class="w-100 btn btn-light" data-bs-toggle="collapse"
							href="#army" role="button" aria-expanded="false"
							style="text-align: left;"
							aria-controls="army">군부대 배송 가능한가요?<i class="fas fa-sort-down" style="float: right;"></i>
						</a>
					</p>
					<div class="collapse" id="army">
						<div class="card card-body">
							<p style="margin-bottom:0px; line-height:30px;">
								주문 전 택배 수령이 가능한 부대인지 확인해 주세요.<br>
								CJ 대한통운 택배 수령이 어렵거나, 우체국 사서함을 이용하는 경우 배송이 어려울 수 있습니다.
							</p>
						</div>
					</div>
				</div>
				<div>
					<p class="mt-3">
						<a class="w-100 btn btn-light" data-bs-toggle="collapse"
							href="#abroad" role="button" aria-expanded="false"
							style="text-align: left;"
							aria-controls="abroad">해외 배송 가능한가요?<i class="fas fa-sort-down" style="float: right;"></i>
						</a>
					</p>
					<div class="collapse" id="abroad">
						<div class="card card-body">
							<p style="margin-bottom:0px; line-height:30px;">
								현재 국내 배송만 가능하며, 해외 배송은 지원하지 않고 있습니다.<br>
								더 많은 고객님들께서 와이즐리 제품을 이용할 수 있도록 노력하겠습니다.
							</p>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 배송 문의 -->
			<div class="container mt-5">
				<div class="border-bottom border-dark pb-2" style="font-size:20px;">
					<i class="fas fa-question-circle" style="color:#00388C"></i> <b>배송 문의</b>
				</div>
				<div>
					<p class="mt-2">
						<a class="w-100 btn btn-light" data-bs-toggle="collapse"
							href="#out-schedule" role="button" aria-expanded="false"
							style="text-align: left;"
							aria-controls="out-schedule">출고 일정이 궁금해요<i class="fas fa-sort-down" style="float: right;"></i>
						</a>
					</p>
					<div class="collapse" id="out-schedule">
						<div class="card card-body">
							<p style="margin-bottom:0px; line-height:30px;">
								평일 낮 12시 이전 결제 완료 시 당일 출고됩니다.<br>
								평일 낮 12시 이후 결제 건은 다음날 출고가 시작됩니다.<br>
								단, 주문량에 따라 12시 이전 주문 건이 다음날 출고되거나 12시 이후 주문 건이 당일 출고될 수 있는 점<br>
								참고 부탁드립니다.
							</p>
						</div>
					</div>
				</div>
				<div>
					<p class="mt-3">
						<a class="w-100 btn btn-light" data-bs-toggle="collapse"
							href="#delivery-schedule" role="button" aria-expanded="false"
							style="text-align: left;"
							aria-controls="delivery-schedule">배송 일정이 궁금해요<i class="fas fa-sort-down" style="float: right;"></i>
						</a>
					</p>
					<div class="collapse" id="delivery-schedule">
						<div class="card card-body">
							<p style="margin-bottom:0px; line-height:30px;">
								<b>출고 후 수령까지 1~2일 정도 소요됩니다.</b><br>
								다만, 관할 지역 택배사 사정에 따라 일부 지연될 수 있습니다.<br>
								천재지변 등 예외적인 사유 발생 시 추가 소요될 수 있는 점 양해 부탁드립니다.<br>
							</p>
						</div>
					</div>
				</div>
				<div>
					<p class="mt-3">
						<a class="w-100 btn btn-light" data-bs-toggle="collapse"
							href="#company" role="button" aria-expanded="false"
							style="text-align: left;"
							aria-controls="company">어떤 택배사로 배송되나요?<i class="fas fa-sort-down" style="float: right;"></i>
						</a>
					</p>
					<div class="collapse" id="company">
						<div class="card card-body">
							<p style="margin-bottom:0px; line-height:30px;">
								HY (한국야쿠르트) 프레딧 매니저를 통해 배송됩니다.<br>
								HY 배송이 어려운 지역의 경우 CJ 대한통운으로 발송됩니다.<br>
								택배사 파업 등 배송 이슈 발생 시 기타 택배사로 출고될 수 있는 점 참고 부탁드립니다.<br>
							</p>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 배송비 정책-->
			<div class="container mt-5">
				<div class="border-bottom border-dark pb-2" style="font-size:20px;">
					<i class="fas fa-question-circle" style="color:#00388C"></i> <b>배송비 정책</b>
				</div>
				<div>
					<p class="mt-2">
						<a class="w-100 btn btn-light" data-bs-toggle="collapse"
							href="#price" role="button" aria-expanded="false"
							style="text-align: left;"
							aria-controls="price">배송 조건이 어떻게 되나요?<i class="fas fa-sort-down" style="float: right;"></i>
						</a>
					</p>
					<div class="collapse" id="price">
						<div class="card card-body">
							<p style="margin-bottom:0px; line-height:30px;">
								<b>제품 구매 시 3,000원이 부과됩니다.</b><br>
								다만, 도서산간 지역의 경우 3,000원 추가 배송비가 발생합니다.<br>
							</p>
						</div>
					</div>
				</div>
			</div>
		</article>
	</section>
</main>
<%@ include file="../inc/footer.jsp"%>