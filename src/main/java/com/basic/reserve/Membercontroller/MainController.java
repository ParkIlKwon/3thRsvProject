package com.basic.reserve.Membercontroller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.basic.reserve.dao.TicketDAO;
import com.basic.reserve.frontController.Controller;
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
		
		return page;
	}

}
