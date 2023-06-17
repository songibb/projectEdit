<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link href="../../css/board.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<jsp:include page="mypageMenu.jsp"></jsp:include>
	</div>

	<section class="notice">
		<div class="page-title">
			<div class="container">
				<h3>찜한 상품</h3>
			</div>
		</div>


		<div id="board-list">
			<div class="container">
				<table class="board-table">
					<thead>
						<tr>
							<th scope="col">이미지</th>
							<th scope="col">카테고리</th>
							<th scope="col"></th>
							<th scope="col">제목</th>
							<th scope="col">작성자</th>
							<th scope="col">거래상태</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${heartList}" var="h">
							<tr>
								<td>이미지</td>
								<td>${h.productCategory}</td>
								<td>${h.productInfo}</td>	
								<td><a href="#">${h.productTitle}</a></td>
								<td>${h.productWriter}</td>
								<td>${h.productState}</td>
							</tr>
						</c:forEach>
						<c:if test="${empty heartList}">
							<tr>
								<td colspan='6'>관심 상품이 없습니다.</td>
							</tr>
						</c:if>
					</tbody>
				</table>
			</div>
		</div>
		
	</section>
	
</body>
</html>