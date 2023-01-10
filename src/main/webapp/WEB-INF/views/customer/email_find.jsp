<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>

<main>
	<div class="container mt-5 border shadow p-5" style="width:600px; height:500px;">
		<h3 class="text-center">아이디 찾기</h3>
		<form action="<c:url value='/email_findOk.do'/>" method="post" id="">
			
			<div class="mt-5 mb-3  mt-2">
				<p><b>이름</b></p>
				<input type="text" class="form-control" id="name" placeholder="가입하신 이름을 입력해주세요" name="mem_name"/>
			</div>
			<div class="mb-2mt-2">
				<p><b>휴대폰 번호</b></p>			
				<input type="number" class="form-control"  id="tel" placeholder="000-0000-0000" name="mem_tel"/>
			</div>
				<%-- <c:if test="${result == 0 }">
					<div class="longin_warn">사용자 ID 또는 비밀번호를 잘못 입력 하셨습니다123</div>
				</c:if> --%>
			<div class="d-grid gap-2 text-center">
				<input type="submit" class="login_btn btn btn-lg btn-primary mt-5" value="확인" 
					style="background:#00388C; border-color:#00388C;"/>
			
			</div>
		
		</form>
		
	</div>

</main>
<%@ include file="../inc/footer.jsp" %>