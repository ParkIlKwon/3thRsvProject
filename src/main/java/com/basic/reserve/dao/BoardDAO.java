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
	
	
	
	
}
