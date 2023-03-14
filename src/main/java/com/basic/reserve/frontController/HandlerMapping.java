package com.basic.reserve.frontController;

import java.util.HashMap;

import com.basic.reserve.controller.*;

public class HandlerMapping {
	private HashMap<String,Controller>mapping;
	public HandlerMapping() {
		mapping = new HashMap<String, Controller>();
		mapping.put("/main.do", new MainController());
		mapping.put("/login.do", new LoginController());
		mapping.put("/account.do", new AccountController());
		
	}
	
	public Controller getController(String key) {
		return mapping.get(key);
	}
}
