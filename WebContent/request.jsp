<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--
		클라이언트가 요청을 한다. ( 사용자가 요청을 한다.) ==>
		서버가 요청정보를 확인하고 응답을 만들어 낸다.
		JSP 내에서 요청 정보를 제공하는 객체 : request
	 --%>
	 클라이언트 IP  = <%=request.getRemoteAddr() %>
	 요청정보 길이 = <%=request.getContentLength() %>
	 요청정보 전송방식 = <%=request.getMethod() %>
	 요청 URI = <%=request.getRequestURI() %>
	 컨텍스트 경로 = <%=request.getContextPath() %>
	 <%-- 컨텍스트 경로 : jsp가 속한 웹 어플리케이션의 경로 --%>
	 <%-- 문맥 : 프로그램 실행되고 있는 환경 --%>
</body>
</html>