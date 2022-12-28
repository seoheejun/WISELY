 <%@ page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<main>
<c:if test="${requestScope.msg != null}">
<script>
	alert("${requestScope.msg}");
</script>
</c:if>
	<div class="container mt-5 border shadow p-5" style="width:600px; min-height:700px;">
		<section>
			<h2 class="text-center mb-5">장바구니</h2>
			<c:if test="${requestScope.pDtos == null || requestScope.pDtos.size() == 0}">
				<div class="text-center mt-5">
					<img src="../views/img/cart_list/emptyBox.png" style="width:200px;"/>
					<div class="text-center mt-3 mb-5" style="font-size:22px; color:#838383;">담은 상품이 없습니다 :(</div>
				</div>
			</c:if>
			<c:if test="${requestScope.pDtos != null || requestScope.pDtos.size() != 0}">
				<table class="table">
					<tbody>
					<c:set var="cartTotPrice" value="0"/>
					<c:set var="cartTotPoint" value="0"/>
					<c:forEach var="pDto" items="${pDtos}">
						<tr>
							<td>
								<a href="prodView.do?pNum=${pDto.pNum}&pSpec=${pDto.pSpec}">
								<img src="${ctx}/uploadedFile/${pDto.pImage}" width="80px"/>
								</a>
							</td>
							<td>${pDto.pName}</td>
							<td>
								<form action="cartModify.do" method="post">
									<input type="text" size="3" name="pQty" value="${pDto.pQty}"/>개<br/>
									<input type="hidden" name="pNum" value="${pDto.pNum}"/>
									<input type="submit" class="btn btn-sm btn-secondary mt-3" value="수정"/>
								</form>
							</td>
							<td>
								<fmt:formatNumber type="Number" value="${pDto.price}"/>원<br/>
							</td>
							<td>
								<fmt:formatNumber type="Number" value="${pDto.totPrice}"/>원<br/>
							</td>
							<td>
								<a href="cartDelete.do?pNum=${pDto.pNum}" class="btn btn-sm btn-danger">삭제</a>
							</td>
						</tr>
						<c:set var="cartTotPrice" value="${cartTotPrice + pDto.totPrice}"/>
						<c:set var="cartTotPoint" value="${cartTotPoint + pDto.totPoint}"/>
					</c:forEach>
					</tbody>
				</table>
				<!-- 장바구니 총액 표시 -->
				<div class="d-flex justify-content-between">
					<span style="font-size:18px;"><b>결제 예정 금액</b></span>
					<b style="font-size:18px;"><fmt:formatNumber type="Number" value="${cartTotPrice}"/>원</b>
				</div>
				<div class="text-center mt-5">
					<a href="${ctx}/prod_all.do" class="btn btn-lg btn-outline-dark me-2" style="width:200px; height:50px;">더 담으러 가기</a>
					<a href="checkOut.do?cartTotPrice=${cartTotPrice}&cartTotPoint=${cartTotPoint}" class="btn btn-lg btn-dark" style="width:200px; height:50px;">구매하기</a>
				</div>
			</c:if>	
		</section>
	</div>
</main>
<%@ include file="../inc/footer.jsp" %>