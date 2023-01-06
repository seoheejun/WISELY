<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../inc/header.jsp" %>

<main>
<div class="container w-75 border shadow-sm p-5 mt-5">
	<h4>회원정보</h4>
	<%-- <form action='${ctx}/user_update' method='post'> --%>
	<form action="<c:url value='user_update'/>" method='post'>
	<input type='hidden' name='memNo' value='${dto.memNo}'>
		<table class="table">
			<tbody>
				<tr>                                        
					<td colspan='2'><b>${dto.memName}님 회원정보</b></td>
				</tr>                                     
				<tr>                                      
					<td>이름</td>                         
					<td>${dto.memName}</td>                    
				</tr>                                     
				<tr>                                      
					<td>이메일</td>                       
					<td><input type='text' name='memEmail' value='${dto.memEmail}'></td>
				</tr>    
				<tr>                                      
					<td>전화번호</td>                       
					<td><input type='text' name='memPw' value='${dto.memPw}'></td>            
				</tr>    
				
				<tr>                                      
					<td colspan='2'>                      
						<input type='submit' value='수정하기' class='btn btn-primary'>         
						<input type='reset' value='취소' class='btn btn-warning me-5'>              
						<a href="<c:url value='user_list'/>" type='button' class='btn btn-info ms-5'>회원관리</a>
						<!-- <a href='/shopping/user_list' class='btn btn-info'>회원관리</a> -->
					</td>    
				</tr> 
			</tbody>
		</table>
	</form>
</div>
</main>
<%@ include file="../inc/footer.jsp" %>