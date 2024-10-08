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
<form action="booksave" method="post" enctype="multipart/form-data">
<table border="1" width="500px" align="center">
<caption><h1 style="text-align: center; color: #0078FF;">도서정보입력</h1></caption>
<tr>
   <th>도서명</th>
   <td><input type="text" name="bookname" placeholder="도서명을 입력하세요"></td>
</tr>

<tr>
   <th>저자명</th>
   <td><input type="text" name="writer" placeholder="저자명을 입력하세요"></td>
</tr>

<tr>
   <th>출판사</th>
   <td><input type="text" name="bookcompany" placeholder="출판사를 입력하세요"></td>
</tr>

<tr>
   <th>가격</th>
   <td><input type="number" name="price" placeholder="가격을 입력하세요"></td>
</tr>

<tr>
   <th>출판일자</th>
   <td><input type="date" name="bookdate"></td>
</tr>


<tr>
   <th>도서내용</th>
   <td><textarea rows="5" cols="10" name="content" placeholder="도서내용을 입력하세요"></textarea> </td>
</tr>

<tr>
   <th>표지</th>
   <td><input type="file" name="cover"></td>
</tr>

<tr>
   <td colspan="2" class="a1">
      <input type="submit" value="전송">
      <input type="reset" value="취소">
   </td>
</tr>
</table>
</form>
</body>
</html>