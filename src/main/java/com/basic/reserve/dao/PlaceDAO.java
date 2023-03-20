package com.basic.reserve.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.basic.reserve.util.MybatisConfig;
import com.basic.reserve.vo.Place;

public class PlaceDAO {

	private PlaceDAO(){}
	private static PlaceDAO mDAO = new PlaceDAO();
	public static PlaceDAO getInstance() {return mDAO;}
	
	public List<Place>getSelectivePlace(Place p){
		SqlSession session = MybatisConfig.getInstance().openSession(true);
		List<Place> list = session.selectList("mapper.place.selectivePlace",p);
		session.close();
		return list;
	}
	
	
	
}
