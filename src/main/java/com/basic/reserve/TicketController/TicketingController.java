package com.basic.reserve.TicketController;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.basic.reserve.dao.TicketDAO;
import com.basic.reserve.frontController.Controller;
import com.basic.reserve.vo.Reserve;
import com.basic.reserve.vo.Ticket;

public class TicketingController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		if(request.getParameter("placename") == null) {
			String title = request.getParameter("title");
			Ticket t = new Ticket();
			t.setTitle(title);
			
			List<Ticket>list = TicketDAO.getInstance().getSelectiveTicketList(t);
			
			session.setAttribute("selection",list);
			
			return "ticketing";
		}else {
			
			return "ticketingpro";
		}
	}

}
