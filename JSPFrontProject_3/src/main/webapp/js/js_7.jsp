<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

const sawonList()=>{
	console.log(emp)
}
const sawonDetail=(empno)=>{
	let sawon=emp.find(sa=>sa.empno===empno)
	console.log(sawon)
	/*for(let e of emp)
	{
		if(e.empno===empno)
		{
			console.log(e)
			break;
		}
	}*/
}
const sawonInsert()=>{
	emp.push({})
}
window.onload=function(){
	sawonInsert()
	sawonList()
	sawonDetail(7788)
}
</script>
</head>
<body>
let emp[{}]
</body>
</html>