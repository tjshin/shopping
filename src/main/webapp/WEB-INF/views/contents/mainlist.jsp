<%@ page contentType="text/html; charset=UTF-8" %> 
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html> 
<head>
  <title>상품메인페이지</title>
  <meta charset="utf-8">
</head>
<body> 
 
<div class="container">
<h3> new Item </h3>
<c:choose>   
<c:when test="${empty list}">
   <div class="row">
   <h2>상품 준비중 입니다.</h2> 
   <p><img src="/pstorage/default.jpg" class="img-thumbnail"  width="236" height="306"></p>
   
   </div>
</c:when>
<c:otherwise>

<form class="form-inline" action="./list">
    <div class="form-group">
      <select class="form-control" name="col">
        <option value="cateno"
        <c:if test= "${col=='cateno'}"> selected </c:if>
        >상품분류(Jean:1,Bag:2)</option>
        <option value="pname"
        <c:if test= "${col=='pname'}"> selected </c:if>
        >상품명</option>
        <option value="price"
        <c:if test= "${col=='price'}"> selected </c:if>
        >가격</option>
        <option value="total"
        <c:if test= "${col=='total'}"> selected </c:if>
        >전체출력</option>       
     </select>
    </div>
    <div class="form-group">
      <input type="text" class="form-control" placeholder="Enter 검색어" 
      name="word" value="${word}">
    </div>
    <button type="submit" class="btn btn-default" >검색</button>
    </form>
    
<c:set var="list" value="${list}"/>
<div class="row">
    <c:forEach var="dto" begin="0" end="3" items="${list}">
    <div class="col-sm-3">
      <h3><br></h3>
       <a href="/contents/detail/${dto.contentsno }"><p><img src="/pstorage/${dto.filename }" class="img-thumbnail"  width="236" height="306"></p></a>
        <p>${dto.pname }<br><b>${dto.price }</b></p>
    </div>
    </c:forEach>
</div>
 <div class="row">
    <c:forEach var="dto" begin="4" end="7" items="${list}">
    <div class="col-sm-3">
      <h3><br></h3>
       <a href="/contents/detail/${dto.contentsno }"><p><img src="/pstorage/${dto.filename }" class="img-thumbnail"  width="236" height="306"></p></a>
        <p>${dto.pname }<br><b>${dto.price }</b></p>
    </div>
    </c:forEach>
</div>
  ${paging}
</c:otherwise>
</c:choose>
</div>
</body> 
</html>