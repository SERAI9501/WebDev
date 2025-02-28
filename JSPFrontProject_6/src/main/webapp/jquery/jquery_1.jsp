<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
      Jquery / Vue (Vuex(MVC)) / React (React-Query,Redux(MVC))
         => 문서 객체 = 태그를 제어하는 프로그램 => 태그를 선택후에 처리
         => 태그에 대한 이벤트 처리 (효과주는 것)
		 => DOMScript라고도 불린다.
		 => 단점 : 데이터가 없다는 단점이 있다 (데이터를 서버에서 가져온다)
		                                       -- 오라클 연결
		 => 출력 (MVC => View)
		 => 장점 : 출력 속도가 빠르다
         1. CSS 선택자
            $('선택자') , 뷰 같은경우 => <button ref="">
                       React      => e.target
               선택자
               ----
                1) 태그 => $('태그명').함수()
                                    ----- 값 설정
                                    val("값넣기")
                                    text("값넣기") / html("값넣기") / attr("값넣기") / append("값넣기")
                                    ----- 값 읽기
                                    val() / text() / html() / attr()
                                    ----- 이벤트 처리
                                          -------- 모든 태그에 이벤트 가능
                                    $(선택자).click(function(){})
                                    $(선택자).on('click'.function(){}) // 리스너
                                    => mouseup / mousedown
                                    => keyup / keydown
                                    => hover
                                    => change
              2) ID (속성값) => $('#아이디명')
              3) CLASS (속성값) => $('.클래스명')
              4) 자손 : $('태그명(id,class) > 태그명(id,class)')
                 후손 : $('태그명(id,class) 태그명(id,class)')
                 => 목록 출력
                     <table> , <ul> , <dl> => id,class를 부여하지 않는다
                 <div>
                   <h1></h1> => 자손
                   <div>
                     <h1></h1> => 후손
                   </div>
                 </div>
              5) 속성선택자 =>
                         $('태그명[속성=값]') = a, img , input 인 경우가 많다
                               = equals
                         $('태그명[속성$=값]') = endsWith
                         $('태그명[속성^=값]') = startsWith
                         $('태그명[속성*=값]') = contains
                         xpath= 소속값을 다 적어줘야한다 (셀레니움에서 많이 쓰인다)
                          xpath는 파이썬에서 주로 쓰인다.(숨겨진 태그까지 긁어온다)
              6) 가상선택자 =>
                         nth-child(1번부터시작) / eq(0번부터시작)
                         쓰는 형식 $('태그명:nth-child(odd)')
                                 $('태그명:nth-child(even)')
                                 $('태그명:nth-child(2n+1)')
                                 $('태그명:eq(번호)')
                                 
                       $('') => 내장 객체 , 태그 선택자
         2. 자바스크립트 기본은 알고있어야 한다.
            JSP,Spring,Spring-Boot = 모두 코딩이 Java이다
            Django = Python
            Asp.met = C#
            NextJS/ReactJS/VueJS/Jquery = JavaScript
            
            1. 변수 설정
                let = 지역변수 , const = 상수
                => 일반변수       => function / 배열처리 , 객체처리 주로 쓰임
            2. 데이터형
                number : 숫자 (정수,실수)
                string : 문자 , 문자열
                boolean : true / false
                          숫자 : 0,0.0외에는 true
                          문자 : null이 아닌 경우 true
                object
                  = 배열 [] => 자바에 List랑 호환시켜야한다
                  = 객체 {} => 자바에 VO 호환시켜야한다
                undefined : 데이터값이 없는 경우
                function : 데이텨형으로 취급한다
                           => 매개변수로 사용이 가능하다 = callback 함수라고한다
                           => 이벤트 / react-query / redux
                           예시 map(function(){}),forEach
             연산자
               산술연산자 => / (정수/정수ㅏ
               비교연산자 =>  ==
                           10=='10' == true
                           === (엄격하다)
                           10==='10' ==> false
                형변환 => 
                        Number , parseInt => 문자열 정수형 변경
                        => 데이터 읽기 : 문자열로 읽어 온다 (HTML)
                        문자열 변환 => String(10) =>"10"
                        논리형변경 => Boolean(1) => true
                                   Boolean(0) => false
                                   Boolean('aaa') => true
                                   Boolean(
                                   
                                   
                 for / for-each
                 => 출력
                 일반 for
                 for(let i=0;i<=10;i++)
                 {
                    처리문장
                 }        
                 for(let i in 배열) => i는 인덱스번호
                  [1,2,3,4,5] => i=0,1,2,3,4
                 for(let key in 객체) => key는 key값
                  {name:"",sex:""} key=name,sex
                  
                 for(let vo of 배열)
                         -- 배열의 실제값
                         
                 ***배열.map(function(배열값){})
                 배열.forEach(function(배열값){})   
             제어문
             함수 : 필수 (요청 처리)
                  function func_name(매개변수){}
                    => return형을 사용하지 않는다 , 매개변수는 변수명만 사용
                  => 리턴형이 없는 경우
                  function func()
                  {
                     ...
                     ...
                  }
                  => 리턴형 있는 경우
                  function func()
                  {
                    ...
                    return값
                  }
                  **익명의 함수
                  ----------------------
                  let 함수명=function(){}
                  let 함수명=()=>{}
                  ---------------------- 함수안에 함수추가가 가능한게 좋다
                  ---------------------- Vue/React => 이벤트 처리
                  
                  1. 자바스크립트의 main
                     window.onload=function(){}
                     =>window.onload=()=>{}
                  2. jquery
                     $(function(){})
                     $(document).ready(function(){})
                  3. vue
                     mounted:function(){}
                  4. react
                     componentDidMount()
                     => useEffect()
                     
             내장 함수 : String
                         substring() / substr() => 문자열 자르기
                         indexOf / lastIndexOf => 문자 위치 찾기
                         length() : 문자 갯수
                         split() : 문자분리
                         trim() : 좌우의 공백제거
                         replace() : 문자 변환 
                       Array
                        push() : 배열 데이터 추가
                       Number
                       Date
                       Math
             내장 함수 = String / Array / Number / Date / Math
             브라우저 : window / document / location / his
                     window : open,close,scrollbar조절
                     document : 문서 관리(태그)
                               write / querySelector
                     location : 이동 => href
                     history : 기록 정보 => go,forward,back
         3. 서버연결 => 데이터 가져온다(읽기) = Ajax라고 한다.
            => 1) 로그인 처리 / 회원가입 (아이디 찾기,비밀번호 찾기)
                             아이디 중복체크
            => 2) 검색
            => 3) 추천
            => 4) 예약
            => 입력된 데이터를 유지 => Ajax
               jsp => 서버 jsp초기화 (새로운 jsp 생성)
               login.jsp => 서버 => login.jsp
               ---------           ---------
                   |                   |
                   ---------------------
                             |
                             메모리 주소가 다르다 즉 초기화된다.
            => 5) 채팅 
            
            Jquery  / Ajax , axios
            클라이언트 / 서버연결
                      $ajax({
                        url;''
                        data:{}
                        success:{데이터 받기}
                      })
                        
              => 값읽기 / 값쓰기
                 val() text()
              => 이벤트 => 언제데이터 읽기 / 언제 데이터 쓰기
              
              공부 해야할 것
              1. <input> <select> <textarea>
              2. checkbox
              3. 목록제어
              4. 스크롤제어 (화면이 길어진다면..) => 태그를 이용하는게 아니다 => window객체를 제어한다
              4-1.  약간의 효과
              4-2. show / hide
              4-3. ui => 사용법
                   =>  완성된 곳 : codepen.io에서 가져옴 : 아무거나 가져다 쓰면 템플릿의 구조가 깨진다
              5. 서버연결
 --%>
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
  width: 350px;
}
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	//이벤트 리스너 이용
	//고전 이벤트
	//$('#login').click(function(){})
	// click대신 쓸 수 있는 것들 
	/*
	   change() : 선택이 변경 => <select>
	   mousewown / mouseUP
	   hover
	   keyup / keydown
	   
	   =>이벤트 외에도 $().함수()
	                    --
	                    1. 디가인 변경 : css()
	                    2. 속성 변경 : attr()
	                    3. 값을 읽기 : vla() / text()  /html ()
	                    4. 값을 저장 : val("") / text("")
	                                여러개 출력 : append()
	*/
	$('#login').on('click',function(){
		// $('form').submit() => 데이터 전송 
		// => let formData=new FormData()
		// 1. id 읽기 
		let id=$('#id').val() // input / select / textarea
		if(id.trim()==="")
		{
			// div , td , li ....
			$('#print').html('<font color="red">아이디를 입력하세요</font>')
		    $('#id').focus()
		    return 
		}
		else
		{
			$('#print').text("")
			// text()
		}
		let pwd=$('#pwd').val()
		if(pwd.trim()==="")
		{
			$('#print').html('<font color="red">비밀번호를 입력하세요</font>')
		    $('#pwd').focus()
		    return
		}
		else
		{
			$('#print').text("")
		}
		
		alert("Ajax를 이용한 로그인 처리 수행")
	})
	
	$('#find').click(function(){
		let fd=$('#keyword').val()
		if(fd.trim()==="")
		{
			$('#keyword').focus()
			return
		}
		alert("검색어:"+fd)
		$('#keyword').val("")
	})
	//  =>모든 function에서는 event정보 받기가 가능 
	$('#keyword').keydown(function(e){
		if(e.keyCode===13) // 키종류 13(enter)
		{
			let fd=$('#keyword').val()
			if(fd.trim()==="")
			{
				$('#keyword').focus()
				return
			}
			alert("검색어:"+fd)
			$('#keyword').val("")
		}
	})
})
</script>
</head>
<body>
  <div class="container">
   <div class="row">
     <h3 class="text-center">Login(val()/text())</h3>
     <table class="table">
       <tr>
        <th class="text-center" width=20%>ID</th>
        <td width=80%>
          <input type=text id="id" size=15 class="input-sm">
        </td>
       </tr>
       <tr>
        <th class="text-center" width=20%>PW</th>
        <td width=80%>
          <input type=password id="pwd" size=15 class="input-sm">
        </td>
       </tr>
       <tr>
         <td colspan="2" class="text-center">
          <input type=button class="btn-sm btn-success"
           id="login" value="로그인">
         </td>
       </tr>
       <tr>
         <td colspan="2">
          <span id="print"></span>
         </td>
       </tr>
     </table>
     <h3 class="text-center">Key이벤트</h3>
     <input type=text id="keyword" size=20>
     <input type=button id="find" value="검색"
      class="btn-sm btn-danger">
   </div>
  </div>
</body>
</html>