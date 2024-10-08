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
	border-color: #228B22;
}
body {
	background-image: url(./image/짱구제목2.jfif);
	background-size: cover;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
   $("#idoverlapcheck").click(function(){
      var id=$("#id").val();
      $.ajax({
         type:"post",
         url:"idoverlapcheck2",
         data:{"id":id},
         async:true,
         success:function(data){
            if(data=="notduplicated"){
               alert("사용 가능한 아이디입니다.")
            }
            else
               {
               alert("사용할 수 없는 아이디입니다. 다른 아이디를 입력해주세요.")
               }
         }
      });
   });
});
</script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="membersave" method="post">
<table border="3" width="800px" height="200px" align="center">
<caption><h2 style="text-align: center; color: #228B22;">회원가입</h2></caption>
<tr>
   <td colspan="2">
   환영합니다. 아래 자료를 입력 후 '회원가입' 버튼까지 눌러야 최종 전송이 됩니다.
   </td>
</tr>
<tr>
   <th>아이디</th>
   <td>
   <input type="text" name="id" placeholder="아이디" id="id">
   <input type="button" value="ID중복확인" id="idoverlapcheck">
   </td>
</tr>
<tr>
   <th>패스워드</th>
   <td><input type="text" name="pw" placeholder="패스워드"></td>
</tr>
<tr>
   <th>이름</th>
   <td><input type="text" name="name" placeholder="이름"></td>
</tr>
<tr>
   <th>전화번호</th>
   <td>
   <input type="text" name="phone" placeholder="전화번호">
   </td>
</tr>
<tr>
	<th>성별</th>
	<td>
	<input type="radio" name="sb" value="남자">남
	<input type="radio" name="sb" value="여자">여
	</td>
</tr>
<tr>
	<th>거주지</th>
	<td><input type="text" name="address" placeholder="주소"></td>
</tr>
<tr>
	<th>취미</th>
	<td>
	<input type="checkbox" name="hobby" value="여행">여행
	<input type="checkbox" name="hobby" value="카페">카페
	<input type="checkbox" name="hobby" value="맛집">맛집
	<input type="checkbox" name="hobby" value="운동">운동
	<input type="checkbox" name="hobby" value="독서">독서
	</td>
</tr>
<tr>
	<th>인사말</th>
	<td><textarea rows="15" cols="15" name="memo" placeholder="인사말"></textarea></td>
</tr>
<tr style="text-align: center;">
   <td colspan="2">
      <input type="submit" value="회원가입">
      <input type="reset" value="취소">
   </td>
</tr>

</table>
</form>
</body>
</html>