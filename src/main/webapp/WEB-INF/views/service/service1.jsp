<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp"%>
<link href="resources/css/my_page.css" rel="stylesheet"/> 
<main class="container d-flex mt-5">
	<%@ include file="../inc/myPage.jsp"%>
	<section class="container ms-4 ps-5" style="width:1000px; margin:auto;">
		<article>
			<div class="container d-flex">
				<h3 class="mb-3 me-4">고객센터</h3>
				<span class="my-1">평일 9:00 ~ 18:00</span>
			</div>
			<div class="container d-flex justify-content-between">
				<a href="<c:url value='service1'/>" class="btn btn-primary me-3" 
				style="width:120px; height:50px; line-height:35px; background:#00388C; border-color:#00388C;">회원정보</a>
				<a href="<c:url value='service2'/>" class="btn btn-primary me-3" 
				style="width:120px; height:50px; line-height:35px; color:#666; border-color:#ccc; background-color:white;">배송</a>
				<a href="<c:url value='service3'/>" class="btn btn-primary me-3" 
				style="width:120px; height:50px; line-height:35px; color:#666; border-color:#ccc; background-color:white;">결제</a>
				<a href="<c:url value='service4'/>" class="btn btn-primary me-3" 
				style="width:120px; height:50px; line-height:35px; color:#666; border-color:#ccc; background-color:white;">교환/반품</a>
				<a href="<c:url value='service5'/>" class="btn btn-primary" 
				style="width:120px; height:50px; line-height:35px; color:#666; border-color:#ccc; background-color:white;">환불</a>
			</div>
		</article>
		<article>
			<!-- 광고 수신 동의 -->
			<div class="container mt-5">
				<div class="border-bottom border-dark pb-2" style="font-size:20px;">
					<i class="fas fa-question-circle" style="color:#00388C"></i> <b>광고 수신 동의</b>
				</div>
				<div>
					<p class="mt-2">
						<a class="w-100 btn btn-light" data-bs-toggle="collapse"
							href="#member_agree" role="button" aria-expanded="false"
							style="text-align: left;"
							aria-controls="member_agree"> 광고 메시지를 그만 받고싶어요 <i class="fas fa-sort-down" style="float: right;"></i>
						</a>
					</p>
					<div class="collapse" id="member_agree">
						<div class="card card-body">
							<b>와이즐리 홈페이지 → 마이페이지 → 회원정보 수정에서 수신 동의를 해지해 주세요!</b>
							<p style="margin-bottom:0px; line-height:30px;">
								수신 동의를 해지하는 경우 이벤트 및 혜택 정보를 더 이상 수신하실 수 없습니다.<br>
								카카오톡 메시지의 경우 채널까지 차단해 주셔야 수신 차단이 가능합니다.
							</p>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 회원정보 수정 -->
			<div class="container mt-5">
				<div class="border-bottom border-dark pb-2" style="font-size:20px;">
					<i class="fas fa-question-circle" style="color:#00388C"></i> <b>회원정보 수정</b>
				</div>
				<div>
					<p class="mt-2">
						<a class="w-100 btn btn-light" data-bs-toggle="collapse"
							href="#member_update" role="button" aria-expanded="false"
							style="text-align: left;"
							aria-controls="member_update">회원정보를 수정하고 싶어요<i class="fas fa-sort-down" style="float: right;"></i>
						</a>
					</p>
					<div class="collapse" id="member_update">
						<div class="card card-body">
							<p style="margin-bottom:0px; line-height:30px;">
								와이즐리 홈페이지 → 마이페이지 내 정보 수정에서 변경 가능합니다.<br> 정보가 변경된 경우 꼭 회원
								정보를 변경해 주세요
							</p>
						</div>
					</div>
				</div>
				<div>
					<p class="mt-3">
						<a class="w-100 btn btn-light" data-bs-toggle="collapse"
							href="#member_join" role="button" aria-expanded="false"
							style="text-align: left;"
							aria-controls="member_join"> 가입 시 회원정보를 잘못 입력했어요 <i class="fas fa-sort-down" style="float: right;"></i>
						</a>
					</p>
					<div class="collapse" id="member_join">
						<div class="card card-body">
							<p style="margin-bottom:0px; line-height:30px;">
								고객센터로 연락 주시면 본인 확인 후 수정 가능합니다.<br>
								회원 정보가 잘못 등록되어 있는 경우 정상적으로 주문 및 배송이 완료되지 않을 수 있기 때문에,<br>
								주문 시 이름/이메일을 꼭 확인해 주세요!<br>
								<b>※ 타인의 개인 정보를 동의 없이 사용하는 경우 법적 조치를 받을 수 있습니다.</b>
							</p>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 회원가입/탈퇴-->
			<div class="container mt-5">
				<div class="border-bottom border-dark pb-2" style="font-size:20px;">
					<i class="fas fa-question-circle" style="color:#00388C"></i> <b>회원 가입/탈퇴</b>
				</div>
				<div class="member_email">
					<p class="mt-2">
						<a class="w-100 btn btn-light" data-bs-toggle="collapse"
							href="#member_email" role="button" aria-expanded="false"
							style="text-align: left;"
							aria-controls="member_email">이미 가입된 이메일 주소라고 합니다. 어떻게 해야 하나요? <i class="fas fa-sort-down" style="float: right;"></i>
						</a>
					</p>
					<div class="collapse" id="member_email">
						<div class="card card-body">
							<p style="margin-bottom:0px; line-height:30px;">
								이미 가입된 이메일은 사용하실 수 없습니다.<br>
								새로운 이메일 주소를 입력해 주시거나, 고객센터로 연락 주시면 안내 도와드리겠습니다.
							</p>
						</div>
					</div>
				</div>
				<div class="member_delete">
					<p class="mt-3">
						<a class="w-100 btn btn-light" data-bs-toggle="collapse"
							href="#member_del" role="button" aria-expanded="false"
							style="text-align: left;"
							aria-controls="member_del">회원탈퇴는 어디서 하나요? <i class="fas fa-sort-down" style="float: right;"></i>
						</a>
					</p>
					<div class="collapse" id="member_del">
						<div class="card card-body">
							<p style="margin-bottom:0px; line-height:30px;">
								마이페이지 내 회원 정보 수정에서 최하단 회원 탈퇴를 클릭해 주시면 됩니다.<br>
								문제가 있는 경우, 고객센터로 문의해 주세요.
							</p>
						</div>
					</div>
				</div>
			</div>
		</article>
	</section>
</main>
<%@ include file="../inc/footer.jsp"%>