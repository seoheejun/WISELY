<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<%-- <%
	String pNum = request.getParameter("pNum");
	String pSpec = request.getParameter("pSpec");
	
	if(pNum == null || pNum.trim().equals("")){
		response.sendRedirect("user_main.jsp");
		return;
	}
	
	ProductDAO pDao = ProductDAO.getInstance();
	ProductDTO pDto = pDao.getProduct(pNum);
		
	if(pDto == null){
		out.println(pNum + "에 해당하는 상품이 없습니다!!");
	}
	
	DecimalFormat df = new DecimalFormat("###,###,###");
%> --%>
<main>	
	<section class="container mb-5">
		<ul class="d-flex p-0 justify-content-center mt-5" style="list-style:none;">
			<!-- 상품 이미지 -->
			<%-- <li class="me-5">
				<img src="${ctx}/uploadedFile/<%=pDto.getpImage()%>" width="400px"/>
			</li> --%>
			<!-- 상품 상세내용 -->
			<li>
				<form name="prodForm" method="post" style="width:400px; height:400px;">
					<%-- <input type="hidden" name="pSpec" value="<%=pSpec%>"/>
					<div class="mt-5" style="color:#58c3cc"><b><%=pDto.getpCompany()%></b></div><br/>
					<h2 class="mt-1" style="letter-spacing:0.03em"><b><%=pDto.getpName()%></b></h2><br/>
					<div style="color:#838383"><%=pDto.getpContent() %></div><br/>
					<div class="mt-2">
						<h4><%=df.format(pDto.getPrice())%>원</h4><br/>
					</div> --%>
					<div class="d-flex mt-3">
						<!-- 로그인 사용자만 장바구니 담기 허용 -->
						<%-- <c:if test="${sessionScope.isLogin !=null}">
							<a href="javascript:goCart(<%=pNum%>)" class="btn btn-lg btn-outline-success">장바구니 담기</a>
						</c:if>	 --%>
						<!-- 로그인을 안했을 경우 -->					
						<c:if test="${sessionScope.isLogin ==null}">
							<a href="javascript:showMsg()" class="btn btn-lg btn-outline-success">장바구니 담기</a>
						</c:if>
						<a href="javascript:history.back()" class="btn btn-lg btn-outline-primary ms-3">계속 쇼핑하기</a>
					</div>
				</form>
			</li>
		</ul>
		<hr>
	</section>
	<section class="container">
		<h4 class="d-flex justify-content-start ms-4 mt-5">[배송 안내]</h4>
		<ul class="justify-content-start mt-4 ms-5">
			<li class="mt-2">배송 방법: HY 프레딧 배송, 택배 배송</li>
			<li class="mt-2">배송 지역: 전국</li>
			<li class="mt-2">배송 비용: 2,500원 (30,000원 이상 구매 시 무료배송)</li>
			<li class="mt-2">제주 및 도서산간 추가 배송비: 3,000원</li>
			<li class="mt-2">배송 예정일: 평일 기준 출고 후 1~2일 소요 (관할 지역 택배사 사정에 따라 추가 소요될 수 있음)</li>
			<li class="mt-2">천재지변, 물량 급증, 수급 변동 등 예외적인 사유 발생 시 배송이 지연될 수 있는 점 양해 부탁드립니다.</li>
			<li class="mt-2">군부대 일부와 해외의 경우 배송이 어려울 수 있습니다.</li>
			<li class="mt-2">평일 낮 12시 이전 결제 시: 당일 출고 (주말 및 공휴일 제외)</li>
			<li class="mt-2">평일 낮 12시 이후 결제 시: 다음 날 출고 (주말 및 공휴일 제외)</li>
		</ul>
		<h4 class="d-flex justify-content-start ms-4 mt-5">[교환, 반품 안내]</h4>
		<ul class="justify-content-start mt-4 ms-5">
			<li class="mt-2">단순 변심에 의한 교환/반품은 제품 수령 후 7일까지 가능하며 왕복 배송비는 고객 부담입니다.</li>
			<li class="mt-2">상세주소 미입력, 주소지 오기재 등으로 인해 상품이 반송될 경우 왕복 배송비는 고객 부담입니다.</li>
			<li class="mt-2">고객 사유로 인한 교환/반품/반송 시 왕복 배송비 5,000원이 발생하며 제주 및 도서산간지역의 경우 실제 왕복 배송비가 부과됩니다.</li>
			<li class="mt-2">상품 불량 및 오배송 등으로 인한 판매자 귀책사유가 있을 경우 교환/반품 배송비는 와이즐리 컴퍼니가 부담합니다.</li>
		</ul>
		<h4 class="d-flex justify-content-start ms-4 mt-5">[교환, 반품 제한사항]</h4>
		<ul class="justify-content-start mt-4 ms-5">
			<li class="mt-2">고객의 사용, 시간경과, 제품 일 소비에 의해 상품의 가치가 현저히 감소한 경우</li>
			<li class="mt-2">구성품의 분실, 누락 및 파손 혹은 포장이 훼손되어 상품의 가치가 현저히 감소한 경우</li>
		</ul>
		<hr class="mt-5 mb-5">
	</section>
</main>
<%@ include file="../inc/footer.jsp" %>