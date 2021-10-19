<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html> 
<html> 
<head>
  <title>상품 정보 삭제</title>
  <meta charset="utf-8">
  <style type="text/css">
  #red{
    color:red;
  }
  </style>
</head>
<body> 
<div class="container">
 
<h2 class="col-sm-offset-2 col-sm-10">상품 정보 삭제</h2>
<form class="form-horizontal" 
      action="./delete"
      method="post"
      >
      
      <input type="hidden" name='noticeno' value='${param.noticeno}'>
      <input type='hidden' name="col" value="${param.col}">
      <input type='hidden' name="word" value="${param.word}">
      <input type='hidden' name="nowPage" value="${param.nowPage}">
      
  <input type="hidden" name="noticeno" value="${param.noticeno}">
  <div class="form-group">
    <label class="control-label col-sm-2" for="passwd">비밀번호</label>
    <div class="col-sm-6">
      <input type="password" name="passwd" id="passwd" class="form-control">
    </div>
  </div>
  
  <p id="red" class="col-sm-offset-2 col-sm-6">삭제하면 복구할 수 없습니다</p>
  
   <div class="form-group">
   <div class="col-sm-offset-2 col-sm-5">
    <button class="btn">삭제</button>
    <button type="reset" class="btn">취소</button>
   </div>
 </div>
</form>
 
</div>
</body> 
</html>