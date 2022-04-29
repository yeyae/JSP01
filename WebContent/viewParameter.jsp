<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
request 에서 요청한 form 데이터 출력하는 방법
name 파라미터 = <%=request.getParameter("name") %>
address 파라미터 = <%=request.getParameter("address") %>
<% String[] values = request.getParameterValues("pet");  
   if(values != null) {
	   for(int i=0; i<values.length; i++){
			out.write(values[i] + " ");
	   }
   }
%>
</body>
</html>