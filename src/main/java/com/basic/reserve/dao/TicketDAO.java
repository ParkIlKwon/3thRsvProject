package com.basic.reserve.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.basic.reserve.util.MybatisConfig;
import com.basic.reserve.vo.Member;

public class TicketDAO {

	private TicketDAO(){}
	private static TicketDAO mDAO = new TicketDAO();
	public static TicketDAO getInstance() {return mDAO;}
	
	public List<Member>getAllTicketList(){
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Member> list = session.selectList("mapper.ticket.selectAllTicket");
		session.close();
		return list;
	}
	
	
}
