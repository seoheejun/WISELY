<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<c:if test="${requestScope.msg != null}">
<script>
	alert("${requestScope.msg}");
</script>
</c:if>
<main>
	<div class="container mt-5 border shadow p-5" style="width:600px; height:500px;">
		<h3 class="text-center">로그인</h3>
		<c:if test = "${result == 0}">
			<div class="text-danger my-3 text-center"><b>아이디와 비밀번호를 확인해주세요.</b></div>
		</c:if>
		<form action="<c:url value='memberLogin'/>" method="post">
			<div class="mt-5 mb-3">
				<input type="text" class="form-control mt-2" id="memEmail" placeholder="이메일을 입력해주세요" name="memEmail"/>
			</div>
			<div class="mb-2">
				<input type="password" class="form-control mt-2" id="memPw" placeholder="비밀번호를 입력해주세요" name="memPw"/>
			</div>
			<div class="d-grid gap-2 text-center">
				<input type="submit" class="btn btn-lg btn-primary mt-5" value="로그인" 
					style="background:#00388C; border-color:#00388C;"/>
				<input type="button" class="btn btn-lg btn-primary mt-3" value="회원가입" 
					style="color:#00388C; border-color:#00388C; background-color:white;" 
					onclick="javascript:window.location='<c:url value='user_join'/>'"/>
			</div>
		</form>
		<div class="container text-center mt-4">
			<a href="#" style="color:#666666; margin-right:10px;">이메일 찾기</a>
			<a href="#" style="color:#666666;">비밀번호 찾기</a>
		</div>
	</div>
</main>
<%@ include file="../inc/footer.jsp" %>