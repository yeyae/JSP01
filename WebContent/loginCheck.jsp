<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = request.getParameter("userid");
	String pw = request.getParameter("userpw");
	
	if(id != null && id.equals("user")) {
		// 사용자의 id는 user 라고 가정
		// 아이디는 맞다
		if(pw != null && pw.equals("1234")) {
			// 비밀번호도 맞다
			//out.print("로그인 성공!");
			// tag 를 써야할때는 write()
			
			// 로그인 성공시 페이지 이동
			//response.sendRedirect("success.jsp");
			// sendRedirect(이동할주소) => 페이지를 이동합니다.
			// 브라우저가 요청을 새로 만들어서 url 이 바뀐다.
			// 요청정보 응답정보가 사라진다.
					
			// jsp객체에 속성 추가하기
			request.setAttribute("msg", "로그인 성공!");
			
			// dispatcher.forward() : 브라우저랑 상관없이 서버 내부에서 화면을 전환
			// 현재 요청정보, 응답정보를 그대로 유지 하고 화면만 전환
			// 파라미터 정보를 유지한 채로 화면을 전환하고싶다?? => forward()
			// 파라미터 필요 없다. => redirect()
			RequestDispatcher dispatcher
			= request.getRequestDispatcher("success.jsp");
			dispatcher.forward(request, response);
		} else {
			// 비밀번호가 틀렸다.
			//out.print("비밀번호가 틀렸습니다.");
			
			// 비밀번호 틀렸을시 페이지 이동 
			// loginFail.jsp
			// 로그인 실패
			// 실패 원인을 출력
			request.setAttribute("msg", "비밀번호가 틀렸습니다.");
			
			RequestDispatcher dispatcher
			= request.getRequestDispatcher("loginFail.jsp");
			dispatcher.forward(request, response);
		}
	} else {
		// 아이디가 틀렸다.
		//out.print("아이디가 틀렸습니다!");
		
		// 아이디 틀렸을시 페이지 이동
		// loginFail.jsp
		// 로그인 실패
		// 실패 원인을 출력
		request.setAttribute("msg", "아이디가 틀렸습니다.");
		
		RequestDispatcher dispatcher
		= request.getRequestDispatcher("loginFail.jsp");
		dispatcher.forward(request, response);
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 체크</title>
</head>
<body>
	아이디 : <%=id %><br>
	비밀번호 : <%=pw %><br>
</body>
</html>