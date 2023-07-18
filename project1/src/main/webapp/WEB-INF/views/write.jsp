<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/write.css">
<!-- include libraries(jQuery, bootstrap) -->
<link href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<!-- include summernote css/js -->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
</head>
<body>
<%@ include file="menu.jsp" %>
	<div class="write-div">
	<h1>글쓰기</h1>
	<input type="text" name="title">
	<textarea name="context"></textarea>
	<button class="btn" type="submit">글쓰기</button>
	</div>
	<script type="text/javascript">
	/* 제이쿼리문법 이 jsp파일이 모두 읽어졌다면 익명함수를 실행해주세요.*/
	/* 텍스트아리아에 서머노트를 실행해주세요 */
	$(document).ready(function() {
		  $('#summernote').summernote({
			  height: 400
		  }
		});
	</script>
	
</body>
</html>