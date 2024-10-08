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
<table border="1" width="800px" align="center">
<caption><h1 style="text-align: center; color: #0078FF;">도서자료출력</h1></caption>
<tr>
   <th>도서번호</th>
   <th>도서명</th>
   <th>저자명</th>
   <th>출판사</th>
   <th>출판일자</th>
   <th>가격</th>
   <th>조회수</th>
   <th>삭제/수정</th>
</tr>
<c:forEach items="${list }" var="book">
<tr>
   <td>${book.booknumber }</td>
   <td>
   <a href="detail?number=${book.booknumber}">${book.bookname}</a>
   </td>
   <td>${book.writer }</td>
   <td>${book.bookcompany }</td>
   <td>${book.bookdate }</td>
   <td>${book.price }</td>
   <td>${book.breadcnt}</td>
   <td>
   <a href="delete?number=${book.booknumber}">삭제</a>
   <a href="update?number=${book.booknumber}">수정</a>
   
   </td>
</tr>
</c:forEach>
</table>
</body>
</html>