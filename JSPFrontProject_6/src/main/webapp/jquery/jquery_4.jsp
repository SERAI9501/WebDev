<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
     script = 단순한 이런 의미가 있다.
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
/*
   id/ class 구분이 없는 경우
   input / select / textarea => 속성선택자
   img / table / li / dl => eq() => 0번부터 순차적
                            --- nth-child() => 1번부터 시작
                            
    table => 댓글 => tr에 id를 부여하는게 좋다 제어하기 편하다
*/
</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
let bCheck=true
$(function(){
	//$('tr:nth-child(2)').hide()
	$('tr:eq(1)').hide()
	//  click(function(){}) 온클릭대신 이것으로 대체도 가능하다
	$('.btn-sm').on('click',function(){
		if(bCheck===true)
		{
			$('tr:eq(1)').show("slow")
			$(this).val('취소')
			bCheck=false
		}
		else
		{
			$('tr:eq(1)').hide("slow")
			$(this).val('삭제') // value값 변경
			bCheck=true
		}
	})
})
</script>
</head>
<body>
  <div class="container">
   <div class="row">
     <h3 class="text-center">show/hide</h3>
     <table class="table">
      <tr>
       <td class="text-right">
        <input type=button value="삭제" class="btn-sm btn-danger">
       </td>
      </tr>
      <tr>
       <td>
         비밀번호:<input type=password size=20 class="input-sm">
       </td>
      </tr>
     </table>
   </div>
  </div>
</body>
</html>