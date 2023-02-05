<%@ page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<style>

</style>
<main>

    <div>
        <c:if test="${oList.size() != 0}">
            <c:forEach var="order" items="${oList}">
                <div>
                    주문번호 : ${order.orderNo}
                    총 결제금액 : ${order.paymentPrice}
                    <a href="order/${order.orderNo}">자세히 보기</a>
                </div>
            </c:forEach>
        </c:if>
    </div>

</main>
<script>

</script>
<%@ include file="../inc/footer.jsp" %>