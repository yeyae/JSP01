import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/hello") // "/hello" �ּҷ� ������ ��û�� ó���ϴ� �����̴�.
public class HelloServlet extends HttpServlet {
	// ������ ���� => ��û�� �޾Ƽ� ó��
	// ������ ó���ϴ� ��û�� ���� : get, post
	// <form method="get">
	// get ��û�� url �ּҿ� ��û������ ������ ����(�Ķ����)
	// post �� ������ �ȵȴ�.
	// ��û�� ó���ϴ� ���� �޼ҵ�
	// get => doGet �޼ҵ�
	// post => doPost �޼ҵ�
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// ����ڰ� ���� get ��û�� �޾Ƽ� ó���ϴ� �޼ҵ�
		// HttpServletRequest ==> request(������� ��û)�� ���� ������ ����ִ� ��ü
		// HttpServletResponse ==> response(����ڿ��� ����)�� ���� ������ ����ִ� ��ü
		
		// ���信 � ����� �������ڴ�.
		PrintWriter pw = resp.getWriter();
		// ���� ���ڵ� ����
		resp.setCharacterEncoding("UTF-8");
		pw.print("<h1>Hello!</h1>");
		pw.print("<br/>");
		pw.print("<hr/>");
	}
	
}
