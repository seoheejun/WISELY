<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>

<main>
	<div class="container mt-5 border shadow p-5" style="width:600px; height:500px;">
		<h3 class="text-center">아이디 찾기 확인 페이지</h3>
		<form method="post" class="form-signin" action="find_id" name="findform">
		<div class="form-label-group">
			<input type="text" id="name" name="name" class="form-control"/>
			<label for="name">name</label>
		</div>
		
		<div class="form-label-group">
			<input type="text" id="phone" name="phone" class="form-control"/>
			<label for="phone">phone</label>
		</div>

		<div class="form-label-group">
			<input class="btn btn-lg btn-secondary btn-block text-uppercase"
				type="submit" value="check">
		</div>

		<!-- 이름과 전화번호가 일치하지 않을 때-->
		<c:if test="${check == null}">
			<label>일치하는 정보가 존재하지 않습니다.</label>
		</c:if>

		<!-- 이름과 비밀번호가 일치하지 않을 때 -->
		<c:if test="${check == 0 }">
		<label>찾으시는 아이디는' ${email}' 입니다.</label>
		<div class="form-label-group">
				<input class="btn btn-lg btn-secondary btn-block text-uppercase"
					type="button" value="OK" onclick="closethewindow()">
			</div>
		</c:if>

	</form>
	</div>

</main>
<%@ include file="../inc/footer.jsp" %>