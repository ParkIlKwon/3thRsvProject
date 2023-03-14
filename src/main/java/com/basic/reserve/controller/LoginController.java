package com.basic.reserve.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
			next = null;
			Member m = new Member();
			m.setMemberId(request.getParameter("id"));
			m.setMemberPw(request.getParameter("pw"));

			String log = MemberDAO.getInstance().login(m);
			response.getWriter().print(log);
			
		}
		
		
		return next;
	}

}
