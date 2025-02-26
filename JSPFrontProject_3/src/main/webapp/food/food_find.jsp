<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<style type="text/css">
.container-fluid{
 margin-top: 50px;
}
.row{
  margin: opx auto;
  width: 100%;
}
p{
   overflow: hidden;
   white-space: nowrap;
   text-overflow: ellipsis;
}
img:hover,a:hover {
   cursor: pointer
}
/* 문서 객체 선택 => 351page
 * document.querySelector("#fd") => id
   => document.getElementById("id") 위 아래 둘 다 사용가능 위버전이 더 범위가 넓어서 사용하기 편하다
   => $('#fd') 나중에 이렇게 바뀐다
 * document.querySelector(".fd") => class
   => document.getElementClassName("fd") 위 아래 둘 다 사용가능 위버전이 더 범위가 넓어서 사용하기 편하다
   => $('.fd')
 * document.querySelector("div") => 태그명
   => document.getElementByTagName("div")  위 아래 둘 다 사용가능 위버전이 더 범위가 넓어서 사용하기 편하다
   => $('div')
 */
</style>
<script type="text/javascript" src="https://unpkg.com/axios/dist/axios.min.js"></script>
<script type="text/javascript" src="food.js"></script>
</head>
<body>

  <div class="container-fluid">
    <div class="row">
    <input type=text id="fd" size=20 class="input-sm">
    <input type=button id="btn" value="검색" class="btn-sm btn-success"
      onclick="foodFind()"
    >
    </div>
    <div class="row" style="margin-top: 20px">
      <div class="col-sm-6" id="poster">
        
      </div>
      <div class="col-sm-6" id="detail" style="display:none">
       <table class="table">
        <tr> 
         <td width=30% class="text-center" rowspan="8" id="poster1">
         </td>
         <td colstpan="2">
          <h3><span id="title"></span>&nbsp<span id="score"></span></h3>
         </td>
        </tr>
       </table>
       <table class="table">
         <tr>
           <td></td>
         </tr>
       </table>
      </div>
    </div>
    <div class="row" style="margin-top: 10px">
      <div class="text-center" id="pages">
        
      </div>
    </div>
  </div>
</body>
</html>