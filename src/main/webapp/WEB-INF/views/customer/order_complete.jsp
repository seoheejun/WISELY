<%@ page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<style>

</style>
<main style="margin:auto;">
	<section class="container" style="width:400px; height:600px; border-color: black; margin-top:50px">
			<div class="shadow" style="width:400px; height:600px; border-radius: 10px; text-align: center;
								align-items: center; justify-content: center">
		    	<div style="width:400px; height:200px;padding-top:100px; margin-bottom:20px;">
			    	<i class="xi-check-circle-o" style="font-size: 50px; color:#00388c; margin-bottom:20px"></i>
			        <div style="border-bottom: 1px; border-bottom-style: solid; border-bottom-color:#dddddd;
			        			margin-top:20px; width:360px; height:30px; margin:auto; padding-bottom:30px">
			        고객님의 주문이 완료되었습니다.</div>
		        </div>
		        <div style="width:400px;">
			        <table style="width:360px; margin: auto; margin-bottom: 30px">
							<tbody>
								<tr style="height:25px;">
									<th style="text-align:left; font-weight: normal;">주문번호</th>
									<td style="text-align:right">
										<b>${oDto.uniqueNo}</b>
									</td>
								</tr>
								<tr style="height:25px;">
									<th style="text-align:left; font-weight: normal;">주문금액</th>
									<td style="text-align:right">
										<b><fmt:formatNumber type="Number" value="${oDto.productTotalPrice+3000}"/>원</b>
									</td>
								</tr>
							</tbody>
						</table>
				</div>
				<a href="/shopping/order">
					<button type="submit" style="width:360px; padding:15px; border-radius: 5px; background-color: #00388c; border:none;
							color:white; margin-top: 20px;">구매내역 확인하기</button>
				</a>
				
				<a href="/shopping">
					<button type="submit" style="width:360px; padding:15px; border-radius: 5px; background-color: white;
							color:#00388c; margin-top: 20px;border: 1px; border-style: solid; border-color:#00388c;">계속 쇼핑하기</button>
				</a>
	    	</div>
	</section>
</main>
<script>

</script>
<%@ include file="../inc/footer.jsp" %>