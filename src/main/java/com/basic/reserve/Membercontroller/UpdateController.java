package com.basic.reserve.Membercontroller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.basic.reserve.dao.MemberDAO;
import com.basic.reserve.frontController.Controller;
import com.basic.reserve.vo.Member;

public class UpdateController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String input = request.getParameter("input");
		if(request.getParameter("pos").equals("1")) {
			
		}else {
			
			HttpSession session = request.getSession();
			Member m = new Member();
			
			m.setMemberId((String)session.getAttribute("id"));
			m.setMemberPw(request.getParameter("pw"));
			m.setMemberHP(input);
			
			String log = MemberDAO.getInstance().login(m);
			if(log == null) {
				response.getWriter().print("null");
				return null;
			}else {
				MemberDAO.getInstance().updateHp(m);
				response.getWriter().print("1");
				return "Main";
			}
			
		}
		
		return "Main";
	}

}
