<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단을 출력</title>
</head>
<body>
<%-- 2단부터 9단까지 스크립트를 사용해서 출력해보기--%>
<%
	for(int i=2; i<=9; i++){
		// 2단부터 9단까지
		out.write("<h1>" + i + "단</h1>");
		for(int j=1; j<=9; j++){
			// 곱셈
			out.write( i  + " x " + j + " = " + i*j + "<br>");
		}
	}
%>

<% 
	for(int i=2; i<=9; i++) {
%>
<h1><%=i %>단</h1>
<% 
		for(int j=1; j<=9; j++)  { 
%>
<%=i %> x <%=j %> = <%=i*j %><br>
<%
		}
	}
%>
</body>
</html>