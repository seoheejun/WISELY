<%@ page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp" %>
<style>

</style>
<main>

    <div>
        <c:if test="${oList.size() != 0}">
            <c:forEach var="detail" items="${oList}">
                <div>
                    ${detail.productName} ${detail.producCount}개 ${detail.productPrice}우ㅕㄴ
                </div>
            </c:forEach>
        </c:if>
        <a href="/order">목록으로</a>
    </div>

</main>
<script>

</script>
<%@ include file="../inc/footer.jsp" %>