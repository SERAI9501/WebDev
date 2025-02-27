<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri= %>
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
  margin: 0px auto;
  width: 100%;
}
</style>
<script type="text/javascript">
function ok(zip,addr){
	opener.frm.post1.alue
	opener.frm.post2.value=zip.substring(4,7)
}
</script>
</head>
<body>
  <div class="container">
   <div class="row">
   <h3 class="text-center">우편번호 검색</h3>
   <form method=post action"../js/postfind.do>
     <table class="table">
      <tr>
       <td>
        <input type=text name=dong class="input-sm"
         placeholder="동/읍/면 입력">
        <input type=submit class="btn btn-sm btn-danger"
        value="검색">
       </td>
      </tr>
     </table>
     </form>
     <table class="table user-table">
     <thead>
      <tr>
       <th width=15% class="text-center">우편번호</th>
       <th width=85% class="text-center">주소</th>
      </tr>
      </thead>
      <tbody>
       <c:forEach var="vo" items=${list }>
         <tr>
          <td wdth=15% class="text-center"
         </tr>
      </tbody>
     </table>
   </div>
  </div>
</body>
</html>