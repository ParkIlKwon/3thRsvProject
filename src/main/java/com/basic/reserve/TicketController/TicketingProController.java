package com.basic.reserve.TicketController;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.basic.reserve.dao.MemberDAO;
import com.basic.reserve.dao.ReserveDAO;
import com.basic.reserve.dao.TicketDAO;
import com.basic.reserve.frontController.Controller;
import com.basic.reserve.vo.Member;
import com.basic.reserve.vo.Reserve;
import com.basic.reserve.vo.Ticket;

public class TicketingProController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(request.getParameter("tid") == null) {
			HttpSession session = request.getSession();
			String user = (String)session.getAttribute("id");
			Reserve r = new Reserve();
			r.setMemberId(user);
			List<Reserve>res = ReserveDAO.getInstance().getSelectiveReserve(r);
			request.setAttribute("res",res);
			
			return "ticketingpro";
		}
		
		int mid =  Integer.parseInt(request.getParameter("id"));
		int tid = Integer.parseInt(request.getParameter("tid"));
		int seat = Integer.parseInt(request.getParameter("seat"));
		int price = Integer.parseInt(request.getParameter("price"));
		String date = request.getParameter("date");
		
		Member m = new Member();
		m.setId(mid);
		Ticket t = new Ticket();
		t.setId(tid);
		
		List<Member>mlist = MemberDAO.getInstance().getOneMemberListbyId(m);
		List<Ticket>tlist = TicketDAO.getInstance().getSelectiveTicketListbyId(t);
		
		Reserve rsv = new Reserve(mlist.get(0).getMemberId() ,tlist.get(0).getTitle(), date,
				tlist.get(0).getLocation(),seat,price);
		
		ReserveDAO.getInstance().addReserve(rsv);
		
		return "ticketingpro";
	}
}
