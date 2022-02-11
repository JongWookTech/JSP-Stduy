package com.myinfo.app.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.myinfo.action.ActionForward;

public class UserFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req,resp);
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req,resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//길을 나누는 코드
		String requestURI = req.getRequestURI(); //요청한 URI localhost:9090/user/Userjoin.us
		String contextPath = req.getContextPath(); //최상위 루트 localhost:9090
		String command = requestURI.substring(contextPath.length()); // /user/Userjoin.us
		
		System.out.println(command);
		ActionForward forward = null;
		
		switch(command) {
		case "/user/UserJoinOk.us":
			//회원가입을 담당할 구문

			break;
		case "/user/UserLogin.us":
			//로그인을 담당할 구문 
			
			break;
		}
		
		//일괄처리
		if(forward!=null) {
			if(forward.isRedirect()){
				//Redirect
				resp.sendRedirect(forward.getPath());
			}else {
				//Forward
				RequestDispatcher disp = req.getRequestDispatcher(forward.getPath());
				disp.forward(req, resp);
			}
		}
	}
}
