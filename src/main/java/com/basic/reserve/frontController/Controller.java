package com.basic.reserve.frontController;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

public interface Controller {
	public String requestHandler(HttpServlet request,HttpServletResponse response)
	throws ServletException,IOException;

}
