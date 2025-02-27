<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
/*
 *  이벤트
       => 함수 호출 / 아래 두 가지중 하나를 선택한다.
       
       let btn=document.querySelector("#id")
       btn.onclick=function(){}
        $('#id명').click(function(){})
       => 고전 이벤트 처리
       => 이벤트 리스너
       let btn=document.querySelector("#id")
       btn.addEventListener('click',function(){처리})
       이벤트리스너 $('#id명').on('click',function(){})
                ----------                      --
                   |선택하면                       |여기서 처리한다
 */
$(function(){
	$('#count').change(function(){
		let count=$(this).val() // 밸류값 위치 <input> <select> <textarea> 이것들도 전부다 value값을 가져와야한다 val=value
		//alert(count)
		let price=$('#price').text()// <span></span> <td>sss</td>
		// <a href=""> <img src=""> => attr()
		// val("admin") val() 매개변수가 있는순간 값을 넣는것이고 매개변수가 없으면 값을 읽어오는것이다.
		//alert(price) 위에 프라이스값 가져오는지 처리
		price=price.replace(',','');
		price=price.replace('원','');
		//alert(price) 리플레이스 처리 확인
		let total=count*price //val 과 금액 곱하기
		//alert(total) 위 문장 확인
		$('#total').text(total.toLocaleString()+"원")
		
		/*
		  글자 조작 
		  -------
		    val() / text() / html() attr() / append()
		    -----   ------   -----
		                     html까지 가져옴
		            모든 태그
		            <태그>여기 값을 읽음</태그>
		    value값으로 채우는 태그
		    <input> <select>
		    <textarea>
		   
		    $('span h1').text() => Hello
		    $('span h1').html() => <h1>Hello</h1>
		    <span>
		      <h1>Hello</h1>
		    </span>
		    
		    <p>
		       <h1>Hello2</h1>
		    </p>
		*/
	})
})
</script>
</head>
<body>
   <div class="container">
    <div class="row">
     <span id="price">30,000원</span>
     <select class="input-sm" id="count">
       <option value="1">1개</option>
       <option value="2">2개</option>
       <option value="3">3개</option>
       <option value="4">4개</option>
       <option value="5">5개</option>
     </select>
     <br>
     총금액:<span id="total"></span>
    </div>
   </div>  
</body>
</html>