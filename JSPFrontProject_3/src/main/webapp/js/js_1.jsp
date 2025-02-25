<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
      자바스크립트 : 브라우저에서 화면 출력
                  정적 => HTML/CSS
                  동적 => JavaScript
                         ---------- 서버 요청 / 서버 응답 => 동시에 수행
                                    => Ajax / axios
       = 1. 데이터형
            자동 데이터형 변경
            --------------
            let / const
            = number (숫자형) => int / double
            = string (문자형) => '' , ""
                               --- 여러 글자
            = object => 배열 , 객체형
                        []    {} => JSON
            = function => 데이터형으로 취급해서 매개변수로 사용이 가능하다(callcack이라 부른다)
            = null , NaN , infinity
            = typeof
       = 2. 연산자
            + : 문자열 결합 / 덧셈
            / : 0으로 나누는 경우 : infinity
                정수/정수 : 실수
            비교연산자
              = 5=='5' => true // 자동으로 parseInt('5') 숫자 5가 된다.
              = 5==='5' => false // 변경이 안된다(엄격한 연산자)
            형변환 연산자
            ---------
             정수변환 : Number('?') , parseInt('?')
             논리변환 : Boolean(1) , Boolean(0)
                      => 0,0.0이 아닌 수는 모두 true
                      => null이 아닌 값 true
             문자현환 : String(10)
             *** HTML에서 값을 가지고 오는 경우
                 => 모든 데이터형이 String이다
       = 3. 제어문
             =조건문 : 
               =단일 조건문 
                  if(조건문)
                  {
                     조건이 true 처리
                  }
               =선택 조건문
                  if(조건문)
                  {
                     조건이 true 처리
                  }
                  else
                  {
                    조건이 false일때 처리
                  }
               =다중 조건문
             =반복문 : for = while(채팅)
               =일반 for
               
                for(let i=10;i<=10;i++)
               =for-each
               =map
                배열.map(function(값){처리})
                
       = 4. 함수 => 324page : 명령문의 집합 => 한가지일만 수행
             선언적 함수
              ** 리턴형 선언
              ** 매개변수의 데이터형을 사용하지 않는다
              예) 국어,영ㅇ,수학 점수를 받는다
                 function gesan(kor,eng,math)
                                ============ 변수명만 사용
              function 함수명(매개변수) => 선언부
              {
              }
             익명의 함수
             let 함수명=function(매개변수){}
             let 함수명=)=매개변수=>{}
                              -- function / return제거
                              -- 권장하는 표현식
             class A
             {
             	constructor(msg)
             	{
             	   this.msg=msg
             	}
                test:function(){
                 axios.get('URL'.{데이터전송})
                 .then((response)=>{
                  읍답을 받아서 처리
                   this.msg=response.data.msg (X)
                })
                }
             }
             함수 유형
                     리턴형              매개변수
                       o                  o
                     function test(kor,eng,math)
                     {
                        return kor+eng+math
                     }
              ----------------------------------------
                       o                  x
              ----------------------------------------
                       x                  o
              ----------------------------------------
                       x                  x
              ----------------------------------------
              => 위 사용처들은 이벤트 처리
                 onclick
                 onmouseover / onmouseout
                 onkeyup     / onkeydown
                 => 사용자 정의 함수를 주로 이용
       = 5. 태그 선택 (객체 모델)
       = 6. 객체 (배열 / JSON)
       = 이벤트 처리
       = 내장 객체 (브라우저 객체 , 일반 객체)
                              -------- String / Date / Number
       = Jquery 이용해서 처리
         ------ 자바스크립트 기반
         => JSP / Spring / Spring-Boot => 자바
--%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
let login=function(){
	
	
}window.onload=function(){
	document.write("login="+typeof+)
	
}
</script>
</head>
<body>

</body>
</html>