<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
th {
	text-align: center;
}
table {
	border-color: #228B22;
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
<table border="3" width="800px" height="200px" align="center">
<caption><h1 style="text-align: center; color: #228B22;">회원 정보 출력</h1></caption>
<tr>
   <th>아이디</th> <th>패스워드</th> <th>이름</th> <th>전화번호</th>
   <th>성별</th> <th>거주지</th> <th>취미</th> <th>인사말</th>
</tr>
<c:forEach items="${memberlist}" var="mm">
<tr>
   <td>${mm.id}</td>
   <td>${mm.pw}</td>
   <td>${mm.name}</td>
   <td>${mm.phone}</td>
   <td>${mm.sb}</td><!-- 성별 -->
   <td>${mm.address}</td><!-- 나이 -->
   <td>${mm.hobby}</td>
   <td>${mm.memo}</td>
</tr>
</c:forEach>
<tr style="text-align: center;">
   <td colspan="12">
   <input type="button" value="메인으로" onclick="location.href='./'">
   </td>
</tr>

</table>
</body>
</html>