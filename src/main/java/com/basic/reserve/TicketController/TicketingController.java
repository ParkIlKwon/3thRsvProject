package com.basic.reserve.TicketController;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.basic.reserve.dao.PlaceDAO;
import com.basic.reserve.dao.TicketDAO;
import com.basic.reserve.frontController.Controller;
import com.basic.reserve.vo.Place;
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
			Place p = new Place();
			p.setTitle(title);
			t.setTitle(title);
			
			List<Ticket>list = TicketDAO.getInstance().getSelectiveTicketList(t);
			List<Place>plist = PlaceDAO.getInstance().getSelectivePlace(p);
			
			session.setAttribute("selection",list);
			session.setAttribute("placesel",plist);
			
			return "ticketing";
		}else {
			
			return "ticketingpro";
		}
	}

}
