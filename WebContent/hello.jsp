<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%-- 자바 패키지 --%>
<!DOCTYPE html>
<%!
	// 선언부
	// 자바 메서드(함수) 를 만드는 곳
	// 또는 변수도 선언이 가능
	int sumNum;
	
	public int sum(int num){
		int sum = 0;
		for(int i=1; i<=num; i++){
			sum += i;	
		}
		return sum;	
	}
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--
	스크립트릿(scriptlet) <% %> => 자바코드 실행만
	표현부(expression) <%= %> => 출력
	선언부(declaration) <%! %> => 서블릿의 메소드, 변수 선언
	JSP : Java Servlet Page / Java Server Page
	두수의 곱을 구하는 함수를 선언부에 작성
	스크립트릿을 통해 두수를 선언, 그리고 곱하기 함수를 실행
	표현부를 통해서 그 결과를 페이지에 출력해봅시다.
 --%>
	<h1>Hello!</h1>
	오늘의 날짜는 : <%= new Date() %> <%-- 표현식 (페이지에 직접 출력) --%>
	<hr/>
	<%  
		int sum10 = 0;
		
		sum10 = sum(10);
	
	%> <%--  스크립트릿 (자바 코드를 실행) --%>
	1부터 10까지의 합은
	<%= sum10 %>
	
	<%-- JSP 주석처리 
		JSP 파일에서는 <%= %> 이 표현식 사이에 자바코드를 삽입해서 사용가능
	--%>
</body>
</html>