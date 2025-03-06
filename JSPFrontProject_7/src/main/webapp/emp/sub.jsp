<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container{
 margin-top: 50px;
}
.row{
  margin: opx auto;
  width: 800px;
}
</style>
</head>
<body>
  <div class="container">
   <div class="row">
    <h3 class="text-center">JOIN연습</h3>
    <table class="table">
     <tr>
      <th>사번</th>
      <th>이름</th>
      <th>직위</th>
      <th>부서명</th>
      <th>근무지</th>
      <th>등급</th>
      </tr>
      <c:forEach var="vo" items="${list }">
     	<tr>
      <th>${vo.empno }</th>
      <th>${vo.ename }</th>
      <th>${vo.job }</th>
      <th>${vo.dvo.dname }</th>
      <th>${vo.dvo.loc }</th>
      <th>${vo.svo.grade }</th>
      </tr> 
      </c:forEach>
    </table>
   </div>
  </div>
</body>
</html>