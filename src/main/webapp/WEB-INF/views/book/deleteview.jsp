<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<c:forEach items="${list}" var="dd">
<form action="delete2" method="post" >
<table border="1" width="800px" align="center">
<caption><h2 style="text-align: center; color: #0078FF;">삭제할 도서정보</h2></caption>
<tr>
   <th>도서번호</th>
   <td><input type="text" name="booknumber" value="${dd.booknumber}" readonly></td>
</tr>
<tr>
   <th>도서명</th>
   <td><input type="text" name="bookname" value="${dd.bookname}" readonly></td>
</tr>

<tr>
   <th>저자명</th>
   <td><input type="text" name="writer" value="${dd.writer}" readonly></td>
</tr>

<tr>
   <th>출판사</th>
   <td><input type="text" name="bookcompany" value="${dd.bookcompany}" readonly></td>
</tr>

<tr>
   <th>가격</th>
   <td><input type="number" name="price" value="${dd.price}" readonly></td>
</tr>

<tr>
   <th>출판일자</th>
   <td><input type="date" name="bookdate" value="${dd.bookdate}" readonly></td>
</tr>


<tr>
   <th>도서내용</th>
   <td><textarea rows="5" cols="10" name="content" readonly>${dd.content}</textarea> </td>
</tr>

<tr style="text-align: center;">
   <td colspan="2">
      <input type="submit" value="삭제완료">
      <input type="button" value="삭제취소" onclick="location.href='bookout'">
   </td>
</tr>
</table>
</form>
</c:forEach>
</body>
</html>