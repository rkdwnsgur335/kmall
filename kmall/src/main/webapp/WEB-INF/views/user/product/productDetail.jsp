<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <!-- Bootstrap core CSS -->
<link href="/resources/css/bootstrap.min.css" rel="stylesheet">


	<!-- bundle -->
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="/resources/js/bootstrap.bundle.min.js"></script>


<%@include file="/WEB-INF/views/include/navigation.jsp" %>
</head>
<body>
<section class="py-5">
            <div class="container px-4 px-lg-5 my-5">
                <div class="row gx-4 gx-lg-5 align-items-center">
                    <div class="col-md-6">
                    <img src="/user/product/displayFile?folderName=${productVO.pdt_img_folder }&fileName=${productVO.pdt_img }" 
	      			alt="" class="bd-placeholder-img card-img-top" width="100%" onerror="this.onerror=null; this.src='/image/no_images.png'">
                    </div>
                    <div class="col-md-6">
                        <div class="small mb-1">${productVO.pdt_gender }</div>
                        <h1 class="display-5 fw-bolder">${productVO.pdt_name }</h1>
                        <div class="fs-5 mt-5">
                            <span class="text-decoration-line-through" style="margin-right: 50px;">판매가</span>
                            <span>${productVO.pdt_price }원</span>
                            <input type="hidden" id="pdt_num" value="${productVO.pdt_num }">
                        </div>
                        <div class="fs-5 mb-5">
                            <span class="text-decoration-line-through" style="margin-right: 50px;">배송비</span>
                            <span>무료</span>
                        </div>
                        <div class="fs-5 mb-5">
								<tr>
								    <th scope="row">
								       <span class="text-decoration-line-through" style="margin-right: 50px;">수량</span>
								    </th>
								    <td>
								    	<input type="number" class="form-control w-25" id="pdt_amount" min="1" value="1">
								        <!--<select option_select_element="ec-option-select-finder" option_sort_no="1" option_type="T" item_listing_type="S" product_type="product_option" id="pdt_amount" option_style="select" required="true">
								            <option value="*" selected="">- [필수] 옵션을 선택해 주세요 -</option>
								            <option value="**" disabled="">-------------------</option>
								        <option value="230">230</option>
								            <option value="235">235</option>
								            <option value="240">240</option>
								            <option value="245">245</option>
								            <option value="250">250</option>
								            <option value="255">255</option>
								            <option value="260">260</option>
								            <option value="265">265</option>
								            <option value="270">270</option>
								            <option value="275">275</option>
								            <option value="280">280</option>
								            <option value="285">285</option>
								            <option value="290">290</option>
								            <option value="300">300</option>
								            <option value="305">305</option>
								            <option value="310">310</option> 
								        </select>-->
								      <p class="value"></p>
								 </td>
							</tr>
                        </div>
                        <div class="d-flex">      
                            <button type="button" id="btnCart" class="btn btn btn-light mr-1">ADD TO CART</button>
							<button type="button" id="btnOrder" class="btn btn-outline-dark btn-lg">BUY NOW</button>
                        </div>
                    </div>
                </div>
            </div>
        </section>


<script>
$(function(){ 
	//장바구니 담기
    $("#btnCart").on("click", function(){

      $.ajax({
        url : '/user/cart/cart_add',
        data: { pdt_num : $("input#pdt_num").val(), cart_amount : $("input#pdt_amount").val()},
        dataType: 'text',
        success: function(result) {
          if(result == "success") {
            alert("장바구니에 추가되었습니다.");
            if(confirm("장바구니로 이동하시겠습니까?")) {
              location.href = "/user/cart/cart_list";
            }

          }
        }
      });
    });
	
});
</script>
        
</body>
</html>