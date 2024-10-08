<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
th {
	text-align: center;
}
table {
	border-color: #0078FF;
}
body {
	background-image: url(./image/짱구제목2.jfif);
	background-size: cover;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form>
<table border="3" width="600px" align="center">
<caption><h2 style="text-align: center; color: #0078FF;">${dto.writer}님의 도서자료정보</h2></caption>
<tr>
<th>책소개</th>
<td><textarea rows="10" cols="25">
${dto.content}
</textarea></td>
</tr>
<tr>
<th>표지</th>
<td>
<img alt="" src="./image/${dto.cover}" width="200px" height="150px">
</td>
</tr>
</table>
</form>
</body>
</html>