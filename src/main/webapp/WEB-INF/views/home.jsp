<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../views/inc/header.jsp" %>
<c:if test="${error != null}">
<script type="text/javascript">
	console.log("${error}");
	alert("${error}");
</script>
</c:if>
<main>
	
	<!-- carousel -->
	<div id="demo" class="carousel slide carousel-fade mb-5 carousel-dark" data-bs-ride="carousel">
		<div class="carousel-indicators">
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
		    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
		</div>

	  	<!-- The slideshow/carousel -->
	  	<div class="carousel-inner">
		    <div class="carousel-item active" data-bs-interval="3000">
		     	<a href="<c:url value='pd_cat?pCategory_fk=영양제'/>">
			     	<img src="img/home_banner/1.png" alt="..." class="d-block w-100">
		     	</a>
		    </div>
		    <div class="carousel-item">
		    	<a href="<c:url value='pd_cat?pCategory_fk=면도/제모용품'/>">
		    		<img src="img/home_banner/2.png" alt="..." class="d-block w-100">
		    	</a>
		    </div>
		    <div class="carousel-item">
		    	<a href="<c:url value='pd_cat?pCategory_fk=헤어케어'/>">
			    	<img src="img/home_banner/3.png" alt="..." class="d-block w-100">
		    	</a>
		    </div>
		    <div class="carousel-item">
		    	<a href="<c:url value='pd_cat?pCategory_fk=주방/청소용품'/>">
			    	<img src="img/home_banner/4.png" alt="..." class="d-block w-100">
		    	</a>
		    </div>
		    <div class="carousel-item">
		    	<a href="<c:url value='pd_cat?pCategory_fk=스킨케어'/>">
			    	<img src="img/home_banner/5.png" alt="..." class="d-block w-100">
		    	</a>
		    </div>
	  	</div>

	  	<!-- Left and right controls/icons -->
	  	<button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
	    	<span class="carousel-control-prev-icon" style="color:black; margin-left:20em; padding:30px;"></span>
	  	</button>
	  	<button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next" style="padding:20px;">
	    	<span class="carousel-control-next-icon" style="color:black; margin-right:20em; padding:30px;"></span>
	  	</button>
	</div>
	
	<section style="width:1000px; margin:auto;">
		<h2 style="margin-top:100px; margin-bottom:40px; letter-spacing:-0.05em;"><b>새해를 건강하게 시작하세요!</b></h2>
		<div class="row row-cols-1 row-cols-md-4 g-4">
			<c:forEach var="dto" items="${list1}">
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
						<button type="button" onclick="goCart(this)" class="btn btn-lg btn-outline-success">장바구니 담기</button>
						<input type="hidden" class="product-no" name="pNo" value="${dto.pNo}">
					</c:if>
					<!-- 로그인을 안했을 경우 -->					
						<c:if test="${sessionScope.memName ==null}">
						<a href="javascript:showMsg()" class="btn btn-lg btn-outline-success">장바구니 담기</a> 
					</c:if>
		    	</div>
		  	</div>
		  	</c:forEach>
		</div>
		<h2 style="margin-top:100px; margin-bottom:40px; letter-spacing:-0.05em;"><b>이런 가격은 처음이시죠?</b></h2>
		<div class="row row-cols-1 row-cols-md-4 g-4">
			<c:forEach var="dto" items="${list2}">
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
						<button type="button" onclick="goCart(this)" class="btn btn-lg btn-outline-success">장바구니 담기</button>
						<input type="hidden" class="product-no" name="pNo" value="${dto.pNo}">
					</c:if>
					<!-- 로그인을 안했을 경우 -->					
						<c:if test="${sessionScope.memName ==null}">
						<a href="javascript:showMsg()" class="btn btn-lg btn-outline-success">장바구니 담기</a> 
					</c:if>
		    	</div>
		  	</div>
		  	</c:forEach>
		</div>
		<a href="<c:url value='pd_cat?pCategory_fk=욕실용품'/>">
	    	<img src="img/home_banner/6.png" alt="..." class="d-block w-100" style="margin-top:100px;">
    	</a>
		<h2 style="margin-top:100px; margin-bottom:40px; letter-spacing:-0.05em;"><b>후기가 칭찬하는 새 제품</b></h2>
		<div class="row row-cols-1 row-cols-md-4 g-4">
			<c:forEach var="dto" items="${list3}">
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
						<button type="button" onclick="goCart(this)" class="btn btn-lg btn-outline-success">장바구니 담기</button>
						<input type="hidden" class="product-no" name="pNo" value="${dto.pNo}">
					</c:if>
					<!-- 로그인을 안했을 경우 -->					
						<c:if test="${sessionScope.memName ==null}">
						<a href="javascript:showMsg()" class="btn btn-lg btn-outline-success">장바구니 담기</a> 
					</c:if>
		    	</div>
		  	</div>
		  	</c:forEach>
		</div>
		<h2 style="margin-top:100px; margin-bottom:40px; letter-spacing:-0.05em;"><b>꾸준히 찾아주시는 장바구니 단골 제품</b></h2>
		<div class="row row-cols-1 row-cols-md-4 g-4">
			<c:forEach var="dto" items="${list4}">
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
						<button type="button" onclick="goCart(this)" class="btn btn-lg btn-outline-success">장바구니 담기</button>
						<input type="hidden" class="product-no" name="pNo" value="${dto.pNo}">
					</c:if>
					<!-- 로그인을 안했을 경우 -->					
						<c:if test="${sessionScope.memName ==null}">
						<a href="javascript:showMsg()" class="btn btn-lg btn-outline-success">장바구니 담기</a> 
					</c:if>
		    	</div>
		  	</div>
		  	</c:forEach>
		</div>
	</section>
	<div>
		<a href></a>
	</div>
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
<%-- <%@ include file="../views/inc/footer.jsp" %> --%>