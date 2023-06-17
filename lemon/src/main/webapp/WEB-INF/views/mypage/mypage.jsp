<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="../../css/board.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#box{
	display: flex;
	justify-content: center;
}
.container{
	display: flex;
	justify-content: space-between;
	align-items: center;

}
.contaier a {
	margin: 50px;
	padding: 50px;
}

</style>
</head>
<body>
	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3>마이페이지</h3>
			</div>
		</div>
	
		<div id="box">

			<div>
				<jsp:include page="mypageMenu.jsp"></jsp:include>
			</div> 
			
			
			<div id="board-list">
				<div class="container">
				<a href="#">${name}</a>
				<a href="#">${grade}</a>
				<a href="memberUpdateForm.do">회원정보수정</a>
				</div>
			</div>
			
		</div>
	
	
	</section>
</body>
</html>