 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<main>
<div class="container mt-5 w-50 border shadow p-5">
	<h2>관리자 로그인</h2>
	<form action="<c:url value='/admin/login'/>" method="post">
		<div class="mt-3 mb-3">
			<label for="id">아이디</label>
			<input type="text" class="form-control" id="id" placeholder="아이디" name="id"/>
		</div>
		<div class="mb-3">
			<label for="pw">비밀번호</label>
			<input type="password" class="form-control" id="pw" placeholder="비밀번호" name="pw"/>
		</div>
		<div class="text-center">
			<input type="submit" class="btn btn-sm btn-primary" value="로그인"/>
		</div>
	</form>
</div>
</main>
<%@ include file="../inc/footer.jsp" %>