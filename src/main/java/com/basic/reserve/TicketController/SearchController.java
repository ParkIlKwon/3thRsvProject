package com.basic.reserve.TicketController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.basic.reserve.dao.TicketDAO;
import com.basic.reserve.frontController.Controller;

public class SearchController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String s = request.getParameter("search");
		String title = TicketDAO.getInstance().getSelectiveTicketList(s);
		
		return "search";
	}

}
