 <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp"%>
<script src="../js/validChk.js"></script>

<%
 
    request.setCharacterEncoding("UTF-8");
 
%>
<main>

	<div class="container mt-5 ">
		<h2 class="text-center">회원가입</h2>
		<form action="<c:url value='/user_joinOk'/>" method="post"
			name="joinForm" class="col-sm-4  " accept-charset="UTF-8"
			style="width: 660px; float: none; margin: 0 auto">
			<div
				class="mt-4 pb-3 d-flex justify-content-between
			 border-bottom border-2 border-dark ">
				<h4>기본정보</h4>
				<span class="text-center border pt-2">필수 입력 사항</span>
			</div>
			<!-- 이메일 -->
			<div class="mt-4 mb-4 d-flex justify-content-start">
				<label class="  pt-1 px-2 " style="width: 120px" for="email" ><b>이메일</b></label>
				<div>
					<input class=" form-control-sm  mb-1" style="width: 420px"
						type="text" id="email" name="mem_email" placeholder="이메일을 입력해주세요" />
					<p class="ps-2 text-danger">이메일을 입력해주세요</p>
				</div>

			</div>

			<!-- 비밀번호  -->
			<div class=" mb-4 d-flex justify-content-start">
				<label class="  pt-1 px-2 " style="width: 120px" for="pw"><b>비밀번호</b></label>
				<div>
					<input class=" form-control-sm  mb-1" style="width: 420px"
						type="text" id="pw" name="mem_pw" placeholder="비밀번호를 입력해주세요" />
					<p class="ps-2 text-secondary">(영문 대소문자/숫자/특수문자 중 2가지 이상 조합.
						10자~16자)</p>
				</div>
			</div>

			<!-- 비밀번호확인  -->
			<div class=" mb-4 d-flex justify-content-start">
				<label class="  pt-1 px-2 " style="width: 120px" for="pwCheck"><b>비밀번호
						확인</b></label>
				<div>
					<input class=" form-control-sm  mb-1" style="width: 420px"
						type="text" id="pwCheck" placeholder="비밀번호를 한번 더 입력해주세요" />
					<p class="ps-2 text-danger">비밀번호가 일치하지 않습니다</p>
				</div>
			</div>

			<!-- 이름 -->
			<div class="mb-4 d-flex justify-content-start">
				<label class="  pt-1 px-2 " style="width: 120px" for="name"><b>이름</b></label>
				<input class=" form-control-sm  mb-3" style="width: 420px"
					type="text" id="name" name="mem_name" placeholder="실명으로 기입해주세요" />
			</div>

			<!-- 휴대전화 -->
			<div class="mb-4 d-flex justify-content-start">
				<label class="  pt-1 px-2  " style="width: 120px" for="tel"><b>전화번호</b></label>
				<div>
					<input class=" form-control-sm  mb-3" style="width: 420px"
					type="text" id="name" name="mem_tel" placeholder="실명으로 기입해주세요" />
					<p class="ps-2 text-danger">휴대폰 번호를 입력하세요</p>
				</div>
			</div>

			<!-- 주소 -->
			<div class="addrs mb-4 d-flex justify-content-start">
				<label class="  pt-1 px-2  " style="width: 120px" for="addr"><b>주소</b></label>
				<div>
					<input class="mb-1 " style="width: 420px" name="mem_zipcode"
						type="text" id="sample4_postcode" placeholder="우편번호">
					<button class="btn btn-sm btn-outline-primary " type="button"
						onclick="sample4_execDaumPostcode()">우편번호 찾기</button>
					<br> <input class="mb-1" style="width: 420px"
						name="mem_road_addr" type="text" id="sample4_roadAddress"
						placeholder="도로명주소"><br> <input class="mb-1"
						style="width: 420px" name="mem_jibun_addr" type="text"
						id="sample4_jibunAddress" placeholder="지번주소"><br> <span
						id="guide" style="color: #999; display: none"></span>
				</div>
			</div>
			<!-- 이용약관동의 -->
			<div
				class=" mb-4 d-flex justify-content-start border-top border-2 border-dark">
				<label class="  pt-1 px-2 " style="width: 120px"><b>이용약관
						동의</b></label>

				<div class="border" style="width: 420px">
					<!-- 전체 동의 -->
					<label>
						<div>
							<input type="checkbox" name="agreeAll" style="margin-right: 5px;">
							<b>전체 동의</b>
						</div>
					</label> <br>
					<!--[필수] 이용약관 동의  -->
					<label>
						<div>
							<input type="checkbox" name="agree1" style="margin-right: 5px;">
							[필수] 이용약관 동의
						</div>

					</label> <br>
					<!--[필수] 개인정보 수집 및 이용 동의 -->
					<label>
						<div>
							<input type="checkbox" name="agree2" style="margin-right: 5px;">
							[필수] 개인정보 수집 및 이용 동의
						</div>

					</label> <br>
					<!--[선택] SMS 수신동의  -->
					<label>
						<div>
							<input type="checkbox" name="agree3" style="margin-right: 5px;">
							[선택] SMS (문자, 카카오톡 등)으로 혜택과 유용한 정보를 보내드려도 될까요?
						</div>
					</label> <br>
					<!--[선택] SMS 수신동의  -->
					<label>
						<div>
							<input type="checkbox" name="agree4" style="margin-right: 5px;">
							[선택] 이메일로 혜택과 정보를 보내드려도 될까요?
						</div>

					</label> <br> <span> 본인은 만 14세 이상이며,<a href=""> 이용약관</a>, <a
						href=""> 개인정보 수집 및 이용</a>을 확인하였으며, 동의합니다.
					</span>
				</div>



			</div>


			<!-- 가입하기 버튼 -->
			<div class=" text-center border" style="width: 660px">
				<!-- <input type="submit" class="btn btn-lg" value="가입하기"
					style="background: #00388C; border-color: #00388C;" /> -->
				<button type="submit">가입하기</button>
			</div>
			<script> 		
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

		</form>
	</div>

</main>
<%@ include file="../inc/footer.jsp"%>