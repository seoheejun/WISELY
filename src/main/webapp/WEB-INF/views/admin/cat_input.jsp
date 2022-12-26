<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<main>
<div class="container w-50 border shadow-sm p-5 mt-5">
	<h3>카테고리 등록</h3>
	<form action="${ctx}/cat_regOk.do" method="post" name="cat_inputFrm">
		<div class="mt-3">
			<label for="code">카테고리 코드</label>
			<input type="text" class="form-control" id="code" placeholder="카테고리 코드를 입력하세요" name="code"/>
		</div>
		<div class="mt-3">
			<label for="cname">카테고리명</label>
			<input type="text" class="form-control" id="cname" placeholder="카테고리명을 입력하세요" name="cname"/>
		</div>
		<div class="text-center mt-3">
			<input type="button" class="btn btn-primary btn-sm" value="등록" onclick="inputCheck()"/>
			<input type="reset" value="취소" class="btn btn-secondary btn-sm"/>
		</div>
	</form>
</div>
</main>
<script>
	function inputCheck(){
		if(!cat_inputFrm.code.value) { // code의 값이 null이면 참
			alert("카테고리 코드를 입력하세요!!!")
			cat_inputFrm.code.focus();
			return;
		}
		
		if(!cat_inputFrm.cname.value) { // cname의 값이 null이면 참
			alert("카테고리명을 입력하세요!!!")
			cat_inputFrm.cname.focus();
			return;
		}
		
		document.cat_inputFrm.submit();
	}
</script>
<%@ include file="../inc/footer.jsp" %>