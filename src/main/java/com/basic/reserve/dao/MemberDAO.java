package com.basic.reserve.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.basic.reserve.util.MybatisConfig;
import com.basic.reserve.vo.Member;

public class MemberDAO {

	private MemberDAO(){}
	private static MemberDAO mDAO = new MemberDAO();
	public static MemberDAO getInstance() {return mDAO;}
	
	public List<Member>getAllMemberList(){
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Member> list = session.selectList("mapper.member.selectAllMembers");
		session.close();
		return list;
	}
		
	public String login(Member m) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		String log = session.selectOne("mapper.member.memberLogin",m);
		session.close();

		return log;
	}
	
	public List<Member>getOneMemberList(Member m){
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Member> list = session.selectList("mapper.member.selectOneMembers",m);
		session.close();
		return list;
	}
	
	
	public String addMember(Member m) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		String log = session.selectOne("mapper.member.memberAccount",m);
		session.close();

		return log;
	}
	
	public int DeleteMember(Member m) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		int log = session.insert("mapper.member.memberDelete",m);
		session.close();
		return log;
	}
	
	
}
