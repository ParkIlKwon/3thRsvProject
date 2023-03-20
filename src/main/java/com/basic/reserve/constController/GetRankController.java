package com.basic.reserve.constController;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.basic.reserve.dao.TicketDAO;
import com.basic.reserve.frontController.Controller;
import com.basic.reserve.vo.Ticket;

public class GetRankController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Ticket t = new Ticket();
		t.setTitle(request.getParameter("rank"));
		
		List<Ticket>rankshow = TicketDAO.getInstance().getRanking(t);
		
		HttpSession session = request.getSession();
		session.setAttribute("rankshow", rankshow);
		
		return "Main";
	}
}
