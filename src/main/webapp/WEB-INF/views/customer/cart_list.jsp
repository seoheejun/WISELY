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
                                    <input type="checkbox" class="chkbox" name="chk" checked onchange="chk()"
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

                                    <!-- 수정 버튼으로 수량 조정 -->
                                        <%-- <form action="cartUpdate" method="post">
                                        <div style="position: relative; width: 90px; display: flex; border:1px; border-color: gray; border-style: solid; box-sizing: border-box; margin-right:20px"">
                                                <input type='button' onclick='count("plus")' value='+' style='width: 30px; background: white; border: 1px solid #bbb; border-radius: 0px; padding: 5px 7px; border: none;'/>
                                                <input type="text" id="qty" name="prodCount" value="${cDto.prodCount}" style='border:none; background: white; text-align:center; display:block; width: 30px; right: 12px; margin: 0; padding: 5px 7px;'/>
                                                <input type="hidden" name="cartNo" value="${cDto.cartNo}"/>
                                                <input type='button' onclick='count("minus")' value='-' style='width: 30px; background: white; border: 1px solid #bbb; border-radius: 0px; padding: 5px 7px; border: none;'/>
                                            </div>
                                        <input type="submit" class="btn btn-sm btn-secondary mt-3" value="수정"/>
                                        </form> --%>


                                    <div>
                                        <c:set var="totalPrice" value="${cDto.price*cDto.prodCount}"/>
                                        <span style="margin-right:20px; width:100px; display: block;"><fmt:formatNumber
                                                type="Number" value="${totalPrice}"/>원</span>
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
                    <div style="width:660px; height:65px; background: #FBFAFA">
                        <div style="margin-left:250px; padding-top:20px">
                            <span>상품가격 </span>
                            <span><fmt:formatNumber type="Number" value="${cartTotPrice}"/>원</span>
                            <span>+ 배송비 </span>
                            <span><fmt:formatNumber type="Number" value="3000"/>원</span>
                            <span> = </span>
                            <span><fmt:formatNumber type="Number" value="${cartTotPrice + 3000}"/>원</span>
                        </div>
                    </div>
                </c:if>

            </div>

            <!-- 장바구니 금액 표시 -->
            <div>
                <div style="width:300px; height:200px; background: #FBFAFA; padding: 20px; box-sizing: border-box;">
                    <div style="width:260px; margin-bottom: 15px; display: flex; justify-content: space-between;">
                        <div>합계</div>
                        <div>
                            <c:if test="${cList.size() != 0}">
                                <span id="total_sum"><fmt:formatNumber type="Number" value="${cartTotPrice}"/></span>원
                            </c:if>
                            <c:if test="${cList == null || cList.size() == 0}">
                                <fmt:formatNumber type="Number" value="0"/>원
                            </c:if>
                        </div>
                    </div>
                    <div style="width:260px; margin-bottom: 20px; display: flex; justify-content: space-between;
								border-bottom: 1px; border-bottom-style: solid; border-bottom-color: black; padding-bottom: 20px">
                        <c:if test="${cList.size() != 0}">
                            <div>배송비</div>
                            <div>+<span id="delivery"><fmt:formatNumber type="Number" value="3000"/></span>원</div>
                        </c:if>
                        <c:if test="${cList == null || cList.size() == 0}">
                            <div>배송비</div>
                            <div>+<fmt:formatNumber type="Number" value="0"/>원</div>
                        </c:if>
                    </div>
                    <div style="width:260px; margin-bottom: 15px; display: flex; justify-content: space-between;">
                        <div><b>결제예정금액</b></div>
                        <div><b>
                            <c:if test="${cList.size() != 0}">
                                <span id="total_sum2"><fmt:formatNumber type="Number"
                                                                        value="${cartTotPrice + 3000}"/></span>원
                            </c:if>
                            <c:if test="${cList == null || cList.size() == 0}">
                                <fmt:formatNumber type="Number" value="0"/>원
                            </c:if>
                        </b></div>


                    </div>
                </div>
                <!-- 구매하기 버튼 -->
                <c:if test="${cList.size() != 0}">
                    <form id="orderForm" method="post" action="order/preview" >
                        <input type="hidden" name="memNo" value="${memName}"/>
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
    /*** 수량 변경 ***/
    function count(type) {
        console.log("type: " + type);
        console.log(type.charAt(type.length - 1));

        let iNum = type.charAt(type.length - 1);
        for (i = 1; i <${cnt}; i++) {
            if (iNum == i)
                // 결과를 표시할 element
                var resultElement = document.getElementById('qty_' + i);
        }

        // 현재 화면에 표시된 값
        let number = resultElement.value;
        console.log(number);

        // 더하기/빼기

        for (i = 1; i <${cnt}; i++) {
            if (type === 'plus_' + i) {
                number = parseInt(number) + 1;
            } else if (type === 'minus_' + i && number > 1) {
                number = parseInt(number) - 1;
            }
        }
        // 결과 출력
        resultElement.value = number;
    }

    function increase(button) {
        var $button = $(button);

        $.ajax({
            url: 'cart/increase',
            type : "post",
            data: {
                pNo: parseInt($button.parents('.row').children('.product-no').val())
            },
            success: function (data) {
                var $count = $button.siblings('.product-count');
                $count.val(parseInt($count.val()) +1);
            },
            error: function (){
                alert('상품 개수 증가 실패');
            }
        });
    }

    function decrease(button) {
        var $button = $(button);

        $.ajax({
            url: 'cart/decrease',
            type : "post",
            data: {
                pNo: parseInt($button.parents('.row').children('.product-no').val())
            },
            success: function (data) {
                var $count = $button.siblings('.product-count');
                $count.val(parseInt($count.val()) -1);
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
    $("#allCheck").click(function () {
        var delivery = 3000;
        var charge = delivery.toLocaleString('ko-KR');
        var chk = $("#allCheck").prop("checked");
        if (chk) {
            $(".chkbox").prop("checked", true);
            itemSum();
            document.getElementById("delivery").innerText = charge;
        } else {
            $(".chkbox").prop("checked", false);
            itemSum();
            document.getElementById("delivery").innerText = 0;
            document.getElementById("total_sum2").innerText = 0;
        }
    });

    function getInput(name, value) {

        const inputField = document.createElement('input');
        inputField.type = 'input';
        inputField.name = name;
        inputField.value = value;

        return inputField;
    }


    /*** 선택한 상품 합계 함수 호출 ***/
    $(".chkbox").click(function () {
        $('.chkbox:checked').each(function (i, e) {

            const inputField = document.createElement('input');
            inputField.type = 'input';
            inputField.value = params[pNo];

            form.appendChild(inputField);

        });
        itemSum();

    });

    /*** 전체선택 해제된 후 체크박스 모두 체크되었을 대 전체선택 체크박스 체크 ***/
    function chk() {
        var chk = $(".chkbox").prop("checked");
        var count = $(".chkbox").length;
        var isAllCheck = 1;

        for (var i = 0; i < count; i++) {
            if ($(".chkbox")[i] == chk) {
                isAllCheck = 2;
                console.log("is : " + isAllCheck);
                console.log("chk : " + chk);

            } else if ($(".chkbox")[i] != chk) {
                isAllCheck = 1;
                console.log("is : " + isAllCheck);
                console.log("chk : " + chk);
            }
        }
        if (isAllCheck == 1) {
            $("#allCheck").prop("checked", true);
        }
    }


    /*** 상품 합계 출력 ***/
    function itemSum() {
        var chk = $(".chkbox").prop("checked");
        var count = $(".chkbox").length;
        var sum = 0;

        for (var i = 0; i < count; i++) {
            if ($(".chkbox")[i].checked) {
                /* sum += parseInt($(".chkbox")[i].value); */
                sum += ${totalPrice};
                /* console.log(sum); */
            }
        }

        /** 합계 **/
        document.getElementById("total_sum").innerText = sum.toLocaleString('ko-KR');
        document.preview.amount.value = sum;
        console.log("sum : " + sum);

        /** 배송비 포함 '결제예정금액' **/
        sum += 3000;
        document.getElementById("total_sum2").innerText = sum.toLocaleString('ko-KR');
    }

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
            },
            error: function (){
                alert('선택된 상품삭제 실패');
            }
        });
    }

    function goIndent() {
        var chk = $(".chkbox");
        var cnt = 0;

        $.each(chk, function (i, ch) {
            if ($(ch).is(":checked")) {
                cnt++;
                $('')
            }
        })

        var chk = $(".chkbox").prop("checked");
        var count = $(".chkbox").length;

        document.preview.submit();
        document.indentPreview.submit();

    }

</script>
<%@ include file="../inc/footer.jsp" %>