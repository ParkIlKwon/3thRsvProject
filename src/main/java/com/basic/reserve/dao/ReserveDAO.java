package com.basic.reserve.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.basic.reserve.util.MybatisConfig;
import com.basic.reserve.vo.Member;
import com.basic.reserve.vo.Reserve;
import com.basic.reserve.vo.Ticket;

public class ReserveDAO {
	private ReserveDAO(){}
	static public ReserveDAO rdao = new ReserveDAO();
	static ReserveDAO getInstance() {
		return rdao;
	}
	
	public List<Reserve> getAllReserveList() {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Reserve> list = session.selectList("mapper.reserve.selectAllReserve");
		session.close();
		return list;
	}
	
	public String addMember(Reserve r) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		String log = session.selectOne("mapper.reserve.addReserve",r);
		session.close();
		return log;
	}
}
