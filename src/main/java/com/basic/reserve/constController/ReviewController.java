package com.basic.reserve.constController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.basic.reserve.dao.ReserveDAO;
import com.basic.reserve.frontController.Controller;
import com.basic.reserve.vo.Reserve;

public class ReviewController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		int star = Integer.parseInt(request.getParameter("star"));
		Reserve r = new Reserve();
		r.setId(id);
		r.setReview(star);
		
		ReserveDAO.getInstance().updateReview(r);
		
		
		return "ticketingpro";
		
	}
}
