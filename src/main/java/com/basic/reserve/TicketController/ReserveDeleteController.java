package com.basic.reserve.TicketController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.basic.reserve.dao.ReserveDAO;
import com.basic.reserve.frontController.Controller;
import com.basic.reserve.vo.Reserve;

public class ReserveDeleteController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String check[]= request.getParameterValues("checkedIds");
		
		for (String idx : check) {
			Reserve r = new Reserve();
			r.setId(Integer.parseInt(idx));
			ReserveDAO.getInstance().deleteReserve(r);
		}
		return null;
	}
}
