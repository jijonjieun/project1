<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style type="text/css">
body {
	margin: 0;
	padding: 0;
}

nav {
	position: fixed;
	top: 0;
	width: 100%;
	height: 50px;
	background-color: gray;
}

nav ul {
	margin: 0;
	padding: 0;
}

nav li {
	life-style: none; /* li앞에 원을 없애줍니다. */
	float: left;
	width: 100px;
	height: 50px;
	line-height: 50px;
	text-align: center;
}

nav li:hover {
	background-color: blue;
	color: white;
}
</style>
<nav>
	<ul>
		<li onclick="link('index')">메인</li>
		<li onclick="link('board')">게시판</li>
		<li onclick="link('board2')">게시판2</li>
		<li onclick="link('notice')">공지</li>
		<li onclick="link('board')">건의</li>
		<li onclick="link('board')">방명록</li>
	</ul>
	<div style="height: 50px; width: 100%;"></div>
	<script>
	function link(url){
		location.href="./"+url;
	}
	</script>
</nav>
</html>