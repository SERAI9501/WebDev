<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
       자바스크립트 사용법
       1. 내부 스크립트 : 파일 한개 제어
          <script type="text/javascript">
             함수
          </script>
       2. 외부 스크립트 : 여러파일에서 제어 => 재사용
          <script type="text/javascript" src="파일명"></script>
                                         --- 경로명/URL
          => import
       3. 인라인스크립트 : 태그 한개 제어
          <a href="javascript:history.back()">
                  ------------
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
window.onload=functino()
{
	let a=10;
	let b=20
	
	let p1=plus(a,b)
	let p2=plus(a,b)
	let p3=plus(a,b)
	let p4=plus(a,b)
	
	document.write("p1="+p1+)
	}
	
function plus1(a,b)
{
	returtn a+b
}
let plus2=function(a,b)
{
	return a+B
	}
	let plust3=(a,b)=>{
	return a+b
	}
</script>
<title>Insert title here</title>
<%--
      Vue/React/Next
      <script tyep="text/babel">
      <script>
         소스 코딩
      </script>
 --%>
</head>
<body>

</body>
</html>