<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<main>
	<section class="container mt-5 border shadow p-5" style="width:700px;">
		<h3 class="text-center mb-5">회원가입</h3>
		<form action="<c:url value='memberInsert'/>" method="post" name="joinForm">

			<!-- 이메일 -->
			<div class="mt-4 mb-2 d-flex justify-content-start">
				<label class="pt-1 px-2 " style="width:120px;" for="memEmail" ><b>이메일</b></label>
				<div>
					<input type="text" class="form-control mb-1" id="memEmail" name="memEmail" placeholder="이메일을 입력해주세요"
						style="width:420px;"/>
				</div>
			</div>

			<!-- 비밀번호  -->
			<div class="mb-2 d-flex justify-content-start">
				<label class="pt-1 px-2 " style="width: 120px" for="memPw"><b>비밀번호</b></label>
				<div>
					<input class="form-control mb-1" style="width: 420px"
						type="password" id="memPw" name="memPw" placeholder="비밀번호를 입력해주세요" />
					<p class="ps-2 text-secondary">(영문 대소문자/숫자/특수문자 중 2가지 이상 조합. 10자~16자)</p>
				</div>
			</div>

			<!-- 비밀번호확인  -->
			<div class="mb-2 d-flex justify-content-start">
				<label class="pt-1 px-2" style="width: 120px" for="pwCheck"><b>비밀번호 확인</b></label>
				<div>
					<input class="form-control mb-3" style="width: 420px"
						type="password" id="pwCheck" placeholder="비밀번호를 한번 더 입력해주세요" />
				</div>
			</div>

			<!-- 이름 -->
			<div class="mb-2 d-flex justify-content-start">
				<label class="pt-1 px-2" style="width:120px" for="memName"><b>이름</b></label>
				<input class="form-control mb-3" style="width: 420px"
					type="text" id="memName" name="memName" placeholder="실명으로 기입해주세요" />
			</div>

			<!-- 휴대전화 -->
			<div class="mb-2 d-flex justify-content-start">
				<label class="pt-1 px-2" style="width:120px" for="memTel"><b>전화번호</b></label>
				<div>
					<input class="form-control mb-3" style="width:420px"
					type="text" id="memTel" name="memTel" placeholder="'-'제외하고 입력해주세요" />
				</div>
			</div>

			<!-- 주소 -->
			<div class="addrs mb-4 d-flex justify-content-start">
				<label class="pt-1 px-2" style="width:120px" for="memAddr"><b>주소</b></label>
				<div>
					<button class="btn btn-sm btn-outline-secondary mb-3" type="button"
						onclick="DaumPostcode()">우편번호 찾기</button>
					<input class="form-control" style="width:420px;" name="memZipcode"
						type="text" id="memZipcode" placeholder="우편번호"/><br>
					<input class="form-control" style="width:420px; margin-top:-10px;"
						name="memRoadAddr" type="text" id="memRoadAddr"
						placeholder="도로명주소"/><br> 
						<input class="form-control" style="width:420px; margin-top:-10px;" name="memJibunAddr"
						type="text" id="memJibunAddr" placeholder="지번주소"/><br>
						<span id="guide" style="color: #999; display: none"></span>
					<input class="form-control" style="width:420px; margin-top:-10px;"
						name="memDetailAddr" type="text" id="memDetailAddr"
						placeholder="상세주소"/><br>
				</div>
			</div>
			
			<!-- 가입하기 버튼 -->
			<div class="d-grid gap-2 text-center">
				<input type="submit" class="btn btn-lg btn-dark mt-3" value="가입완료"
					style="background:#00388C; border-color:#00388C;"/>
			</div>
						
			<script>	
			    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
			    function DaumPostcode() {
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
			                document.getElementById('memZipcode').value = data.zonecode;
			                document.getElementById("memRoadAddr").value = roadAddr;
			                document.getElementById("memJibunAddr").value = data.jibunAddress;
			                
			                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
			                /* if(roadAddr !== ''){
			                    document.getElementById("memDetailAddr").value = extraRoadAddr;
			                } else {
			                    document.getElementById("memDetailAddr").value = '';
			                } */
			
			                var guideTextBox = document.getElementById("guide");
			                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
			                /* if(data.autoRoadAddress) {
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
			                } */
			            }
			        }).open();
			    }
			</script>
		</form>
	</section>
</main>
<script>

</script>
<%@ include file="../inc/footer.jsp"%>