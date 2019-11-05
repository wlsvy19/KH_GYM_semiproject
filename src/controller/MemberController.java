package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.MemberJoinAction;

@WebServlet("/KHGYM/*")
public class MemberController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}// end doGet()////////////////////////////

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);

	}// end doPost()//////////////////////////

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String uri = req.getRequestURI();
		//System.out.println(uri);
		String action = uri.substring(uri.lastIndexOf("/"));
		//System.out.println(action);
		String path = "";

		if (action.equals("/*") || action.equals("/main.do")) {
			System.out.println("1");
			path = "/KHGYM/main.jsp";

		} else if (action.equals("/Mem.do")) {
			System.out.println("1");
			MemberJoinAction join = new MemberJoinAction();
			join.execute(req, resp);
			System.out.println("회원가입성공");
		}

		if (path != "") {
			RequestDispatcher dis = req.getRequestDispatcher(path);
			dis.forward(req, resp);
		}

	}// end doProcess()/////////////////////////
}// end class