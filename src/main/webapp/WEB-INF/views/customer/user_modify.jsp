<%@ page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../inc/header.jsp" %>

<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


<style>
/* The checkboxs */
.checkboxs {
  display: block;
  position: relative;
  padding-left: 30px;
  cursor: pointer;
  -webkit-user-select: none;
  -moz-user-select: none;
  -ms-user-select: none;
  user-select: none;
}

/* Hide the browser's default radio button */
.checkboxs input {
  position: absolute;
  opacity: 0;
  cursor: pointer;
}

/* Create a custom radio button */
.checkmark {
  position: absolute;
  top: 0;
  left: 0;
  height: 20px;
  width: 20px;
  background-color: #eee;
  border-radius: 50%;
}

/* On mouse-over, add a grey background color */
.checkboxs:hover input ~ .checkmark {
  background-color: #ccc;
}

/* When the radio button is checked, add a blue background */
.checkboxs input:checked ~ .checkmark {
  background-color: #00388c;
}

/* Create the indicator (the dot/circle - hidden when not checked) */
.checkmark:after {
  content: "";
  position: absolute;
  display: none;
}

/* Show the indicator (dot/circle) when checked */
.checkboxs input:checked ~ .checkmark:after {
  display: block;
}

/* Style the indicator (dot/circle) */
.checkboxs .checkmark:after {
  left: 8px;
  top: 4px;
  width: 5px;
  height: 9px;
  border: solid white;
  border-width: 0 1px 1px 0;
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
}

.order-input {
  border-radius: 5px;
  border:1px solid #dddddd;
  height: 46px;
  padding-left: 18px;
  padding-top: 10px;
  padding-bottom: 10px;
  padding-left: 10px;
  outline: none;
}

.payment-btn>span>label {
	width:238px; 
	height:45px; 
	text-align:center; 
	margin-bottom:12px;
	padding-top:10px;
	border-radius: 5px; 
	border:1px solid #dddddd;
  	height: 46px;
	cursor: pointer;
}

.payment-btn>span>input:checked ~ label {
	background-color: #00388c;
	color: white;
	border: none;
}

.payguide {
	text-indent: -20px;
	font-size: 14px;
	color:#999999;
}

</style>


<main>

<c:if test="${requestScope.msg != null}">
<script>
	alert("${requestScope.msg}");
</script>
</c:if>

	<h2 class="text-center mb-5 mt-5">회원정보수정</h2>
	<div class="container" style="width:750px; padding: 0">
			
			
				<div style="width:750px; padding-top: 20px; padding-bottom:10px; margin-bottom: 30px;
							border-bottom: 1px; border-bottom-style: solid; border-bottom-color: black;">
					<h5>회원 정보</h5>
				</div>
				
				<div style="margin-bottom:100px">
					<table style="width:100%">
						<tbody>
						
							<tr style="width:1050px; height:60px;">
								<th style="width:200px;">이메일</th>
								<td>
									<div style="justify-content: space-between; width:489px; height:46px; display: flex; align-items: center">
										<input class="order-input" type="text" style="width:229px">
										@
										<select class="order-input" style="width:229px">
											<option value="" selected="selected">-이메일 선택-</option>
											<option value="naver.com">naver.com</option>
											<option value="daum.net">daum.net</option>
											<option value="nate.com">nate.com</option>
											<option value="hotmail.com">hotmail.com</option>
											<option value="yahoo.com">yahoo.com</option>
											<option value="empas.com">empas.com</option>
											<option value="korea.com">korea.com</option>
											<option value="dreamwiz.com">dreamwiz.com</option>
											<option value="gmail.com">gmail.com</option>
											<option value="etc">직접입력</option>
										</select>
									</div>
								</td>
							</tr>
						
							<tr style="width:1050px; height:60px;">
								<th style="width:200px; padding-bottom:10px">비밀번호</th>
								<td>
									<input class="order-input" type="text" style="width:489px; margin-top:5px;">
									<div style="font-size: 11px; color:#999999; margin-top:3px;">
										(8자 이상으로 입력해주시기 바랍니다.)
									</div>
								</td>
							</tr>

							<tr style="width:1050px; height:60px;">
								<th style="width:200px;">비밀번호 확인</th>
								<td>
									<input class="order-input" type="text" style="width:489px">
								</td>
							</tr>
						
							<tr style="width:1050px; height:60px;">
								<th style="width:200px;">이름</th>
								<td>
									<input class="order-input" type="text" style="width:489px" disabled>
								</td>
							</tr>
							
							<tr style="width:1050px; height:170px;">
								<th style="width:200px; padding-bottom:110px">주소</th>
								<td>
									<div style="width:489px; margin-bottom:12px; display: flex">
										<input class="order-input" style="width:370px" type="text" id="sample2_postcode" placeholder="우편번호" disabled>
										<input class="order-input" style="width:107px; border-radius: 5px; background-color: #00388c; color:white; margin-left:12px; 
										padding-left:10px; padding-right:10px; border:none;" type="button" onclick="sample2_execDaumPostcode()" value="주소검색"><br>
									</div>
									<input class="order-input" style="width:489px; margin-bottom:12px" type="text" id="sample2_address" placeholder="기본주소" disabled><br>
									<input class="order-input" style="width:489px;" type="text" id="sample2_detailAddress" placeholder="나머지 주소(선택 입력 가능)">
									<!-- <input type="text" id="sample2_extraAddress" placeholder="참고항목"> -->
									<div id="layer" style="display:none;position:fixed;overflow:hidden;z-index:1;-webkit-overflow-scrolling:touch;">
										<img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnCloseLayer" style="cursor:pointer;position:absolute;right:-3px;top:-3px;z-index:1" onclick="closeDaumPostcode()" alt="닫기 버튼">
									</div>
								</td>
							</tr>
							
							<tr style="width:1050px; height:60px;">
								<th style="width:200px;">휴대전화</th>
								<td>
									<input class="order-input" type="text" style="width:489px" placeholder="휴대폰 번호 ('-' 없이 입력)">
								</td>
							</tr>
							
						</tbody>
					</table>
				</div>
				
				<div style="margin-left:300px">
					<input class="order-input" style="width:107px; border-radius: 5px; background-color: #00388c; color:white; margin-left:12px; 
					padding-left:10px; padding-right:10px; border:none;" type="button" onclick="" value="수정하기">
				</div>
				

	</div>
</main>
<script>

    // 우편번호 찾기 화면을 넣을 element
    var element_layer = document.getElementById('layer');

    function closeDaumPostcode() {
        // iframe을 넣은 element를 안보이게 한다.
        element_layer.style.display = 'none';
    }

    function sample2_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    /* if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
                    document.getElementById("sample2_extraAddress").value = extraAddr; */
                
                } /* else {
                    document.getElementById("sample2_extraAddress").value = '';
                } */

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample2_postcode').value = data.zonecode;
                document.getElementById("sample2_address").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                /* document.getElementById("sample2_detailAddress").focus(); */

                // iframe을 넣은 element를 안보이게 한다.
                // (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
                element_layer.style.display = 'none';
            },
            width : '100%',
            height : '100%',
            maxSuggestItems : 5
        }).embed(element_layer);

        // iframe을 넣은 element를 보이게 한다.
        element_layer.style.display = 'block';

        // iframe을 넣은 element의 위치를 화면의 가운데로 이동시킨다.
        initLayerPosition();
    }

    // 브라우저의 크기 변경에 따라 레이어를 가운데로 이동시키고자 하실때에는
    // resize이벤트나, orientationchange이벤트를 이용하여 값이 변경될때마다 아래 함수를 실행 시켜 주시거나,
    // 직접 element_layer의 top,left값을 수정해 주시면 됩니다.
    function initLayerPosition(){
        var width = 400; //우편번호서비스가 들어갈 element의 width
        var height = 500; //우편번호서비스가 들어갈 element의 height
        var borderWidth = 2; //샘플에서 사용하는 border의 두께

        // 위에서 선언한 값들을 실제 element에 넣는다.
        element_layer.style.width = width + 'px';
        element_layer.style.height = height + 'px';
        element_layer.style.border = borderWidth + 'px solid';
        // 실행되는 순간의 화면 너비와 높이 값을 가져와서 중앙에 뜰 수 있도록 위치를 계산한다.
        element_layer.style.left = (((window.innerWidth || document.documentElement.clientWidth) - width)/2 - borderWidth) + 'px';
        element_layer.style.top = (((window.innerHeight || document.documentElement.clientHeight) - height)/2 - borderWidth) + 'px';
    }
</script>


<%@ include file="../inc/footer.jsp" %>