package com.basic.reserve.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.basic.reserve.util.MybatisConfig;
import com.basic.reserve.vo.Member;
import com.basic.reserve.vo.Ticket;

public class TicketDAO {

	private TicketDAO(){}
	private static TicketDAO mDAO = new TicketDAO();
	public static TicketDAO getInstance() {return mDAO;}
	
	public List<Ticket>getAllTicketList(){
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Ticket> list = session.selectList("mapper.ticket.selectAllTicket");
		session.close();
		return list;
	}
	
	public List<Ticket>getSelectiveTicketList(Ticket t){
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Ticket> list = session.selectList("mapper.ticket.selectiveTicket",t);
		session.close();
		return list;
	}
	
	public List<Ticket>getNewShow(){
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Ticket> list = session.selectList("mapper.ticket.getNewShow");
		session.close();
		return list;
	}
	
	public List<Ticket>getRankingShow(){
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Ticket> list = session.selectList("mapper.ticket.getRankingShow");
		session.close();
		return list;
	}
	
	public List<Ticket>getRanking(Ticket t){
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Ticket> list = session.selectList("mapper.ticket.getRanking",t);
		session.close();
		return list;
	}
	
	
}
