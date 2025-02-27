<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
      JQuery : 자바스크립트 라이브러리 => 소스를 통일화 시키려고 만든 프로그램
      -------- 3버전에서 멈춤 그러다(4,5버전을 출시)
                                -----------
                                React / Vue / Jquery
                                -----------
      => 태그,속성을 제어하는 프로그램 : 문서 객체
      => 태그를 제어하기 위해 태그를 가지고 온다
         document.querySelector("")
                    |          ---- CSS선택자
                  ${CSS선택자}.제어
      => Jquery 사용시 => 라이브러리 import
         <script src="http://code/jquery.com/jquery.js">
         *** 버전이 충돌되는 오류 발생 (파일마다 가져다 놓지말고 메인에 모아놓고 시작해야한다)
         
         jquery 핵심 => 태그를 읽어오는 처리하는법이 핵심이다.
                       ------------------- CSS 선택자 CSSProject 1 부분 다시 볼 것
         1. window.onload=function(){} 이 메인함수가 아래처럼 변경된다.
            => $(function(){}) 
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	/* let h1=doncument.querySelector("#h1")
	h1.style.color="red"
	let h1=doncument.querySelector(".h1")
	h2.style.color="blue"
	let h1=doncument.querySelector("h2")
	h3.style.color="green" */
	
	#('#h1').css("color","red")
	$('.h1').css("color","blue")
	$('h2').css("color","green")
	// => 함수화
})
</script>
</head>
<body>
  <h1 id="h1">dsaf</h1>
  <h1 class="h1">sadfsf</h1>
  <h2>sdafdsfa</h2>
</body>
</html>