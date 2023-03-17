package com.basic.reserve.TicketController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.basic.reserve.frontController.Controller;
import com.basic.reserve.vo.Reserve;

public class ReserveController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		if(request.getParameter("title") == null) {
			return "reserve";
		}else {
			Reserve res = new Reserve();
			res.setId(Integer.parseInt(request.getParameter("id")));
			
			
		}
		
		return "Main";
	}

}
