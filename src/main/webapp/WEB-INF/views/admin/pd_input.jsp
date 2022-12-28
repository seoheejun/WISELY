 <%@ page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ include file="../inc/header.jsp" %>
<%-- <%
	CategoryDAO dao = CategoryDAO.getInstance();
	ArrayList<CategoryDTO> dtos = dao.categoryList();
	request.setAttribute("list", dtos);
%> --%>
<main>
	<div class="container w-50 border shadow-sm p-5 mt-5">
		<h3>상품 등록</h3>
		<form action="${ctx}/prod_regOk.do" method="post" enctype="multipart/form-data">
			<table class="table table-borderless">
				<tbody>
					<tr>
						<td>카테고리</td>
						<td>
							<select class="form-select form-select-sm" name="pCategory_fk">
								<c:if test="${list == null || list.size() == 0}">
									<option value="">카테고리 없음</option>						
								</c:if>
								<c:if test="${list != null || list.size() != 0}">
									<c:forEach var="dto" items="${list}">
										<option value="${dto.catCode}">${dto.catName}[${dto.catCode}]</option>
									</c:forEach>
								</c:if>		
							</select>
						</td>
					</tr>
					<tr>
						<td>상품명</td>
						<td><input type="text" class="form-control form-control-sm" name="pName"/></td>
					</tr>
					<tr>
						<td>제조회사</td>
						<td><input type="text" class="form-control form-control-sm" name="pCompany"/></td>
					</tr>
					<tr>
						<td>상품이미지</td>
						<td><input type="file" class="form-control form-control-sm" name="pImage"/></td>
					</tr>
					<tr>
						<td>상품수량</td>
						<td><input type="text" class="form-control form-control-sm" name="pQty"/></td>
					</tr>
					<tr>
						<td>상품가격</td>
						<td><input type="text" class="form-control form-control-sm" name="price"/></td>
					</tr>
					<tr>
						<td>상품사양</td>
						<td>
							<select class="form-select form-select-sm" name="pSpec">
								<option value="none" selected>일반</option>
								<option value="hit">인기</option>
								<option value="new">최신</option>
								<option value="recommend">추천</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>상품소개</td>
						<td>
							<textarea class="form-control" name="pContent" rows="3"></textarea>
						</td>
					</tr>
					<tr>
						<td colspan="2" class="text-center">
							<input type="submit" class="btn btn-sm btn-primary" value="상품등록"/>	
							<input type="reset" class="btn btn-sm btn-secondary" value="취소"/>	
						</td>
					</tr>
				</tbody>			
			</table>	
		</form>
	</div> 
</main>
<%@ include file="../inc/footer.jsp" %>