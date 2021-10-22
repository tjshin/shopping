<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>장바구니 담기</title>



</head>
<body>
<div class="container">

<h2 class="col-sm-offset-2 col-sm-10">장바구니 담기</h2>
<form class="form-horizontal" 
      action="/orders/create"
      method="post">
<!--       onsubmit="return checkIn(this)"> -->
      
      
 <table class="table table-bordered">
 <tr>
 	<td colspan="2" style="text-align: center">
 		<img src="${root}/pstorage/${cdto.filename}">
 	</td>
 </tr>
 <tr>
 	<th>상품명</th>
 	<td>${cdto.pname}</td>
 </tr>
 <tr>
 	<th>가격</th>
 	<td>${cdto.price}</td>
 </tr>
 <tr>
 	<th>수량</th>
 	<td><div class="col-sm-4">
      <input type="text" name="quantity" id="quantity" class="form-control">
    </div></td>
 </tr>
 
 <tr>
 	<th>결제수단</th>
 	<td><div class="col-sm-4">
      <select class="form-control" name="payment" id = "payment">
        <option value="1"
        <c:if test= "${payment=='신용카드'}"> selected </c:if>
        >신용카드</option>
      </select>
    </div></td>
 </tr>
 <tr>
 	<th>주문자 성명</th>
 	<td>
 	<div class="col-sm-4">
      <input type="text" name="mname" id="mname" class="form-control">
    </div>
 	</td>
 </tr>
 
 
 
 </table>
 <div class="row" style="text-align: center">
<!--   <button id='addOrdersBtn' class='btn btn-primary pull-center'> -->
<!--   장바구니 담기</button> -->
<!--   <button class="btn btn-default" onclick=#>바로 구매</button> -->
  <button type="submit" class="btn btn-default">주문하기</button>
  <button class="btn btn-default" onclick=#>상품 목록</button>
 </div>
 
 
 <br>
 </form>
</div>




</body>
</html>