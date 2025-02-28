<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.container{
 margin-top: 50px;
}
.row{
  margin: 0px auto;
  width: 350px;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script><!-- 닫는것까지가 라이브러리 추가이다. 안에 넣으면 코드가 안나오는 이유 -->
<script type="text/javascript">
$(function(){ // $(document).ready(function(){}) <=예전버전
	/*
	   $( )
	    --- selector (태그 선택자)
	    --- 브라우저 객체 
	        window , document , location
	        ------ 위치
	        
	        z-index 화면 항상 위에 고정 시키는것
	    $(this)
	     ------ 자신의 객체
	*/
	//jquery로 이미지 줄이는법
	/* $('img').css('width','200xp')
	$('img').css('height','250xp') */
	$('img').css({
		'width':'250px',
		'height':'300px'
	})
	
	$('img').hover(function(){
		$(this).css('cursor','pointer')
		$(this).css('opacity',0.2) 
		$(this).css({
			'whidth':'400px',
			'height':'450px'
		})
	},function(){
		$(this).css('opacity',1.0)
		$(this).css({
			'whidth':'250px',
			'height':'300px'
	})
})
</script>
</head>
<body>
  <img src="m1.jpg">
  <img src="m2.jpg">
</body>
</html>