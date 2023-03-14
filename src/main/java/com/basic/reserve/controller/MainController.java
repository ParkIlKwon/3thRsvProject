package com.basic.reserve.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.basic.reserve.frontController.Controller;

public class MainController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String page = "Main";
		if(request.getParameter("page") != null) {
			page = request.getParameter("page");
		}
		
		return page;
	}

}
