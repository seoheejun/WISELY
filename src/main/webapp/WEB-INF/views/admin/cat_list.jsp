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
<div class="container w-75 border shadow-sm p-5 mt-5">
	<div class="container d-flex justify-content-between mb-3">
		<h3>카테고리관리</h3>
		<a href="${ctx}/admin/cat_input.jsp" class="btn btn-outline-secondary">카테고리 추가</a>
	</div>
	<table class="table">
		<thead>
			<tr>
				<th>번호</th>
				<th>코드</th>
				<th>카테고리명</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody>
		<%-- <%
			CategoryDAO dao = CategoryDAO.getInstance();
			ArrayList<CategoryDTO> dtos = dao.categoryList();
			
			for(int i=0; i<dtos.size(); i++){
				CategoryDTO dto = dtos.get(i);
		%>
			<tr>
				<td><%= dto.getCatNum() %></td>
				<td><%= dto.getCatCode() %></td>
				<td><%= dto.getCatName() %></td>
				<td>
					<a href="cat_delete.do?catNum=<%=dto.getCatNum()%>" class="btn btn-sm btn-outline-danger">삭제</a>
				</td>
			</tr>
		<%  } // for %> --%>
		</tbody>
	</table>
</div>
</main>
<%@ include file="../inc/footer.jsp" %>