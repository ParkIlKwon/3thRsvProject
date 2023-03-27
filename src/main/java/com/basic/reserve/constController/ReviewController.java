package com.basic.reserve.constController;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.basic.reserve.dao.MemberDAO;
import com.basic.reserve.dao.ReserveDAO;
import com.basic.reserve.frontController.Controller;
import com.basic.reserve.vo.Member;
import com.basic.reserve.vo.Reserve;

public class ReviewController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		int id = Integer.parseInt(request.getParameter("id"));
		int star = Integer.parseInt(request.getParameter("star"));
		int mid = Integer.parseInt(request.getParameter("mid"));
		Reserve r = new Reserve();
		r.setId(id);
		r.setReview(star);
		Member m = new Member();
		m.setId(mid);
		List<Member>mlist = MemberDAO.getInstance().getOneMemberListbyId(m);
		int currentPoint = mlist.get(0).getMemberPoints() + 2000;
		System.out.println(currentPoint);
		m.setMemberPoints(currentPoint);
		
		ReserveDAO.getInstance().updateReview(r);
		MemberDAO.getInstance().updatePoints(m);
		
		mlist = MemberDAO.getInstance().getOneMemberListbyId(m);
		session.setAttribute("mlist", mlist);
		return "ticketingpro";
	}
}
