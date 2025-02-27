<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	// 같은 태그 여러개 있는 경우에 인덱스로 이용 => 0번부터 시작
	// nth-child(1) 1번부터 시작
	$('span:eq(0)').text("Hello JQuery")
	// textContent는 순수하게 문자열로만 취급한다.
	$('span:eq(1)').html("<font color=red>아이디를 입력하시오</font>")
	// 위에 것 innerHTML
	//$('span:nth-child(1)').text("Hello JQuery")
	// appendChild() => append()
})
</script>
</head>
<body>
  <span>
  
  </span><br>
  <span>
  
  </span>
</body>
</html>