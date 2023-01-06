<%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<c:if test="${requestScope.msg != null}">
<script>
	alert("${requestScope.msg}")
</script>
</c:if>
<main>
<div class="container w-50 border shadow-sm p-5 mt-5">
	<div class="container d-flex justify-content-between mb-3">
		<h3>카테고리관리</h3>
		<a href="<c:url value='cat_input'/>" class="btn btn-outline-secondary">카테고리 추가</a>
	</div>
	<table class="table">
		<thead>
			<tr>
				<th>카테고리명</th>
				<th>수정/삭제</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="dto" items="${list}">
			<tr>
				<td>${dto.catName}</td>
				<td>
					<input type="button" value="수정" class="btn btn-warning btn-sm"
					onclick="infoCategory(${dto.catNo})"/>
					<input type="button" value="삭제" class="btn btn-danger btn-sm"
					onclick="delCategory(${dto.catNo})"/>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>
<script type="text/javascript">
	function infoCategory(catNo){
		location.href="<c:url value='cat_info?catNo='/>"+catNo;
	}
	
	function delCategory(catNo){
		location.href="<c:url value='cat_delete?catNo='/>"+catNo;
	}
</script>
</main>
<jsp:include page="../inc/footer.jsp"/>