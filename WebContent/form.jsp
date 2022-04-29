<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>폼 생성</title>
</head>
<body>
	<form action="viewParameter.jsp" method="get">
	<!-- 입력한 데이터를 전달할 경로 : viewParameter.jsp -->
	<!-- 입력한 데이터를 보내는 방법 : post 
		get : url 주소에 파라미터가 노출
		post : url 주소에 파라미터 노출 x 숨겨서 전달
	-->
		이름 : <input type="text" name="name"><br>
		주소 : <input type="text" name="address"><br>
		좋아하는 동물 :
			<input type="checkbox" name="pet" value="dog">강아지
			<input type="checkbox" name="pet" value="cat">고양이
			<input type="checkbox" name="pet" value="pig">돼지
			<br>
			<input type="submit" value="전송">
	</form>
	<a href="viewParameter.jsp?name=신민석&address=서울">링크</a>
</body>
</html>