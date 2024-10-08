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
	border-color: #FF9100;
}
body {
	background-image: url(./image/짱구제목2.jfif);
	background-size: cover;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
input[type="text"]{
width: 100%;
height: 40px;
border: none;
outline: none;
}
input[type="password"]{
width: 100%;
height: 40px;
border: none;
outline: none;
}
th{
text-align:center;
background-color: #eee;
}
</style>
</head>
<body>
<form action="loginsave" method="post">
<table border="1" width="300px" align="center">
<caption><h2 style="text-align: center; color: #FF9100;">로그인</h2></caption>
<tr>
	<th>아이디</th>
	<td><input type="text" name="id"></td>
</tr>
<tr>
	<th>비밀번호</th>
	<td><input type="password" name="pw"></td>
</tr>
<tr style="text-align:center">
	<td colspan="2">
		<input type="button" value="회원가입" onclick="location.href='min'">
		<input type="submit" value="로그인">
		<input type="button" value="메인" onclick="location.href='./'">
	</td>
</tr>
</table>
</form>
</body>
</html>