<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<aside class="" style="width: 220px;">
	<h3 class="mb-5">마이페이지</h3>
	<ul class="submenu border  p-0 m-0" style="list-style: none;">
		<li class="li  border-bottom"><a class="button"  onclick="change_btn(event)"href="#">주문/배송조회
				<i class="fas fa-angle-right pt-1 " style="float: right;"></i>
		</a></li>
		<li class="li  border-bottom"><a class="button" onclick="change_btn(event)" href="#">최근
				본 상품<i class="fas fa-angle-right pt-1 " style="float: right;"></i>
		</a></li>
		<li class="li  border-bottom"><a class="button"onclick="change_btn(event)" href="#">문의
				내역<i class="fas fa-angle-right pt-1 " style="float: right;"></i>
		</a></li>
		<li class="li  border-bottom"><a class="button"onclick="change_btn(event)"
			href="#">고객센터<i
				class="fas fa-angle-right pt-1 " style="float: right;"></i></a></li>
		<li class="li  border-bottom"><a class="button" onclick="change_btn(event)" href="#">회원정보
				수정<i class="fas fa-angle-right pt-1 " style="float: right;"></i>
		</a></li>
		<li class="li  "><a class="button" onclick="change_btn(event)" href="#">로그아웃<i
				class="fas fa-angle-right pt-1 secondary" style="float: right;"></i></a></li>
	</ul> 
</aside>



<style>

</style>

<script>
function change_btn(e) {
	  var btns = document.querySelectorAll(".button");
	  btns.forEach(function (btn, i) {
	    if (e.currentTarget == btn) {
	      btn.classList.add("active");
	    } else {
	      btn.classList.remove("active");
	    }
	  });
	  console.log(e.currentTarget);
	}
</script>