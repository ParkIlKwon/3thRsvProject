package com.basic.reserve.Membercontroller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.basic.reserve.dao.MemberDAO;
import com.basic.reserve.frontController.Controller;
import com.basic.reserve.vo.Member;

public class LoginController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String next = "";
		if(request.getParameter("id") == null) {
			next = "login";
		}else {
			HttpSession session = request.getSession();
			next = null;
			Member m = new Member();
			m.setMemberId(request.getParameter("id"));
			m.setMemberPw(request.getParameter("pw"));

			String log = MemberDAO.getInstance().login(m);
			if(log != null){
				session.setAttribute("id", log);
				response.getWriter().print("1");
			
			}else {
				response.getWriter().print("null");
			}
		}
		
		
		return next;
	}

}
