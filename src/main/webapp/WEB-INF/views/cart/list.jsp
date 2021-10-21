<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="util" uri="/ELFunctions"%>


<!DOCTYPE html>
<html>
<head>
<title>장바구니</title>
<meta charset="utf-8">

<script type="text/javascript">
  	function sum() {
  		const table = document.getElementById('cartlist');
  		
  		let result = 0;
  		for (let i = 0; i < table.rows.length; i++) {
  			result += parseInt(table.rows.[i].cells[3].innerHTML);
  		}
  		document.getElementByID('result').innerText = result;  		
  	}
  </script>

</head>
<body>
	<div class="container">

		<h2>장바구니</h2>


		<table class="table table-striped" id="cartlist">
			<thead>
				<tr>
					<!--     출처: https://cart.coupang.com/cartView.pang -->
					<!--     <th scope="col" class="all-select-event"><label><input title="모든 상품을 결제상품으로 설정" type="checkbox" checked="checked" class="all-deal-select"/><span>&nbsp;&nbsp;전체선택</span></label></th> -->
					<th>상품이미지</th>
					<th>상품명</th>
					<th>가격</th>
					<th>수량</th>
					<th>총 금액</th>
				</tr>
			</thead>
			<tbody>

				<c:choose>
					<c:when test="${empty list}">
						<tr>
							<td colspan="6">등록된 상품이 없습니다.</td>
					</c:when>
					<c:otherwise>

						<c:forEach var="dto" items="${list}">

							<tr>
								<!--     출처: https://cart.coupang.com/cartView.pang -->
								<!--    	<td class="product-select-event"> -->
								<!--     <input type="checkbox" title="이 상품을 결제상품으로 설정" checked="checked" value="16793228033" class="dealSelectChk"/> -->
								<!--     </td> -->


								<td><img src="/pstorage/${dto.filename}"
									class="img-rounded" width="100px" height="100px"></td>
								<td>${dto.pname}</td>
								<!-- 								    <td> -->
								<%-- 								    <a href="javascript:detail('${dto.contentsno}')">${dto.pname}</a> --%>

								<!-- 								    </td> -->
								<td>${dto.price}</td>
								<td>${dto.quantity}</td>
								<td>${dto.total}</td>
								<%--     <td> <a href="javascript:updateC('${dto.contentsno}')"> --%>
								<!--           <span class="glyphicon glyphicon-edit"></span> -->
								<!--         </a> -->
								<!--         / -->
								<%--         <a href="javascript:deleteC('${dto.contentsno}', '${dto.filename}')"> --%>
								<!--           <span class="glyphicon glyphicon-trash"></span> -->
								<!--         </a> -->
								<!--         / -->
								<%--         <a href="javascript:updateFile('${dto.contentsno}', '${dto.filename}')"> --%>
								<!--           <span class="glyphicon glyphicon-picture"></span> -->
								<!--         </a>      -->
								<!--     </td> -->
							</tr>
						</c:forEach>

					</c:otherwise>
				</c:choose>
			</tbody>
			<!--    <tfoot> -->
			<!--    <tr> -->
			<!--    <td id="result" align="center"></td> -->
			<!--    </tr> -->
			<!--    </tfoot> -->
		</table>
		<!--     출처: https://cart.coupang.com/cartView.pang -->
		<div class="order-buttons" style="text-align: center">
			<button onclick="history.back()">계속 쇼핑하기</button>
			<button onclick=#>구매하기</button>
		</div>
	</div>
</body>
</html>
