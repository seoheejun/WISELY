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
  width:100px; 
  height:50px; 
  border-radius: 5px;
  background-color: white;
}

.prod{
  width:70px; 
  text-align:left;
}

th{
  width:120px;
  font-weight: normal;
  color: #999999;
}

tr{
  width:790px; 
  height:60px;
}

</style>
<!-- <link href="resources/css/my_page.css" rel="stylesheet"/>  -->
<main class="container d-flex mt-5">
	<%@ include file="../inc/myPage.jsp"%>
	<section class="container ms-4 ps-5" style="width:1000px; margin:auto; margin-top:0;">
				<h3>주문내역 상세</h3>
		<article>
			<div style="width:790px; margin:0">
			<!-------- 주문 내역이 없는 경우 -------->
				<%-- <c:if test="${cList == null || cList.size() == 0}">
					<p class="web-message">주문내역이 없습니다.</p>
				</c:if> --%>
				
			<!-------- 주문 내역 -------->
				<div style="width:790px; justify-content: space-between; display: flex; margin-top:40px; border-bottom: 1px; 
							border-bottom-style: solid; border-bottom-color: black; padding-bottom: 20px">
					<div>주문 상품</div>
				</div>
                </div>
					<div class="row" style="width:790px; margin:0; display: flex; align-items:center; height:140px;
										border-bottom: 1px; border-bottom-style: solid; border-bottom-color: #dddddd;">
							<c:forEach var="dDto" items="${oDto.details}">
	                            <div style="width:790px; display: flex; justify-content: space-between; padding: 0; 
	                            			margin-top:10px; margin-bottom: 10px; text-align: center">
	                                
			                                <img src="prod_img/${dDto.productImagePath}" style="width:100px; margin-right:12px"/>
		                                    <span>${dDto.productName}</span>
		                                    <span><fmt:formatNumber type="Number" value="${dDto.productPrice}"/>원</span>
		                         </div>
	                         </c:forEach>
                          </div>
                   
                <!------------------ 주문정보 ------------>
                <div style="width:790px; justify-content: space-between; display: flex; margin-top:100px; border-bottom: 1px; 
							border-bottom-style: solid; border-bottom-color: black; padding-bottom: 20px">
					<div>주문/결제정보</div>
				</div>
				<table>
					<tbody>
						<tr>
							<th>주문번호</th>
							<td>
								20230126-000001
							</td>
						</tr>
						<tr>
							<th>주문일자</th>
							<td>
								${oDto.dateTime}
							</td>
						</tr>
						<tr>
							<th>주문자</th>
							<td>
								${oDto.receiverName}
							</td>
						</tr>
						<tr>
							<th>결제수단</th>
							<td>
								${oDto.paymentType}
							</td>
						</tr>
						<tr>
							<th>총 결제금액</th>
							<td>
								<fmt:formatNumber type="Number" value="${oDto.productTotalPrice + deliveryCharge}"/>
							</td>
						</tr>
						<tr>
							<th>처리상태 </th>
							<td>
								주문완료
							</td>
						</tr>
					</tbody>
				</table>
				
				<!------------------ 결제정보 ------------>
                <div style="width:790px; justify-content: space-between; display: flex; margin-top:100px; border-bottom: 1px; 
							border-bottom-style: solid; border-bottom-color: black; padding-bottom: 20px">
					<div>배송지정보</div>
				</div>
				<table>
					<tbody>
						<tr>
							<th>받으시는 분</th>
							<td>
								${oDto.receiverName}
							</td>
						</tr>
						<tr>
							<th>우편번호</th>
							<td>
								${oDto.receiverPostcode}
							</td>
						</tr>
						<tr>
							<th>주소</th>
							<td>
								${oDto.receiverAddress}
							</td>
						</tr>
						<tr>
							<th>휴대전화 </th>
							<td>
								${oDto.receiverPhone}
							</td>
						</tr>
						<tr>
							<th>배송메시지 </th>
							<td>
								${oDto.receiverRequested}
							</td>
						</tr>
					</tbody>
				</table>
				
				</div>
		</article>
	</section>
</main>
<%@ include file="../inc/footer.jsp"%>