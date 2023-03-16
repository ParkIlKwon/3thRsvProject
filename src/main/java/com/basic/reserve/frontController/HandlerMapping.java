package com.basic.reserve.frontController;

import java.util.HashMap;

import com.basic.reserve.Membercontroller.*;
import com.basic.reserve.TicketController.*;

public class HandlerMapping {
	private HashMap<String,Controller>mapping;
	public HandlerMapping() {
		mapping = new HashMap<String, Controller>();
		mapping.put("/main.do", new MainController());
		mapping.put("/login.do", new LoginController());
		mapping.put("/account.do", new AccountController());
		mapping.put("/logout.do", new LogoutController());
		mapping.put("/mypage.do", new MyPage());
		
		mapping.put("/search.do", new SearchController());
	}
	
	public Controller getController(String key) {
		return mapping.get(key);
	}
}
