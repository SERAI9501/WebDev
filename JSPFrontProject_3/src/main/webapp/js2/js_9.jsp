<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 
     	 핵심은 함수 이름은 같아도 괜찮다 하지만 변수는 안된다.
     	 함수는 오버라이딩이 가능하니까
     	 대신 맨 마지막 값을 갖는다
     -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
//함수 오버라이딩 
function display()
{
   alert("function display Call...")
}
function display(){
   alert("let display=() Call")
}
function display(){
   alert("let display=function() Call")
}
</script>
</head>
<body>

</body>
</html>