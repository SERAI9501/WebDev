<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
     자바스크립트는 브라우저에서 실행 => 인터프리터 => 에러출력(X)
       => 개발자 도구
       
       1. 변수 => 대입값에 따라 데이터형이 변경
          let (지역변수)/ const (상수)
          => number : 숫자형 (int , double)
          => string : 문자형 (char, string)
          => object : 배열 / 객체
                      []    {} => JSON
          => function : 함수
       2. 연산자
          => 단항연산자
             1) 중감연산자 ++,--
             2) 형변환연산자
                숫자변환 : Number("10") , parseInt("10")
                문자변환 : String(10) => "10"
                논리변환 : Boolean(1) > true
                         Boolean(0) > false
                         0,0.0이 아닌 수는 true
                         null 이 아닌 경우 true // 문자열에서 null이 이면 false
                => HTML 태그에서 읽는 값 => String
                   ---------------------------
           => 이항연산자
              산술연산자 : + , /
                       --- ---
                           0으로 나누면 오류표현으로 Infinity로 표현된다. , 정수/정수=실수
                       문자열 결합 (덧셈) 으로 가능하다
              비교연산자 : 결과값이 무조건 true
                        문자 / 숫자 / 날짜 => 비교가능
                        == , != , < , > , <= , >=
                        -------
                        엄격한 기준 => 권장 사항
                        === , !==
                        
                        5=='5' => true
                           --- 자동으로 parseInt(5)로 변환이라서 true
                        5==='5' => false
                            --- 변환없이 string그대로 받아서 false
               논리연산자 : &&(범위 포함) . ||(포함 안된 범위)
               대입연산자 : =, +=, -=
               삼항연산자 : (조건) ? 값1:값2
                          true => 값1
                          false => 값2
               => 문자열 결합 / 상품 갯수 => 총합(오라클)
               => 모든 처리 => 자바(서버)
               => 자바스크립트/HTML => 출력
                            ---- 데이터 변경이 어렵다 값을 넣어주면 변경이 어렵다 (정적페이지) 라 한다
                  -------- 자바스크립트는 데이터 변경이 가능하다 (동적페이지) 라 한다
         3. 제어문
            조건문 : if
              단일조건문
              if(조건문)
              {
                조건이 true일때 처리
              }
              선택조건문
              if(조건문)
              {
                조건이 true일때 처리
              }
              else
              {
                조건이 false일때 처리
              }
            반복문 : for / for-each
              => 일반 for
                          1    2    4
                 for(let i=0;i<=10;i++)
                 {
                   반복수행문 3
                 }
                 1-2-3-4
                 2-3-4
                 ...
                 -false면 종료
               => for-each => 배열일 경우에만 사용이 가능
                  for(변수 in 배열)
                      -- 배열의 index 번호 => 0
                  for(변수 in 객체)
                      --- 객체의 key값을 받는다
                  let arr=[1,2,3,4,5]
                  for(let i in arr)
                      --- 0,1,2,3,4 이렇게 인덱스 값을 받는거지 실제 값을 받는 것은 아니다
                  let sa={sabun:1,name:"",sex:""} => []배열이고 {}이 괄호면 객체다.
                  for(let key in sa)
                      ------- sabun , name , sex
                  ------------------------------- 위 아래로 보면 in은 인덱스 번호이고 of는 실제 값이다.
                  for(변수 of 배열)
                      --- 배열의 실제 저장된 값
                  let arr=[1,2,3,4,5]
                  for(let i of arr)
                      ----- 1,2,3,4,5
                =>forEach
                배열.forEach(function(value){})
                           ----------------
                           callback => 자동실행되는 함수
                let arr=[1,2,3,4,5]
                arr.forEach(function(value){})
                                     ------ 1,2,3,4,5
                =>map (******)
                배열.map(function(value){})
                           ----------------
                           callback => 자동실행되는 함수
                let arr=[1,2,3,4,5]
                arr.map(function(value){})
                                 ------ 1,2,3,4,5
                                 
            반복제어문 : break : 반복분 중단 => 출력 갯수를 정해ㅅ
                              서버에서 전송
         4. 함수 : 기능처리 (이벤트:사용자가 행위를 했을때
                                 => 사용자 요청에 대한 처리
                                 => 브라우저에서만 작동)
                          키보드 , 마우스 를 사용할때 발생하는 것들
                           onclick / onmouseover = 클릭시 / 마우스를 위에 뒀을때
                           onchange / onmouseout
                           onkeydown / onkeyup...
            => 함수 생성 방법
               선언적 함수
               => 리턴형 서술이 없다 
               => 매개변수에 변수명 설정 (name) => (let name)(X)
               function 함수명(매개변수)
               {
                  function 함수명() = 이렇게 안에 표현이 불가하다
               }
               익명의 함수 (*****) 
               let 함수명=function(){}
               let 함수명=()=>{}
               
               => 사용자 정의 함수 => 그래서 자동호출이 불가능하다
                  => 언제 호출 할지 지정해야한다.
            ------------------------------------------
                     리턴형             매개변수
            ------------------------------------------
                       o                o
            사용하는 방법  function func(name)
                       {
                          retrun name 
                       }
                      
                      let name=func("홍길동")
            ------------------------------------------
                       o                x
                       function func()
                       {
                           return ""
                       }
                       
                       let msg=func()
            ------------------------------------------
                       x                o
                       function func(name)
                       {
                          ....
                       }
                       
                       func("홍길동")
            ------------------------------------------
                       x                x
                       function func()
                       {
                       }
                       
                       func()
            ------------------------------------------
            버전에 따른 권장사항 : '=>' (화살표함수 이용)
                              --- function / return 제거 : 람다식(함수포인터)
            function func(){}
            let func=function(){}
            let func=()=>{} *** 위의 것이 아래 처럼 바꾸는것을 권장으로 한다
       5. 배열 / 객체
                --- {}(JSON) ==> 서버에서 값 전송
                    => 자바 : VO
                    
                    let a={aa: ,bb:}
                       => a.aa a['aa']
                       => a.bb a['bb']
          --- []	=> 자바 : List
              -- 값 추가 : push() , 자르기 : slice()
              -- 값 제거 : pop
       6. 객체 문서 모델
          =>HTML태그를 선택해서 가져온다(제어한다)
            ------------
            이벤트 처리
            속성값 변경
            CSS 적용
            
            *** HTML파일 => 전체를 가지고 있는 객체 = document
            태그 1개
              = document.getElementById(아이디명)
              = document.querySelector(CSS의 Selector)
                                       --------------
                                       화면 디자인
                                       태그 선택
                                       크롤링
            태그 여러개
              = document.getElementByClassName(클래스명)
              = document.getElementByTagName(태그명)
              = document.querySelectorAll(클래스명/태그명) <- 클래스명이나 태그명을 가져올때 쓴다
             
            => Jquery
               $('태그,아이디명,클래스명')
            => Vue => <a href=""> : 양방향 통신 : 입력 = 출력을 동시에 출력
                 $refs.id
            => React => target.id : 단방향 통신 : 입력/출력 둘 중 선택함
               Next
       7. 이벤트 등록
       8. 내장객체
          내장객체
          브라우저 내장 객에
         --------------- 라이브러리화 : JQuery
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
/*
 *  Jquery = $(function)
    Vue = mounted(){}
    React = componentDidMount(){}
 */
window.onloade=function(){
/*	 let h1=document.getElementById("h1")
	 console.log("h1="+typeof h1)
	 
	 h1.style.backgroundColor='yellow'*/
	 
	 //let h1=document.querySelector("h1")
	 //style.backgroundColor='pink'
	 
	 let h1=document.querySelectorAll("h1")  //배열로 들어간다
	 h1[0].style.backgroundColor='yellow'
	 h1[1].style.backgroundColor='pink'
	 
	 let h2=document.querySelector("h2")
	 h2.style.color='red'
 }
</script>
</head>
<body>
	<h1>Hello JavaScript-1</h1>
	<h2>Hello JavaScript-2</h2>
	<h1 id="h1">Hello JavaScript-3</h1>
</body>
</html>