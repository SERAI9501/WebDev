<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 
      내장 객체
      ------
       window : 브라우저 자체 제어
                open
                close
       document : write
        		  querySelector() => 태그 읽기
 	   history : back , go()
 	   loacation : href="이동할 파일명"
 	   
 	  데이터형
 	  -----
 	   Number => 형변환 / parseInt()
 	   ------ toLocaleString()
 	   String => "abcd" => 0부터
 	     length() = 문자 갯수 : 비밀번호 유효성 검사
 	     indexOf / lastIndexOf 문자위치 찾기
 	     replace() = 문자변경
 	     split() => 문자 분리
 	     substring() : 문자 자르기
 	     **substr(number,number) => 오라클
 	                       갯수
 	             시작인테그
 	     trim() : 좌우 공백 제거
 	   Array
 	     push(() = 데이터 첨부
 	     pop () = epdlxj tkrwp
 	     slice() = 원하는 위치의 데이터를 잘라서 새로운 배열 생성
 	     length = 데이터 갯수
 	   Date : 날짜 시간 관리
 	     let today=new Date()
 	     year: 년도 => today.getFullYear()
 	     month : 월 => today.getMonth()
 	     date : 일 => today.getDate()
 	     day : 요일 => today.getDay()
 	   Math
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/*
 *  코딩 테스트는 자바 보단 자바스크립트로 많이 짠다 왜냐하면 자바스크립트는 메모장만 있으면 되기 때문이다.
 
    이력서 통과 => 70%
      => 면접 / 코딩 테스트
      => 테스트지
      => 중견 업체
         
 */
window.onload=function(){
	let today=new Date()
	let year=today.getFullYear()
	let month=today.getMonth()
	let date=today.getDate()
	let day=today.getDaty()
	let strWeek=["일","월","화","수","목","금"]
	document.write("오늘은 "+year+"년 "+month+"월 "+date+"dlf "+strWeek)
	
	
}
</script>
</head>
<body>

</body>
</html>