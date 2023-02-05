<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<main style="width:1000px; margin:auto;">
	<section class="mt-3">
		<div class="row row-cols-1 row-cols-md-3 g-4">
			<c:forEach var="dto" items="${list}">
			<div class="col">
		    	<div class="card h-100 text-center border-light">
		    		<a href="<c:url value='pd_view?pNo=${dto.pNo}'/>">
			      		<img src="prod_img/${dto.pImage_1}" class="card-img-top">		    		
		    		</a>
		      		<div class="card-body">
			        	<h5 class="card-title" style="letter-spacing: -0.05em; white-space:pre-line;">${dto.pName}</h5>
			        	<p class="card-text"><b><fmt:formatNumber value="${dto.price}"/>원</b></p>
		      		</div>
   					<c:if test="${sessionScope.memName !=null}">
							<button type="button" onclick="goCart(this)" class="btn btn-outline-success">장바구니 담기</button>
							<input type="hidden" class="product-no" name="pNo" value="${dto.pNo}">
						</c:if>
						<!-- 로그인을 안했을 경우 -->					
						<c:if test="${sessionScope.memName ==null}">
							<a href="javascript:showMsg()" class="btn btn-outline-success">장바구니 담기</a> 
						</c:if>
		    	</div>
		  	</div>
		  	</c:forEach>
		</div>
	</section>
</main>
<script>
function goCart(button) {
	 var $button = $(button);
   var $row = $button.parents('.card');

   $.ajax({
       url: 'cart/cartAdd',
       type : "post",
       data: {
           pNo: parseInt($row.children('.product-no').val()),
           prodCount: 1
       },
       success: function (data) {
           switch (data) {
			case 0:
				alert("장바구니 추가를 실패했습니다.");
				break;
			case 1:
				alert("장바구니에 상품을 담았습니다.");
				break;
			case 2:
				alert("장바구니에 동일한 상품이 있습니다.");
				break;
			}
       },
       error: function (){
           alert($('.product-count').val()+ ' : 장바구니 추가 실패!! : '+$('.product-no').val());
       }
   });
}
</script>
<%@ include file="../inc/footer.jsp" %>