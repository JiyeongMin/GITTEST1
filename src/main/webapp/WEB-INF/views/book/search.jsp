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
<form action="searchsave" method="post">
<table border="3" width="500px" align="center">
<caption><h2 style="text-align: center; color: #0078FF;">도서자료정보검색</h2></caption>
<tr>
<th>구분</th>
<td>
<select name="key">
    <option value="bookname">도서명</option>
    <option value="writer">저자명</option>
    <option value="content">도서내용</option>
</select>
</td>
</tr>
<tr>
<th>검색값</th>
<td><input type="text" name="svalue"></td>
</tr>


<tr style="text-align: center;">
<td colspan="2">
<input type="submit" value="검색">
<input type="reset" value="취소">
</td>
</tr>
</table>
</form>
</body>
</html>