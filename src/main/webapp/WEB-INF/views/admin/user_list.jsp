<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<main>
<div class="container w-50 border shadow-sm p-5 mt-5">
	<h3>회원관리</h3>
	<table class="table">
		<thead>
			<tr>
				<th>이름</th>
				<th>이메일</th>
				<th>전화번호</th>
				<th>수정/삭제</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="dto" items="${list}">
				<tr>
					<td>${dto.memName}</td>
					<td>${dto.memEmail}</td>
					<td>${dto.memTel}</td>
					<td>
						<input type="button" value="수정" class="btn btn-warning btn-sm"
						onclick="infoMember(${dto.memNo})"/>
						<input type="button" value="삭제" class="btn btn-danger btn-sm"
						onclick="delMember(${dto.memNo})"/>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<script type="text/javascript">
	function infoMember(memNo){
		location.href="user_info?memNo=" + memNo;
	}
	function delMember(memNo){
		location.href="user_delete?memNo=" + memNo;
	}
</script>
</main>
<%@ include file="../inc/footer.jsp" %>