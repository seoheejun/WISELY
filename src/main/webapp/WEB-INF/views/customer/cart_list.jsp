<%@ page import="java.text.DecimalFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="../inc/header.jsp" %>
<style>
    /* The checkboxs */
    .checkboxs {
        display: block;
        position: relative;
        padding-left: 35px;
        margin-bottom: 12px;
        cursor: pointer;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
    }

    /* Hide the browser's default radio button */
    .checkboxs input {
        position: absolute;
        opacity: 0;
        cursor: pointer;
    }

    /* Create a custom radio button */
    .checkmark {
        position: absolute;
        top: 0;
        left: 0;
        height: 20px;
        width: 20px;
        background-color: #eee;
        border-radius: 50%;
    }

    /* On mouse-over, add a grey background color
    .checkboxs:hover input ~ .checkmark {
      background-color: #ccc;
    }*/

    /* When the radio button is checked, add a blue background */
    .checkboxs input:checked ~ .checkmark {
        background-color: #00388c;
        border: none;

    }

    /* Create the indicator (the dot/circle - hidden when not checked) */
    .checkmark:after {
        content: "";
        position: absolute;
        display: none;
    }

    /* Show the indicator (dot/circle) when checked */
    .checkboxs input:checked ~ .checkmark:after {
        display: block;
    }

    /* Style the indicator (dot/circle) */
    .checkboxs .checkmark:after {
        left: 8px;
        top: 4px;
        width: 5px;
        height: 9px;
        border: solid white;
        border-width: 0 1px 1px 0;
        -webkit-transform: rotate(45deg);
        -ms-transform: rotate(45deg);
        transform: rotate(45deg);

    }

    .web-message {
        padding: 120px 0;
        align-items: center;
        justify-content: center;
        text-align: center;
        color: #dddddd;
    }
</style>
<main>
    <c:if test="${sessionScope.memName == null}">
        <script>
            alert("로그인 후 이용 가능합니다.")
            history.go(-1);
        </script>
    </c:if>
    <%-- <c:if test="${requestScope.msg != null}">
    <script>
        alert("${requestScope.msg}");
    </script>
    </c:if> --%>
    <h2 class="text-center mb-5 mt-5">장바구니</h2>
    <div class="container" style="width:980px; padding: 0">
        <div style="width:660px; padding-top: 20px; padding-bottom:10px; display:flex;
							border-bottom: 1px; border-bottom-style: solid; border-bottom-color: black;">
            <label class="checkboxs" style="margin-right:15px">전체선택
                <c:if test="${cList == null || cList.size() == 0}">
                    <input type="checkbox" name="allCheck" id="allCheck"
                           style="margin-bottom: 20px; margin-right:10px;">
                </c:if>
                <c:if test="${cList.size() != 0}">
                    <input type="checkbox" name="allCheck" id="allCheck" checked
                           style="margin-bottom: 20px; margin-right:10px;">
                </c:if>
                <span class="checkmark"></span></label>
                <span><a href="javascript:selectDelete()">| 선택삭제</a></span>
        </div>

        <div style="display: flex;">
            <!-- 장바구니 목록 -->
            <div style="width:660px; margin-right: 20px;">

                <!-- 장바구니가 비어있는 경우  -->
                <c:if test="${cList == null || cList.size() == 0}">
                    <p class="web-message">장바구니에 담긴 상품이 없습니다.</p>
                </c:if>

                <!-- 장바구니에 상품이 담겨있는 경우 -->
                <c:if test="${cList.size() != 0}">
                    <c:set var="cnt" value="1"/>
                    <c:forEach var="cDto" items="${cList}">

                        <div class="row" data-cart-no="${cDto.cartNo}" style="margin:0; width:660px; display: flex; align-items:center; height:130px;
										border-bottom: 1px; border-bottom-style: solid; border-bottom-color: #FBFAFA; margin-bottom: 10px; justify-content: space-between;">
                            <input type="hidden" class="product-no" value="${cDto.pNo}" />
                            <!-- 체크박스 -->
                            <div style="width:30px">
                                <label class="checkboxs" style="margin-right:12px">
                                        <%-- <input type="checkbox" class="chkbox" name="chk" checked value="${cDto.price*cDto.prodCount}"> --%>
                                        <%-- <input type="checkbox" class="chkbox" name="chk" checked value="${cDto.price*cDto.prodCount}" onchange="chk()" --%>
                                    <input type="checkbox" class="chkbox" name="chk" checked
                                           data-pno="${cDto.pNo}" data-pimage="${cDto.pImage_1}"
                                           data-pname="${cDto.pName}" data-prodcount="${cDto.prodCount}"
                                           data-cartno="${cDto.cartNo}">

                                    <input type="hidden" name="checkDel" value="${cDto.cartNo}">
                                    <span class="checkmark"></span></label>
                            </div>

                            <!-- 상품 이미지 -->
                                <img src="prod_img/${cDto.pImage_1}" style="width:100px; margin-left:12px;; margin-right:12px; padding:0"/>

                            <!-- 상품이름 -->
                            <div style="display: flex; justify-content: space-between; width:503px">
                                <div>
                                    <span style="width:100px; margin-right:12px">${cDto.pName}</span>
                                </div>

                                <!-- 수량 수정 -->
                                <div style="display: flex; width:250px; align-items: center;">
                                    <div style="position: relative; width: 90px; display: flex; border:1px; border-color: gray; border-style: solid; box-sizing: border-box; margin-right:20px">
                                        <button type='button' onclick='increase(this)' style='width: 30px; background: white; border: 1px solid #bbb; border-radius: 0px; padding: 5px 7px; border: none;'>+</button>
                                        <input type="text" class="product-count"
                                               value="${cDto.prodCount}"
                                               style='border:none; background: white; text-align:center; display:block; width: 30px; right: 12px; margin: 0; padding: 5px 7px;'/>
                                        <button type='button' onclick='decrease(this)' style='width: 30px; background: white; border: 1px solid #bbb; border-radius: 0px; padding: 5px 7px; border: none;'>-</button>
                                    </div>

                                    <div>
                                        <input type="hidden" class="product-price" value="${cDto.price}" />
                                        <span style="margin-right:20px; width:100px; display: block;"><span class="product-total-price"></span>원</span>
                                    </div>

                                    <!-- 장바구니 상품 삭제 -->
                                    <div>
                                        <button type="button" onclick="remove(this)" style="border:none; background-color:white;">
                                            <i class="xi-close-thin"> </i>
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <c:set var="checkTotPrice" value="${checkTotPrice + total_sum}"/>
                        <c:set var="cartTotPrice" value="${cartTotPrice + totalPrice}"/>
                        <div style="display: none">${cnt = cnt + 1}</div>
                    </c:forEach>

                    <!-- 장바구니 목록 하단 합계금액 -->
                    <div class="total-price" style="width:660px; height:65px; background: #FBFAFA">
                        <div style="margin-left:250px; padding-top:20px">
                            <span>상품가격 </span>
                            <span class="total_sum"></span>원
                            <span>+ 배송비 </span>
                            <span class="delivery"></span>원
                            <span> = </span>
                            <span class="total_sum2"></span>원
                        </div>
                    </div>
                </c:if>

            </div>

            <!-- 장바구니 금액 표시 -->
            <div>
                <div class="total-price-checked" style="width:300px; height:200px; background: #FBFAFA; padding: 20px; box-sizing: border-box;">
                    <div style="width:260px; margin-bottom: 15px; display: flex; justify-content: space-between;">
                        <div>합계</div>
                        <div>
                            <span class="total_sum"></span>원
                        </div>
                    </div>
                    <div style="width:260px; margin-bottom: 20px; display: flex; justify-content: space-between;
								border-bottom: 1px; border-bottom-style: solid; border-bottom-color: black; padding-bottom: 20px">
                            <div>배송비</div>
                            <div>+<span class="delivery"></span>원</div>
                    </div>
                    <div style="width:260px; margin-bottom: 15px; display: flex; justify-content: space-between;">
                        <div><b>결제예정금액</b></div>
                        <div><b>
                            <span class="total_sum2"></span>원
                        </b></div>


                    </div>
                </div>
                <!-- 구매하기 버튼 -->
                <c:if test="${cList.size() != 0}">
                    <form id="orderForm" method="post" action="order/preview" >
                        <input type="hidden" name="carts"/>
                        <button type="submit" onclick="order()" style="width:300px; padding:15px; border-radius: 5px; background-color: #00388c; border:none;
										color:white; margin-top: 20px;">구매하기</button>
                    </form>
                </c:if>
                <c:if test="${cList == null || cList.size() == 0}">
                    <button style="width:300px; padding:15px; border-radius: 5px; background-color: #dddedd; border:none;
									color:white; margin-top: 20px;">상품을 담아주세요
                    </button>
                </c:if>
            </div>
        </div>
        
        <div style="width:980px; height:180px; background-color: #FBFAFA; margin-top:50px">
            <div style="padding: 40px;">
                <h5><i class="fa-solid fa-circle-exclamation" style="color:#00388c"></i> 무료배송 대신, 더 낮은 가격</h5>
                <span>· 12월 12일부터 모든 제품 가격을 평균 17% 내립니다.</span><br>
                <span>· 3만원 이상 조건부 무료배송은 사라지지만 구매 시 누리는 혜택은 더 커졌습니다.</span><br>
                <span>· 와이즐리의 모든 제품, 더욱 놀라운 가격으로 만나보세요.</span>
            </div>
        </div>
    </div>
</main>

<script>

    function increase(button) {
        var $button = $(button);
        var $row = $button.parents('.row');

        $.ajax({
            url: 'cart/increase',
            type : "post",
            data: {
                pNo: parseInt($row.children('.product-no').val())
            },
            success: function (data) {
                var $count = $button.siblings('.product-count');
                $count.val(parseInt($count.val()) +1);

                changeProductPrice($row);
                changeTotalPriceAll();
            },
            error: function (){
                alert('상품 개수 증가 실패');
            }
        });
    }

    function decrease(button) {
        var $button = $(button);
        var $row = $button.parents('.row');

        $.ajax({
            url: 'cart/decrease',
            type : "post",
            data: {
                pNo: parseInt($row.children('.product-no').val())
            },
            success: function (data) {
                var $count = $button.siblings('.product-count');
                $count.val(parseInt($count.val()) -1);

                changeProductPrice($row);
                changeTotalPriceAll();
            },
            error: function (){
                alert('상품 개수 감소 실패');
            }
        });
    }

    function remove(button) {
        var $button = $(button);
        var $row = $button.parents('.row');

        $.ajax({
            url: 'cart/delete',
            type : "post",
            data: {
                pNoList: [parseInt($row.children('.product-no').val())]
            },
            success: function (data) {
                $row.remove();
                changeTotalPriceAll();
            },
            error: function (e){
                console.log(e);
                alert('상품 삭제 실패');
            }
        });
    }

    function order(){
        const $selected = $('.chkbox:checked');
        if($selected.length <= 0){
            alert("선택 상품 없음");
        }

        const carts = [];
        $selected.each(function(i, e){
            var $row = $(e).parents('.row');
            carts.push($row.data('cart-no'));
        });

        const $form = $("#orderForm");
        $("[name='carts']", $form).val(carts);
        $form.submit();
    }

    function setForm(name, value, form){
        var input = document.createElement('input');

        input.setAttribute("type", "hidden");
        input.setAttribute("name", name);
        input.setAttribute("value", value);

        form.appendChild(input);
    }

    /*** 장바구니 목록 체크박스 해제 시 전체선택 체크박스 해제 ***/
    $(".chkbox").click(function () {
        $("#allCheck").prop("checked", false);
    });


    /*** 전체 선택 시 목록 체크박스 체크 ***/
    $("#allCheck").change(function () {
        var checked = $(this).prop("checked");
        $(".chkbox").prop("checked", checked);

        changeTotalPrice($('.chkbox:checked').parents('.row'), $('.total-price-checked'));
    });


    /*** 선택한 상품 합계 함수 호출 ***/
    $(".chkbox").change(function () {
        const allChecked = $('.chkbox').length == $('.chkbox:checked').length;
        $("#allCheck").prop('checked', allChecked);

        changeTotalPriceAll();
    });

    /**** 선택한 상품만 장바구니에서 삭제하기 ****/
    function selectDelete() {
        var $checked = $('.chkbox:checked');

        if ($checked.length < 1) {
            alert("선택된 상품이 없습니다.");
            return;
        }

        var res = confirm("선택한 상품을 삭제하시겠습니까?");
        if (!res) {
            return;
        }

        var pNoList = [];
        $('.chkbox:checked').each(function (i, e){
            pNoList.push(parseInt($(e).parents('.row').children('.product-no').val()));
        });

        $.ajax({
            url: 'cart/delete',
            type : "post",
            data: {
                pNoList: pNoList
            },
            success: function (data) {
                $('.chkbox:checked').parents('.row').remove();
                changeTotalPriceAll();
            },
            error: function (){
                alert('선택된 상품삭제 실패');
            }
        });
    }

    function changeProductPrice($row){
        const count = parseInt($('.product-count', $row).val());
        const price = parseInt($('.product-price', $row).val());

        const total = count * price;
        $('.product-total-price', $row).text(addComma(total)).data('value', total);
    }

    function changeTotalPrice($row, $total){
        let product_total_price = 0;
        $('.product-total-price', $row).each(function(i, e){
            product_total_price += $(e).data('value');
        });

        const delivery = product_total_price > 0 ? 3000 : 0;

        $('.total_sum', $total).text(addComma(product_total_price));
        $('.delivery', $total).text(addComma(delivery));
        $('.total_sum2', $total).text(addComma(product_total_price + delivery));
    }

    function changeTotalPriceAll(){
        changeTotalPrice($('.row'), $('.total-price'));
        changeTotalPrice($('.chkbox:checked').parents('.row'), $('.total-price-checked'));
    }

    function addComma(num){
        const regexp = /\B(?=(\d{3})+(?!\d))/g;
        return num.toString().replace(regexp, ',');
    }

    function init(){
        $('.row').each(function(i, e){
            changeProductPrice($(e));
        });
        changeTotalPriceAll();
    }

    init();

</script>
<%@ include file="../inc/footer.jsp" %>