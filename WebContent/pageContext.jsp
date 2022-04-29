<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pageContext</title>
</head>
<body>
<%-- 우리가 사용하는 기본 객체인 request, pageContext에서 얻어온 request 객체 비교 --%>
<% 
	HttpServletRequest httpRequest = (HttpServletRequest)pageContext.getRequest(); 
%>
request 기본 객체와 pageContext를 통해 가져온 request 객체 비교 : <%= request == httpRequest %>
<br>
<%-- out 객체를 pageContext에서 가져오기 --%>
<% pageContext.getOut().println("안녕하세요!"); %>
<%-- pageContext객체를 통해서 다른 기본 객체에 접근할수 있다. --%>
</body>
</html>