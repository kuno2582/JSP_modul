package com.ch02lifecycle;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/LifeCycleEx01")
public class LifeCycleEx01 extends HttpServlet {

	@Override
	public void init(){
		System.out.println("init()");
	}
	
	@Override
	public void destroy(){
		System.out.println("destroy()");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response){
		System.out.println("doGet()");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response){
		System.out.println("doPost()");
	}
	
}
