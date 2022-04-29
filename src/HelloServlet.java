import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello") // "/hello" 주소로 들어오는 요청을 처리하는 서블릿이다.
public class HelloServlet extends HttpServlet {
	// 서블릿의 역할 => 요청을 받아서 처리
	// 서블릿이 처리하는 요청의 종류 : get, post
	// <form method="get">
	// get 요청은 url 주소에 요청에대한 정보가 노출(파라미터)
	// post 는 노출이 안된다.
	// 요청을 처리하는 전용 메소드
	// get => doGet 메소드
	// post => doPost 메소드
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 사용자가 보낸 get 요청을 받아서 처리하는 메소드
		// HttpServletRequest ==> request(사용자의 요청)에 대한 정보를 담고있는 객체
		// HttpServletResponse ==> response(사용자에게 응답)에 대한 정보를 담고있는 객체
		
		// 응답에 어떤 출력을 내보내겠다.
		PrintWriter pw = resp.getWriter();
		// 응답 인코딩 설정
		resp.setCharacterEncoding("UTF-8");
		pw.print("<h1>Hello!</h1>");
		pw.print("<br/>");
		pw.print("<hr/>");
	}
	
}
