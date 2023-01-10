
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp"%>
<link href="resources/css/my_page.css" rel="stylesheet"/> 
<main>
	<div class="container d-flex">
		<%@ include file="../inc/my_page_side.jsp"%>
		<article class="ms-4" style="width: 800px;">
			<div class="d-flex">
				<h3 class="mb-5">고객센터</h3>
				<span>평일 9:00 ~ 18:00</span>
			</div>
			<ul class="d-flex" style="list-style-type: none;">
				<li class="button me-3" onclick="change_color(event)"id="member"><a href="#">회원정보</a></li>
				<li class="button me-3" onclick="change_color(event)"id="shipping"><a href="#">배송</a></li>
				<li class="button me-3" onclick="change_color(event)"id="pay"><a href="#">결제</a></li>
				<li class="button me-3" onclick="change_color(event)"id="exchange"><a href="#">교환/반품</a></li>
				<li class="button me-3" onclick="change_color(event)"id="refund"><a href="#">환불</a></li>
			</ul>

			<div class="member">
				<!-- 광고 수신 동의 -->

				<div class="member_agree">
					<div class="border-bottom border-dark pb-2">
						<i class="fas fa-question-circle"></i> <b>광고 수신 동의</b>
					</div>
					<div class="member_message">
						<p class="mt-2">
							<a class="btn btn-light" data-bs-toggle="collapse"
								href="#member_agree" role="button" aria-expanded="false"
								style="width: 800px; text-align: left;"
								aria-controls="member_agree"> 광고 메시지를 그만 받고싶어요 <i
								class="fas fa-sort-down" style="float: right;"></i>
							</a>

						</p>
						<div class="collapse" id="member_agree">
							<div class="card card-body" style="width: 800px;">
								<b>와이즐리 홈페이지 → 마이페이지 → 회원정보 수정에서 수신 동의를 해지해 주세요!</b>
								<p>
									수신 동의를 해지하는 경우 이벤트 및 혜택 정보를 더 이상 수신하실 수 없습니다.<br> 카카오톡
									메시지의 경우 채널까지 차단해 주셔야 수신 차단이 가능합니다.
								</p>
							</div>
						</div>
					</div>
				</div>
				<!-- 회원정보 수정 -->
				<div class="member_modify mt-4">
					<div class="border-bottom border-dark pb-2">
						<i class="fas fa-question-circle"></i> <b>회원정보 수정</b>
					</div>
					<!-- 회원정보를 수정하고싶어요 -->
					<div class="member_update">

						<p class="mt-2">
							<a class="btn btn-light" data-bs-toggle="collapse"
								href="#member_update" role="button" aria-expanded="false"
								style="width: 800px; text-align: left;"
								aria-controls="member_update"> 회원정보를 수정하고싶어요 <i
								class="fas fa-sort-down" style="float: right;"></i>
							</a>

						</p>
						<div class="collapse" id="member_update">
							<div class="card card-body" style="width: 800px;">
								<p>
									와이즐리 홈페이지 → 마이페이지 내 정보 수정에서 변경 가능합니다.<br> 정보가 변경된 경우 꼭 회원
									정보를 변경해 주세요
								</p>
							</div>
						</div>
					</div>
					<div class="member_join">
						<p class="mt-2">
							<a class="btn btn-light" data-bs-toggle="collapse"
								href="#member_join" role="button" aria-expanded="false"
								style="width: 800px; text-align: left;"
								aria-controls="member_join"> 가입 시 회원정보를 잘못 입력했어요 <i
								class="fas fa-sort-down" style="float: right;"></i>
							</a>

						</p>
						<div class="collapse" id="member_join">
							<div class="card card-body" style="width: 800px;">
								<p>
									고객센터로 연락 주시면 본인 확인 후 수정 가능합니다.<br> 회원 정보가 잘못 등록되어 있는 경우
									정상적으로 주문 및 배송이 완료되지 않을 수 있기 때문에, 주문 시 이름/이메일을 꼭 확인해 주세요!<br>
									※ 타인의 개인 정보를 동의 없이 사용하는 경우 법적 조치를 받을 수 있습니다.
								</p>
							</div>
						</div>
					</div>
				</div>
				<!-- 회원가입/탈퇴-->
				<div class="member_register mt-4">

					<div class="border-bottom border-dark pb-2">
						<i class="fas fa-question-circle"></i> <b>회원 가입/탈퇴</b>
					</div>
					<!-- 이미 가입된 이메일 주소-->
					<div class="member_email">
						<p class="mt-2">
							<a class="btn btn-light" data-bs-toggle="collapse"
								href="#member_email" role="button" aria-expanded="false"
								style="width: 800px; text-align: left;"
								aria-controls="member_email">이미 가입된 이메일 주소라고 합니다. 어떻게 해야
								하나요? <i class="fas fa-sort-down" style="float: right;"></i>
							</a>

						</p>
						<div class="collapse" id="member_email">
							<div class="card card-body" style="width: 800px;">

								<p>
									이미 가입된 이메일은 사용하실 수 없습니다.<br> 새로운 이메일 주소를 입력해 주시거나, 고객센터로
									연락 주시면 안내 도와드리겠습니다.
								</p>
							</div>
						</div>
					</div>
					<!-- 회원탈퇴-->
					<div class="member_delete">
						<p class="mt-2">
							<a class="btn btn-light" data-bs-toggle="collapse"
								href="#member_del" role="button" aria-expanded="false"
								style="width: 800px; text-align: left;"
								aria-controls="member_del"> 회원탈퇴는 어디서 하나요? <i
								class="fas fa-sort-down" style="float: right;"></i>
							</a>

						</p>
						<div class="collapse" id="member_del">
							<div class="card card-body" style="width: 800px;">
								<p>
									마이페이지 내 회원 정보 수정에서 최하단 회원 탈퇴를 클릭해 주시면 됩니다.<br> 문제가 있는 경우,
									고객센터로 문의해 주세요.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 회원정보 끝 -->
			<!-- <<배송문의>> -->
			<div class="shipping">

				<div class="border-bottom border-dark pb-2">
					<i class="fas fa-question-circle"></i> <b>군부대/해외 배송 문의</b>
				</div>
				<!-- 군부대/해외 배송 문의  -->
				<div class="shipping_army">
					<p class="mt-2">
						<a class="btn btn-light" data-bs-toggle="collapse"
							href="#shipping_army" role="button" aria-expanded="false"
							style="width: 800px; text-align: left;"
							aria-controls="shipping_army"> 군부대 배송 가능한가요? <i
							class="fas fa-sort-down" style="float: right;"></i>
						</a>

					</p>
					<div class="collapse" id="shipping_army">
						<div class="card card-body" style="width: 800px;">

							<p>
								주문 전 택배 수령이 가능한 부대인지 확인해 주세요.<br> CJ 대한통운 택배 수령이 어렵거나, 우체국
								사서함을 이용하는 경우 배송이 어려울 수 있습니다.
							</p>
						</div>
					</div>
				</div>
				<!-- 문의2 -->
				<div class="hipping_overseas">
					<p class="mt-2">
						<a class="btn btn-light" data-bs-toggle="collapse"
							href="#hipping_overseas" role="button" aria-expanded="false"
							style="width: 800px; text-align: left;"
							aria-controls="hipping_overseas"> 해외 배송 가능한가요? <i
							class="fas fa-sort-down" style="float: right;"></i>
						</a>

					</p>
					<div class="collapse" id="hipping_overseas">
						<div class="card card-body" style="width: 800px;">

							<p>
								현재 국내 배송만 가능하며, 해외 배송은 지원하지 않고 있습니다.<br> 더 많은 고객님들께서 와이즐리
								제품을 이용할 수 있도록 노력하겠습니다.
							</p>
						</div>
					</div>
				</div>
				<!-- 문의 제목 -->
				<div class="shipping_inquiry mt-4">
					<div class="border-bottom border-dark pb-2">
						<i class="fas fa-question-circle"></i> <b>배송문의 </b>
					</div>
					<!-- 문의1 -->
					<div class="">
						<p class="mt-2">
							<a class="btn btn-light" data-bs-toggle="collapse"
								href="#shipping_inquiry" role="button" aria-expanded="false"
								style="width: 800px; text-align: left;"
								aria-controls="shipping_inquiry"> 출고 일정이 궁금해요 <i
								class="fas fa-sort-down" style="float: right;"></i>
							</a>

						</p>
						<div class="collapse" id="shipping_inquiry">
							<div class="card card-body" style="width: 800px;">
								<p>
									평일 낮 12시 이전 결제해 주시면당일 출고됩니다.<br> 낮 12시 이후 결제건은 그다음 날 출고가
									시작되며 <br> 주말 및 공휴일에 주문한 경우, 평일에 출고가 진행됩니다.
								</p>
							</div>
						</div>
					</div>
					<!-- 배송 일정 -->
					<div class="shipping_calendar">
						<p class="mt-2">
							<a class="btn btn-light" data-bs-toggle="collapse"
								href="#shipping_calendar" role="button" aria-expanded="false"
								style="width: 800px; text-align: left;"
								aria-controls="shipping_calendar"> 배송 일정이 궁금해요 <i
								class="fas fa-sort-down" style="float: right;"></i>
							</a>

						</p>
						<div class="collapse" id="shipping_calendar">
							<div class="card card-body" style="width: 800px;">
								<p>
									출고 후 수령까지 1~2일 정도 소요됩니다.<br> 다만, 관할 지역 택배사 사정에 따라 일부 지연될 수
									있습니다. <br> 천재지변 등 예외적인 사유 발생 시 추가 소요될 수 있는 점 양해 부탁드립니다.
								</p>
							</div>
						</div>
					</div>
					<!-- 택배사 -->
					<div class="shipping_parcel">
						<p class="mt-2">
							<a class="btn btn-light" data-bs-toggle="collapse"
								href="#shipping_parcel" role="button" aria-expanded="false"
								style="width: 800px; text-align: left;" aria-controls=""> 어떤
								택배사로 배송 되나요? <i class="fas fa-sort-down" style="float: right;"></i>
							</a>

						</p>
						<div class="collapse" id="shipping_parcel">
							<div class="card card-body" style="width: 800px;">

								<p>
									HY(한국야쿠르트) 프레딧 매니저를 통해 배송됩니다.<br> HY 배송이 어려운 지역의 경우 CJ
									대한통운으로 발송됩니다.<br> 택배사 파업 등 배송 이슈 발생 시 기타 택배사로 출고될 수 있는 점
									참고 부탁드립니다.
								</p>
							</div>
						</div>
					</div>
					<!-- 문의 제목 -->
					<div class="shipping_rule mt-4">
						<div class="border-bottom border-dark pb-2">
							<i class="fas fa-question-circle"></i> <b>배송비 정책</b>
						</div>
						<!-- 문의1 -->
						<div class="shipping_condition">
							<p class="mt-2">
								<a class="btn btn-light" data-bs-toggle="collapse"
									href="#shipping_condition" role="button" aria-expanded="false"
									style="width: 800px; text-align: left;"
									aria-controls="shipping_condition"> 배송 조건이 어떻게 되나요? <i
									class="fas fa-sort-down" style="float: right;"></i>
								</a>

							</p>
							<div class="collapse" id="shipping_condition">
								<div class="card card-body" style="width: 800px;">

									<p>
										제품 구매 시 3,000원이 부과됩니다. <br> 다만, 도서산간 지역의 경우 3,000원 추가
										배송비가 발생합니다.<br> 정기 구독과 일반 구매 모두 같은 기준이 적용됩니다.
									</p>
								</div>
							</div>
						</div>


					</div>

				</div>
			</div>
			<!--  -->

			<!-- 문의 배송 조건 끝 -->
			<!-- 배송 -->
			<!-- 결제 part -->
			<div class="pay">
				<!-- 결제 전 -->
				<div class="pay_before">
					<div class="border-bottom border-dark pb-2">
						<i class="fas fa-question-circle"></i> <b>결제 전</b>
					</div>
					<!-- 문의1 -->
					<div class="">
						<p class="mt-2">
							<a class="btn btn-light" data-bs-toggle="collapse"
								href="#pay_before" role="button" aria-expanded="false"
								style="width: 800px; text-align: left;"
								aria-controls="pay_before"> 계좌 이체 시 주문자 이름과 입금자 이름이 달라도
								상관없나요? <i class="fas fa-sort-down" style="float: right;"></i>
							</a>

						</p>
						<div class="collapse" id="pay_before">
							<div class="card card-body" style="width: 800px;">

								<p>
									금액만 같다면 주문자와 입금자가 달라도 괜찮습니다! 고객님 전용의 계좌번호가 생성되기 때문에, 입금자명이 달라도
									입금 확인이 가능합니다.<br> 다만, 주문 금액과 입금 금액이 다를 경우 입금 처리가 어려우니 이 점
									꼭 유의해 주세요!<br> 입금이 완료되면 입금 확인 문자를 보내드립니다.
								</p>
							</div>
						</div>
					</div>

				</div>
				<!-- 결제 전 -->

				<!-- 결제 후 -->
				<div class="pay_after mt-4">
					<div class="border-bottom border-dark pb-2">
						<i class="fas fa-question-circle"></i> <b>결제 이후</b>
					</div>
					<!-- 문의1 -->
					<div class="pay_how">
						<p class="mt-2">
							<a class="btn btn-light" data-bs-toggle="collapse"
								href="#pay_how" role="button" aria-expanded="false"
								style="width: 800px; text-align: left;" aria-controls="pay_how">
								결제 후 결제 방법을 변경할 수 있나요? <i class="fas fa-sort-down"
								style="float: right;"></i>
							</a>

						</p>
						<div class="collapse" id="pay_how">
							<div class="card card-body" style="width: 800px;">

								<p>
									결제 완료 상태에서 결제 수단 변경은 불가합니다.<br> 결제 수단 변경을 원하실 경우 기존 주문 건
									취소 후 다시 주문해 주세요.
								</p>
							</div>
						</div>
					</div>
					<!-- 현금영수증 -->
					<div class="pay_receip">
						<p class="mt-2">
							<a class="btn btn-light" data-bs-toggle="collapse"
								href="#pay_receip" role="button" aria-expanded="false"
								style="width: 800px; text-align: left;"
								aria-controls="pay_receip"> 현금영수증은 어떻게 받을 수 있나요 ? <i
								class="fas fa-sort-down" style="float: right;"></i>
							</a>

						</p>
						<div class="collapse" id="pay_receip">
							<div class="card card-body" style="width: 800px;">

								<p>
									무통장입금/가상 계좌 결제 시 현금 영수증 발행 여부를 선택할 수 있습니다.<br> 현금영수증 발행
									정보를 입력하지 못하신 경우 고객센터로 문의 남겨주세요.
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- 결제 후 -->
			<!-- 결제 part -->

			<!-- 교환/반품 part -->

			<div class="exchange">
				<!-- 교환 및 반품 신청 -->
				<div class="border-bottom border-dark pb-2">
					<i class="fas fa-question-circle"></i> <b>교환 및 반품 신청</b>
				</div>
				<div class="exchange_apply">
					<p class="mt-2">
						<a class="btn btn-light" data-bs-toggle="collapse"
							href="#exchange_apply" role="button" aria-expanded="false"
							style="width: 800px; text-align: left;"
							aria-controls="exchange_apply"> 교환/반품 신청 <i
							class="fas fa-sort-down" style="float: right;"></i>
						</a>
					</p>
					<div class="collapse" id="exchange_apply">
						<div class="card card-body" style="width: 800px;">
							<p>
								마이페이지 > 주문/배송 조회 > 교환/반품 버튼을 통해 신청가능합니다.<br> 제품을 수령한 날로부터
								1주일 이내 신청 가능하며 제품 개봉 및 사용 시 신청이 불가합니다.<br> 단순 변심으로 인한 교환/반품
								시 왕복 배송비 6,000원이 발생하며 제주 및 도서 산간 지역의 경우 추가 배송비가 발생할 수 있습니다.<br>
								(제품 초기 불량의 경우 불량인 사실을 안 날로부터 30일 이내 신청 가능, 단 수령 후 90일 경과 시 신청
								불가)
							</p>
						</div>
					</div>
				</div>
				<!-- 교횐 반품 취소 -->
				<div class="exchange_cancel mt-4">
					<div class="border-bottom border-dark pb-2">
						<i class="fas fa-question-circle"></i> <b>교환 및 반품 철회</b>
					</div>
					<!-- 문의1 -->
					<div class="exchange_cancel">
						<p class="mt-2">
							<a class="btn btn-light" data-bs-toggle="collapse"
								href="#exchange_cancel" role="button" aria-expanded="false"
								style="width: 800px; text-align: left;"
								aria-controls="exchange_cancel"> 교환/반품 신청을 취소하고 싶어요 <i
								class="fas fa-sort-down" style="float: right;"></i>
							</a>

						</p>
						<div class="collapse" id="exchange_cancel">
							<div class="card card-body" style="width: 800px;">

								<p>
									마이페이지 > 주문/배송 조회 > 주문상세 > 교환/반품 철회 메뉴를 통해 신청하실 수 있습니다.<br>
									철회 신청하였으나 수거 매니저가 방문하였을 경우 교환/반품 철회 의사를 전달 부탁드립니다.
								</p>
							</div>
						</div>
					</div>
					<!-- 문의 -->
				</div>
			</div>

			<!-- 교환/반품 part -->
			<!-- 환불 part -->
			<div class="refund">
				<!-- 문의 제목 -->

				<div class="border-bottom border-dark pb-2">
					<i class="fas fa-question-circle"></i> <b>환불 확인</b>
				</div>
				<!-- 문의1 -->
				<div class="refund_check">
					<p class="mt-2">
						<a class="btn btn-light" data-bs-toggle="collapse"
							href="#refund_check" role="button" aria-expanded="false"
							style="width: 800px; text-align: left;"
							aria-controls="refund_check"> 반품/취소 후 환불까지는 얼마나 소요되나요? <i
							class="fas fa-sort-down" style="float: right;"></i>
						</a>

					</p>
					<div class="collapse" id="refund_check">
						<div class="card card-body" style="width: 800px;">

							<p>
								반품 완료 후 평일 기준 1~3일 내로 환불이 완료됩니다.<br> 다만, 카드사 및 결제사의 사정에 따라
								1~2일 정도 추가 소요될 수 있습니다.
							</p>
						</div>
					</div>
				</div>
			</div>

			<!-- 환불 part -->
		</article>
	</div>





	<script type="text/javascript">
		 $(document).ready(function() {
			document.getElementById('member').click();
		});

		 $("#member").click(function() {
			$('.member').show();
			$('.shipping').hide();
			$('.pay').hide();
			$('.exchange').hide();
			$('.refund').hide();
		});

		$("#shipping").click(function() {
			$('.shipping').show();
			$('.member').hide();
			$('.pay').hide();
			$('.exchange').hide();
			$('.refund').hide();

		});

		$("#pay").click(function() {
			$('.pay').show();
			$('.member').hide();
			$('.shipping').hide();
			$('.exchange').hide();
			$('.refund').hide();

		});

		$("#exchange").click(function() {
			$('.exchange').show();
			$('.member').hide();
			$('.shipping').hide();
			$('.pay').hide();
			$('.refund').hide();

		});

		$("#refund").click(function() {
			$('.refund').show();
			$('.member').hide();
			$('.shipping').hide();
			$('.exchange').hide();
			$('.pay').hide();

		});
		
		function change_color(e) {
			  var btns = document.querySelectorAll(".button");
			  btns.forEach(function (btn, i) {
			    if (e.currentTarget == btn) {
			      btn.classList.add("active");
			    } else {
			      btn.classList.remove("active");
			    }
			  });
			  console.log(e.currentTarget);
			}
		</script>
	
</main>
<%@ include file="../inc/footer.jsp"%>