<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>ShoeShop</title>

<meta name="theme-color" content="#563d7c">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
      
      button {
      border: 1px;
      }
    </style>
	
     <!-- Bootstrap core CSS -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">


	<!-- bundle -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
<script type="text/javascript" src="/resources/js/bootstrap.bundle.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
  <%@include file="/WEB-INF/views/include/navigation.jsp" %>  

  </head>
  <body>
    


<div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
  <h1 class="display-4">CART</h1>
  <!-- <p class="lead">Quickly build an effective pricing table for your potential customers with this Bootstrap example. It’s built with default Bootstrap components and utilities with little customization.</p> -->
</div>

<div class="container">
	<div class="row">
     	<div class="col-md-12">
     		<div class="box box-primary">
     			<div class="box-body">
     				
				  <table class="table table-hover" id="cartlistresult">
					  <thead>
					    <tr>
					    	<th scope="col"><input type="checkbox" class="allcheck" id="allcheck"></th>
						    <th scope="col">이미지</th>
						    <th scope="col" style="padding-right:50px;">상품정보</th>
						    <th scope="col">판매가</th>
						    <th scope="col">수량</th>
						    <th scope="col">배송구분</th>
						    <th scope="col">지우기</th>
						</tr>
					  </thead>
					  <tbody>
					  
					    <c:forEach items="${cartList }" var="cartVO">
					    <c:set var="price" value="${cartVO.cart_amount * cartVO.pdt_price }"></c:set>
					    
					    
					    
					    
					     
					    <tr>
					    	<td>
					    		<input type="checkbox" class="chbox" id="chbox" data-cart_code="${cartVO.cart_code }">
					    	</td>
					    
						    <td>
						    <a class="move" href="${productVO.pdt_num }">
									<img src="/user/product/displayFile?folderName=${cartVO.pdt_img_folder }&fileName=${cartVO.pdt_img }" 
									alt="" style="width: 80px;height: 80px;" onerror="this.onerror=null; this.src='/image/no_images.png'">
							</a>
						    </td>
						    <td class="left gClearLine">
						        <a href="/product/detail.html?product_no=1202&amp;cate_no=24"><strong></strong>${cartVO.pdt_name } </a><span class="displaynone"><br></span>
						    </td>
						    <td class="right">
						        <div class="">
						            <strong>${cartVO.pdt_price }원</strong>
						            <p class="displaynone"></p>
						        </div>
						    </td>
						    <td>
						        <span class="">
						            <span class="ec-base-qty"><input name="cart_amount"  size="2" value='<c:out value="${cartVO.cart_amount }" />' type="text"></span>
						            <button type="button" name="btnCartAmountChange2" data-cart_code="${cartVO.cart_code }">변경</button>
						        </span>
						    </td>
						    <td>
						        <div class="txtInfo">기본배송<br></div>
						    </td>
						    <td rowspan="1">
						        <button class="" name="btnCartDelete" data-cart_code="${cartVO.cart_code }">삭제</button>
						    </td>
						</tr>
					    			
		    
					      <c:set var="sum" value="${sum + price}"></c:set>
					    </c:forEach>
					  
					  </tbody>
					  <tfoot>
					  	<tr> <!--  empty 데이타가 존재하지않으면 true, 존재하면 false -->
					  		<c:if test="${!empty cartList }">
					  		<td colspan="7" style="text-align: right"><h4>Total: <span id="cartTotalPrice"><fmt:formatNumber type="number" maxFractionDigits="3" value="${sum }" ></fmt:formatNumber>￦</span></h4></td>
					  		</c:if>
					  		<c:if test="${empty cartList }">
					  		<td colspan="7" style="text-align: center">장바구니에 담긴 상품이 없습니다.</td>
					  		</c:if>
					  	</tr>
					  	
					  </tfoot>
					</table>
	
     			</div>
     			<div class="box-footer text-center">
     				<button type="button" id="btnEmpty" class="btn btn-dark">장바구니 비우기</button>
     				<button type="button" id="deleteselect" class="btn btn-dark">삭제하기</button>
     				<button type="button" id="btnOrder" class="btn btn-dark">주문하기</button>
     			</div>
     		</div>
     	</div>
     </div>
      
      
      <%@include file="/WEB-INF/views/include/footer.jsp" %>
</div>

	

  <script>
  	
  	//체크박스 클릭시 전부 체크
  	$("#allcheck").click(function(){
		
  		let chk = $("#allcheck").prop("checked");
  		
  		if(chk){
  			$("#chbox").prop("checked", true);
  		}else {
  			$("#chbox").prop("checked", false);
  		}
  		
	});
	
  	//전부클릭 체크박스 선택 후 개별 체크박스 클릭시 체크해제
	$("#chbox").click(function(){
		
		$("#allcheck").prop("checked", false);
	});
  	
  	//선택삭제
  	$("#deleteselect").click(function(){
		let confirmDel = confirm("선택된 상품들을 삭제하시겠습니까?");

		if(confirmDel) {
			let checkArr = new Array();
			
			$("input[class='chbox']:checked").each(function(){
				checkArr.push($(this).attr("data-cart_code"));
			});

			$.ajax({
				url : "/user/cart/deleteselect",
				type : "post",
				data : {chbox : checkArr },
				success : function(){
					alert("삭제가 완료되었습니다.");
					location.href = "/user/cart/cart_list";
				}
			});
		}

	});
	
	
	
	
    $(function(){

      //수량변경(Ajax) 버튼클릭 - 장바구니코드, 변경수량
	  $("button[name='btnCartAmountChange1']").on("click", function(){
		
		let btnAmountChange = $(this);

		let cart_code = $(this).data("cart_code");
		//$(this).prev().val();
		let cart_amount = $(this).parent().find("input[name='cart_amount']").val();

		console.log("장바구니코드: " + cart_code);
		console.log("변경수량: " + cart_amount);

		$.ajax({

			url: '/user/cart/cart_amount_update1',
			type: 'get',
			data: { cart_code : cart_code, cart_amount : cart_amount},
			dataType : 'text',
			success : function(result) {
				if(result == "success") {
					alert("수량 변경이 되었습니다.");

					//개별상품 금액, 총금액 변경작업 해야 함.
					let pdt_price = btnAmountChange.parent().find("input[name='pdt_price']").val();

					console.log("단위가격: " + (pdt_price * cart_amount));
					
					//단위가격 변경
					btnAmountChange.parent().parent().find("span.unitprice").html($.numberWithCommas(pdt_price * cart_amount));

					//총구매 가격 변경
					let total_price = 0;
					$("table#cartlistresult span.unitprice").each(function(index, item){
						//console.log("단위가격: " + $(item).html());  // $(this)
						total_price += parseInt($.withoutCommas($(item).text()));
						$("table#cartlistresult span#cartTotalPrice").text($.numberWithCommas(total_price));
						
					});

					
				}
			}
		});
	  });


		//수량변경 버튼클릭 - 장바구니코드, 변경수량
		$("button[name='btnCartAmountChange2']").on("click", function(){

			let cart_code = $(this).data("cart_code");
			//$(this).prev().val();
			let cart_amount = $(this).parent().find("input[name='cart_amount']").val();

			console.log("장바구니코드: " + cart_code);
			console.log("변경수량: " + cart_amount);

			location.href = "/user/cart/cart_amount_update2?cart_code=" + cart_code + "&cart_amount=" + cart_amount;


		});

		//삭제버튼 클릭
		$("button[name='btnCartDelete']").on("click", function(){

			let cart_code = $(this).data("cart_code");
			
			console.log("장바구니코드: " + cart_code);
			
			location.href = "/user/cart/cart_delete?cart_code=" + cart_code;


		});

		//장바구니 비우기
		$("#btnEmpty").on("click", function(){

			location.href = "/user/cart/cart_empty";
		});
		
		//주문하기 버튼클릭
		$("#btnOrder").on("click", function() {
			let type = "cartOrder";
			location.href = "/user/order/orderListInfo?type=" + type;
		});


    }); // ready이벤트 끝부분

	//사용자정의 함수
	// 숫자값을 3자리(천단위)마다 콤마찍기
	$.numberWithCommas = function(x) {
		return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
	}

	// 3자리마다 콤마 제거하기(천단위마다)
	$.withoutCommas = function (x) {
		return x.toString().replace(",", '');
	}



  </script>  
  </body>
</html>
    