package com.basic.reserve.frontController;

import java.util.HashMap;

import com.basic.reserve.Membercontroller.*;
import com.basic.reserve.TicketController.*;
import com.basic.reserve.constController.*;

public class HandlerMapping {
	private HashMap<String,Controller>mapping;
	public HandlerMapping() {
		mapping = new HashMap<String, Controller>();
		mapping.put("/main.do", new MainController());
		mapping.put("/login.do", new LoginController());
		mapping.put("/account.do", new AccountController());
		mapping.put("/logout.do", new LogoutController());
		mapping.put("/mypage.do", new MyPageController());
		mapping.put("/update.do",new UpdateController());
		mapping.put("/getRank.do",new GetRankController());
		
		mapping.put("/board.do", new boardController());
		mapping.put("/boardDelete.do", new boardController());
		
		mapping.put("/search.do", new SearchController());
		mapping.put("/ticketing.do", new TicketingController());
		mapping.put("/idcheck.do",new IdCheckController());
		
	}
	
	public Controller getController(String key) {
		return mapping.get(key);
	}
}
