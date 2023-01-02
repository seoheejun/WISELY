<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<main>
<div class="container mt-5 w-50 border shadow p-5">
	<h2>관리자 로그인</h2>
	<form action="<c:url value='/ad_loginOK'/>" method="post">
		<div class="mt-3 mb-3">
			<label for="adminId">아이디</label>
			<input type="text" class="form-control" id="adminId" placeholder="아이디" name="adminId"/>
		</div>
		<div class="mb-3">
			<label for="adminPw">비밀번호</label>
			<input type="password" class="form-control" id="adminPw" placeholder="비밀번호" name="adminPw"/>
		</div>
		<div class="text-center">
			<input type="submit" class="btn btn-sm btn-primary" value="로그인"/>
		</div>
	</form>
</div>
</main>
<%@ include file="../inc/footer.jsp" %>