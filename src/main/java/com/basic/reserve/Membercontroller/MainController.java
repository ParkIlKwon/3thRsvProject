package com.basic.reserve.Membercontroller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.basic.reserve.dao.MemberDAO;
import com.basic.reserve.dao.TicketDAO;
import com.basic.reserve.frontController.Controller;
import com.basic.reserve.vo.Member;
import com.basic.reserve.vo.Ticket;

public class MainController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		String page = "Main";
		List<Ticket>newshow = TicketDAO.getInstance().getNewShow();
		List<Ticket>rankshow = TicketDAO.getInstance().getRankingShow();
		
		HttpSession session = request.getSession();
		session.setAttribute("newshow", newshow);
		session.setAttribute("rankshow", rankshow);
		
		
		if(request.getParameter("page") != null) {
			page = request.getParameter("page");
		}
		
		if(session.getAttribute("id") != null) {
		Member m = new Member();
		m.setMemberId((String)session.getAttribute("id"));	
		List<Member>list = MemberDAO.getInstance().getOneMemberList(m);
		session.setAttribute("mlist", list);
		}
		
		
		return page;
	}

}
