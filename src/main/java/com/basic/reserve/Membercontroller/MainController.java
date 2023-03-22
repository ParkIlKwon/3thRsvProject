package com.basic.reserve.Membercontroller;

import java.io.IOException;
import java.time.LocalDate;
import java.util.List;

import javax.servlet.ServletException;
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
		LocalDate now = LocalDate.now();
		List<Ticket>newshow = TicketDAO.getInstance().getNewShow();
		List<Ticket>newsports = TicketDAO.getInstance().getNewSports();
		List<Ticket>rankmovie = TicketDAO.getInstance().getRankingMovie();
		List<Ticket>rankshow = TicketDAO.getInstance().getRankingShow();
		List<Ticket>ranksports = TicketDAO.getInstance().getRankingSports();
		
		HttpSession session = request.getSession();
		session.setAttribute("newshow", newshow);
		session.setAttribute("newsports", newsports);
		session.setAttribute("rankshow", rankshow);
		session.setAttribute("rankmovie", rankmovie);
		session.setAttribute("ranksports", ranksports);
		
		
		if(request.getParameter("page") != null) {
			page = request.getParameter("page");
		}
		
		if(session.getAttribute("id") != null) {
		Member m = new Member();
		m.setMemberId((String)session.getAttribute("id"));	
		List<Member>list = MemberDAO.getInstance().getOneMemberList(m);
		session.setAttribute("mlist", list);
		}
		session.setAttribute("now", now);
		return page;
	}

}
