package com.docode.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.docode.action.Action;
import com.docode.action.ActionForward;
import com.docode.app.user.dao.UserDAO;
import com.docode.app.user.dao.UserDTO;

public class UserJoinOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		// 인코딩
		request.setCharacterEncoding("UTF-8");
		UserDAO udao = new UserDAO();

		UserDTO user = new UserDTO();
		ActionForward forward = null;
		user.setUserid(request.getParameter("userid"));
		user.setUserpw(request.getParameter("userpw"));
		user.setUsername(request.getParameter("username"));
		user.setUserage(Integer.parseInt(request.getParameter("userage")));
		user.setUserphone(request.getParameter("userphone"));
		user.setZipcode(request.getParameter("zipcode"));
		user.setUseraddr(request.getParameter("useraddr"));
		user.setUseraddrdetail(request.getParameter("useraddrdetail"));
		user.setUseraddretc(request.getParameter("useraddretc"));

		// 회원가입
		if (udao.join(user)) {
			// 어떤 페이지로 보내주어야 하는지
			// 어떠한 방식으로 이동할 것인지(redirect / forward)
			// Redirect 방식 : request가 초기화 되고 이전의 root 경로도 없어진다.
			// 따라서 반드시 경로 앞에 request.getContextPath()를 연결해준다.
			forward = new ActionForward(true, request.getContextPath() + "/app/user/loginview.jsp");
		}
		return forward;
	}
}
