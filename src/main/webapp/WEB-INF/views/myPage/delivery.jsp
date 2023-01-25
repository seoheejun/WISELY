<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp"%>
<style>
.web-message{
  padding: 120px 0;
  align-items: center;
  justify-content: center;
  text-align: center;
  color	: #dddddd;
}

.base-btn{
  border: 1px solid #dddddd;
  color: #333333;
  width:140px; 
  height:50px; 
  border-radius: 5px;
  background-color: white;
}

.prod{
  width:100px; 
  text-align:left;
}
</style>
<!-- <link href="resources/css/my_page.css" rel="stylesheet"/>  -->
<main class="container d-flex mt-5">
	<%@ include file="../inc/myPage.jsp"%>
	<section class="container ms-4 ps-5" style="width:1000px; margin:auto; margin-top:0;">
		<article>
			<div class="container d-flex">
				<h3 class="mb-3 me-4 mb-4">주문/배송 조회</h3>
			</div>
		</article>
		<article>
			<div style="width:790px; margin:0">
			<!-------- 주문 내역이 없는 경우 -------->
				<%-- <c:if test="${cList == null || cList.size() == 0}">
					<p class="web-message">주문내역이 없습니다.</p>
				</c:if> --%>
				
			<!-------- 주문 내역이 있는 경우 -------->
				<div style="width:790px; justify-content: space-between; display: flex;">
					<div>2023-01-25</div>
					<div>주문상세</div>
				</div>
				<div style="width:790px; padding-top: 20px; padding-bottom:10px; display:flex;
							border-bottom: 1px; border-bottom-style: solid; border-bottom-color: black;">
                      </div>
					<div class="row" data-cart-no="${cDto.cartNo}" style="width:790px; margin:0; display: flex; align-items:center; height:140px;
										border-bottom: 1px; border-bottom-style: solid; border-bottom-color: #dddddd;">
                            <input type="hidden" class="product-no" value="${cDto.pNo}" />

                            <!-- 상품 이미지 -->
                            <div style="width:790px; display: flex; justify-content: space-between; padding: 0; margin-top:10px; margin-bottom: 10px">
	                            <div>
	                                <%-- <img src="prod_img/${cDto.pImage_1}" style="width:100px; margin-right:12px"/> --%>
	                                상품 이미지
	                            </div>
	
	                            <!-- 구매상품 정보 -->
	                            <div style="width:250px;">
	                                <div style="display: flex; align-items: center;">
	                                	<span class="prod">상품명</span>
	                                    <span>바하 모공 세럼</span>
	                                </div>
	                                <div style="display: flex; align-items: center; margin-top:12px">
	                                	<span class="prod">주문번호</span>
	                                    <span>20230125-32345</span>
	                                </div>
	                                <div style="display: flex; align-items: center; margin-top:12px">
	                                	<span class="prod">결제금액</span>
	                                    <span>3,790원</span>
	                                </div>
	                             </div>
	                             
	                             <div style="display: flex; align-items: center">
		                             <div style="width:100px; text-align: center; margin-right:20px">
		                             	배송준비중
		                             </div>
		                             
		                             <div style="width:140px;">
		                             	<button class="base-btn" type="submit">취소신청</button>
		                             	<button class="base-btn" type="submit" style="margin-top: 15px;">배송조회</button>
		                             </div>
		                         </div>
	                         </div>
                          </div>
				</div>
		</article>
	</section>
</main>
<%@ include file="../inc/footer.jsp"%>