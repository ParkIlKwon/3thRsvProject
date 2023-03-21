package com.basic.reserve.Admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.basic.reserve.dao.TicketDAO;
import com.basic.reserve.frontController.Controller;
import com.basic.reserve.vo.Ticket;

public class TicketManagementController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		if(request.getParameter("num") == null) {
			HttpSession session = request.getSession();
			List<Ticket> list = TicketDAO.getInstance().getAllTicketList();
			session.setAttribute("ticketAllList",list);
			return "adminticket";
		}else {
			
			
			
			
			
			
			
			
			
		}
		return "adminticket";
	}
}
