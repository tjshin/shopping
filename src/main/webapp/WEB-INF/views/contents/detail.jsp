<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contents Details</title>

<script type="text/javascript">
	function updateC() {
		var url = "update";
		url += "?contentsno=${dto.contentsno}";
		url += "&col=${param.col}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";

		location.href = url;
	}

	function updateFile() {
		var url = "updateFile";
		url += "?contentsno=${dto.contentsno}";
		url += "&col=${param.col}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";
		url += "&oldfile=${dto.filename}";
		
		location.href = url;
	}
	
	function deleteC() {
		var url = "delete";
		url += "?contentsno=${dto.contentsno}";
		url += "&col=${param.col}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";
		
		location.href = url;
	}
	
	function listC() {
		var url = "list";
		url += "?col=${param.col}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";
		
		location.href = url;
	}
	
	function mainlistC() {
		var url = "mainlist";
		url += "?col=${param.col}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";
		
		location.href = url;
	}
</script>

</head>
<body>
<div class="container">

<h2 class="col-sm-offset-2 col-sm-10">${dto.pname}의 상품 정보</h2>
 <table class="table table-bordered">
 <tr>
 	<td colspan="2" style="text-align: center">
 		<img src="${root}/pstorage/${dto.filename}" 
 		width="250px" height="250px" class="img-rounded" >
 	</td>
 </tr>
 <tr>
 	<th>상품명</th>
 	<td>${dto.pname}</td>
 </tr>
 <tr>
 	<th>가격</th>
 	<td>${dto.price}</td>
 </tr>
 <tr>
 	<th>Details</th>
 	<td>${dto.detail}</td>
 </tr>
 <tr>
 	<th>재고 수량</th>
 	<td>${dto.stock}</td>
 </tr>
 
 </table>
 <div style="text-align: center">
 <c:if test="${not empty sessionScope.id and sessionScope.grade == 'A'}">
<!--  <button class="btn btn-default" onclick="deleteC()">상품 삭제</button> -->
 <button class="btn btn-default" onclick="updateC()">상품 정보 수정</button>
 <button class="btn btn-default" onclick="updateFile()">사진수정</button>
 <button class="btn btn-default" onclick="location.href='./delete/${param.contentsno }'">상품 삭제</button>
 <button class="btn btn-default" onclick="listC()">상품 목록(관리자)</button>
 </c:if>
 <button class="btn btn-default" onclick="location.href='./mainlist/${dto.cateno }'">상품 목록</button>
 </div>
 
 <br>
 
</div>
</body>
</html>