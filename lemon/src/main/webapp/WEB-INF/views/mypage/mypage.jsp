<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
ul {
	list-style-type: none;
}
ul li {
	margin: 10px;
}

#left{
	float: left;
}



</style>
</head>
<body>
	<div align="center">
		<div><h1>마이페이지</h1></div>
		<div>
			<div class="top">
				<ul>
					<li><a href="#">${name}</a></li>
					<li><a href="#">${grade}</a></li>
					<li><a href="memberUpdateForm.do">회원정보수정</a></li>
				</ul>
			</div>
	
			<div id="left">
				<jsp:include page="mypageMenu.jsp"></jsp:include>
			</div> 
		</div>
	</div>
</body>
</html>