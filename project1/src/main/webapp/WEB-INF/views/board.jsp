<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./resources/css/board.css">
</head>
<body>
	<h1>보드</h1>
	<img alt ="" src="./img/edit2.png" height="100px">
	<a href="./">index로 가기</a>
	<table>
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>글쓴이</th>
				<th>날짜</th>
				<th>좋아요</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="row">
			<!-- 온클릭 자바스크립트 페이지 이동 url?파라미터=값 -->
				<tr onclick = "location.href='./detail?bno=${row.bno }'">
					<td class="td1">${row.bno}</td>
					<td class="title">${row.btitle}</td>
					<td class="td1">${row.bwrite}</td>
					<td class="td2">${row.bdate}</td>
					<td class="td1">${row.blike}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>