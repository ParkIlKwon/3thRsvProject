package com.basic.reserve.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.basic.reserve.util.MybatisConfig;
import com.basic.reserve.vo.Board;

public class BoardDAO {

	private BoardDAO(){};
	private static BoardDAO bdao = new BoardDAO();
	public static BoardDAO getInstance() {return bdao;}
	
	public List<Board>getAllBoard(){
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Board>list = session.selectList("mapper.board.selectAllBoard");
		session.close();
		return list;
	}
	
	public void addBoard(Board b) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		/* session.selectOne("mapper.board.addBoard"); */
		session.insert("mapper.board.addBoard", b);
		System.out.println("테스트");
		session.close();
	}
	
	public int DeleteBoard(Board b) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		int log = session.delete("mapper.board.deleteBoard",b);
		session.close();
		return log;
	}
	
	public void updateBoard(Board b) {
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		session.update("mapper.board.updateBoard",b);
		session.close();
	}
	
	
	
	
}
