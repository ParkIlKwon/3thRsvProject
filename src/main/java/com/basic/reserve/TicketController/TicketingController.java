package com.basic.reserve.TicketController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.basic.reserve.frontController.Controller;
import com.basic.reserve.vo.Reserve;

public class TicketingController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		if(request.getParameter("placename") == null) {
			return "ticketing";
		}else {
			
			return "ticketingpro";
		}
	}

}
