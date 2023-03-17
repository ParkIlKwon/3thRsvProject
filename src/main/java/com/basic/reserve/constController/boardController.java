package com.basic.reserve.constController;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.basic.reserve.dao.BoardDAO;
import com.basic.reserve.frontController.Controller;
import com.basic.reserve.vo.Board;

public class boardController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		List<Board>list = BoardDAO.getInstance().getAllBoard();
		ArrayList<Board>temp = new ArrayList<Board>();
		int currentPage = 1;
		int onepage = 4;
		int totalBoardCnt = list.size();
		
		if(request.getParameter("pnum") != null) {
			currentPage = Integer.parseInt(request.getParameter("pnum"));
		}
		
		for (int i = 0; i < onepage; i++) {
			temp.add(list.get(i));
		}
		
		session.setAttribute("blist", list);
		
		return "board";
	}

}
