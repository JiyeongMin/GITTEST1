<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">WebSiteName</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">도서관리<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="bin">도서자료입력</a></li>
          <li><a href="bookout">도서자료출력</a></li>
          <li><a href="mout">회원자료출력</a></li>
          <li><a href="search">도서자료검색</a></li>
        </ul>
      </li>
      
    </ul>
    
    
    <ul class="nav navbar-nav navbar-right">
    <c:choose>
    	<c:when test="${loginstate==true }">
    		<li><a href="#"><span class="glyphicon glyphicon-user"><Strong style="color: lime;">${login10.id }</Strong>님 안녕하세요.</span></a></li>
      		<li><a href="logout"><span class="glyphicon glyphicon-log-out"></span>로그아웃</a></li>
    	</c:when>
    	<c:otherwise>
      		<li><a href="login"><span class="glyphicon glyphicon-log-in"></span>회원가입 및 로그인</a></li>
    	</c:otherwise>
    </c:choose>
    </ul>
  </div>
</nav>
</body>
</html>