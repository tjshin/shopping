<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="util" uri="/ELFunctions" %>

 
<!DOCTYPE html> 
<html> 
<head>
  <title>장바구니</title>
  <meta charset="utf-8">
    
</head>
<body>
<div class="container">
 
  <h2>장바구니</h2>
  
  
  <table class="table table-striped">
   <thead>
    <tr>
<!--     출처: https://cart.coupang.com/cartView.pang -->
    <th scope="col" class="all-select-event"><label><input title="모든 상품을 결제상품으로 설정" type="checkbox" checked="checked" class="all-deal-select"/><span>&nbsp;&nbsp;전체선택</span></label></th>
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
   <tr><td colspan="6">등록된 상품이 없습니다.</td>
</c:when>
<c:otherwise>
  
   <c:forEach var="dto" items="${list}"> 
   
<!--    <tr> -->
<%--     <td>${dto.contentsno}</td> --%>
<!--     <td> -->
<%--     <img src="/pstorage/${dto.filename}"  class="img-rounded" width="100px" height="100px"> --%>
<!--     </td> -->
<!--     <td> -->
<%--     <a href="javascript:detail('${dto.contentsno}')">${dto.pname}</a> --%>
<%--     <c:if test="${util:newImg(fn:substring(dto.rdate,0,10)) }"> --%>
<!--          <img src="/images/new.gif">  -->
<%--     </c:if>  --%>
    
<!--     </td> -->
<%--     <td>${dto.price}</td> --%>
<%--     <td>${dto.rdate}</td> --%>
<%--     <td>${dto.stock}</td> --%>
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
<!--    </tr> -->
   </c:forEach>
   </c:otherwise>
   </c:choose>
 
   </tbody>
  
  </table>
  <div>
      ${paging}
  </div>
</div>
</body> 
</html> 
