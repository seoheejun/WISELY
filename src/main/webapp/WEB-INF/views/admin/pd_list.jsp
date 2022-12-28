 <%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<main>
<c:if test="${requestScope.msg != null}">
	<script>
		alert("${msg}");
	</script>
</c:if>
	<div class="container w-75 border shadow-sm p-5 mt-5">
		<div class="container d-flex justify-content-between mb-3">
			<h3>상품관리</h3>
			<a href="${ctx}/admin/pd_input.jsp" class="btn btn-outline-secondary">상품 추가</a>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>번호</th>					
					<th>이미지</th>
					<th>상품명</th>
					<th>가격</th>
					<th>제조사</th>
					<th>수량</th>
					<th>수정 / 삭제</th>
				</tr>
			</thead>
			<tbody>
			<%-- <%
				ProductDAO dao = ProductDAO.getInstance();
				ArrayList<ProductDTO> dtos = dao.productList();
				if(dtos == null || dtos.size() == 0 ){
					out.println("<tr><td colspan='8'>상품이 존재하지 않습니다!!</td></tr></table>");
					return;
				}
				
				for(ProductDTO dto : dtos){
			%>
				<tr>
					<td><%=dto.getpNum()%></td>
					<td>
						<% String imgPath = request.getContextPath()+"/uploadedFile/"+dto.getpImage();%>
						<img src="<%=imgPath%>" style="width:60px"/>
					</td>
					<td><%=dto.getpName()%></td>
					<td><fmt:formatNumber value="<%=dto.getPrice()%>"/></td>
					<td><%=dto.getpCompany()%></td>
					<td><%=dto.getpQty()%></td>
					<td>
						<a href="${ctx}/admin/pd_update.jsp?pNum=<%=dto.getpNum()%>" class="btn btn-sm btn-outline-info">수정</a>
						<a href="javascript:pdDel('<%=dto.getpNum()%>', '<%=dto.getpImage()%>')" class="btn btn-sm btn-outline-danger">삭제</a>
					</td>
				</tr>
			<% } %> --%>
			</tbody>
		</table>
	</div>
</main>
<script>
	function pdDel(pNum, pImage){
		var isDel = window.confirm("삭제 하시겠습니까?");
		if(isDel) location.href="${ctx}/prod_delete.do?pNum="+pNum+"&pImage="+pImage;
	}
</script>
<%@ include file="../inc/footer.jsp" %>