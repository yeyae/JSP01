<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
	int num1;
	int num2;
	int result;
	
	public int multiply(int a, int b){
		return a*b;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- 실행문 --%>
	<% 
		num1 = 5;
		num2 = 3;
		result = multiply(num1,num2);
		// out : 출력에관한 기능을 가지고 있는 객체 JSP 내장 객체
		out.print(num1 + " x " + num2 + " = " + result);
	%>
	<%= result %>
</body>
</html>