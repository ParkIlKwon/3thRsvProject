package com.basic.reserve.constController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.basic.reserve.dao.BoardDAO;
import com.basic.reserve.frontController.Controller;
import com.basic.reserve.vo.Board;

public class boardDeleteController implements Controller{

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		Board b = new Board();
		b.setId(id);
		
		BoardDAO.getInstance().DeleteBoard(b);
		
		return "board";
	}

	
}
