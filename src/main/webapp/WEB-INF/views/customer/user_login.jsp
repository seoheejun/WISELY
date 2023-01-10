<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<%-- <c:if test="${requestScope.msg != null}"> --%>
<!-- <script>
	alert("${requestScope.msg}");
</script> -->
<%-- </c:if> --%>
<main>
	<div class="container mt-5 border shadow p-5" style="width:600px; height:500px;">
		<h3 class="text-center">로그인</h3>
		<form action="<c:url value='/user_loginOk.do'/>" method="post" id="login_form">
			
			<div class="mt-5 mb-3">
				<input type="text" class="form-control mt-2" id="email" placeholder="이메일을 입력해주세요" name="mem_email"/>
			</div>
			<div class="mb-2">
				<input type="password" class="form-control mt-2" id="pw" placeholder="비밀번호를 입력해주세요" name="mem_pw"/>
			</div>
				<c:if test="${result == 0 }">
					<div class="longin_warn">사용자 ID 또는 비밀번호를 잘못 입력 하셨습니다123</div>
				</c:if>
			<div class="d-grid gap-2 text-center">
				<input type="submit" class="login_btn btn btn-lg btn-primary mt-5" value="로그인" 
					style="background:#00388C; border-color:#00388C;"/>
				<input type="button" class="btn btn-lg btn-primary mt-3" value="회원가입" 
					style="color:#00388C; border-color:#00388C; background-color:white;" 
					onclick="javascript:window.location='${ctx}/customer/user_join.jsp'"/>
			</div>
		
		</form>
		
		<div class="container text-center mt-4">
			<a href="<c:url value='/email_find.do'/>" style="color:#666666; margin-right:10px;">이메일 찾기</a>
			<a href="#" style="color:#666666;">비밀번호 찾기</a>
		</div>
	</div>

</main>
<%@ include file="../inc/footer.jsp" %>