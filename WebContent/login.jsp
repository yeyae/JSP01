<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 페이지</title>
</head>
<body>
	<form action="loginCheck.jsp" method="POST"> 
		<div>아이디 : <input type="text" name="userid"></div>
		<div>비밀번호 : <input type="password" name="userpw"></div>
		<input type="submit" value="로그인">
	</form>
</body>
</html>